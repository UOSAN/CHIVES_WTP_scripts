% This script pulls onsets and durations from the subject output files for
% ROC to create FX multicond files
%
% D.Cos 10/2018

%% Load data and intialize variables
inputDir = '~/Documents/code/sanlab/CHIVES_WTP_scripts/behavioral/money/';
runNames = {'run1'};
writeDir = '~/Documents/code/sanlab/CHIVES_WTP_scripts/fMRI/fx/multiconds/money/pmod';
studyName = 'CHIVES';
filePattern = 'Data.';
nConds = 2;
condNames = {'healthy', 'unhealthy', 'bid'};

% list files in input directory
runFiles = dir(sprintf('%s/*%s*.mat', inputDir, filePattern));
filesCell = struct2cell(runFiles);

% extract subject IDs
subjectID = unique(extractBetween(filesCell(1,:), 6,8));

% exclude test responses
excluded = subjectID(cellfun(@isempty,regexp(subjectID, '[0-2]{1}[0-9]{2}')));
subjectID = subjectID(~cellfun(@isempty,regexp(subjectID, '[0-2]{1}[0-9]{2}')));
fprintf(1, 'Excluded: %s\n', excluded{:})

% load health condition info and replace names
load('~/Documents/code/sanlab/CHIVES_WTP_scripts/fMRI/fx/multiconds/money/health_info.mat');
healthy_idx = [health{:,2}] == 0;
unhealthy_idx = [health{:,2}] == 1;
health(healthy_idx, 2) = {'healthy'};
health(unhealthy_idx, 2) = {'unhealthy'};

%% Loop through subjects and runs and save names, onsets, and durations as .mat files
for i = 1:numel(subjectID)
    sub = subjectID{i};
    files = dir(fullfile(inputDir, sprintf('Data.%s.2.mat', sub)));
    subFileName = {files.name};    
    subFile = sprintf('%s%s', inputDir, subFileName{end}); %select the last file
    
    % log missing trial info
    missing{i,1} = sprintf('%s1%s', studyName, sub);

    if exist(subFile)
        load(subFile);
        
        %% Reorder health condition info
        healthOnly = health(:,2);
        [orderTF, orderIdx] = ismember(Data.FoodPic, health(:,1));
        healthOrder = healthOnly(orderIdx);

        %% Initialize names 
        names = condNames;

        %% Pull onsets
        % image conditions
        for a = 1:nConds
            idxs = find(strcmp(healthOrder(:), names(a)));
            idxsBid = Data.Resp(idxs);
            onsets{a} = [Data.FoodOnset{idxs}]';
            onsets{a}(find(strcmp(idxsBid(:), 'NULL'))) = []; % remove missing trials
        end

        % bids
        onsets{nConds+1} = [Data.BidOnset{:}]';
        onsets{nConds+1}(find(strcmp(Data.Resp(:), 'NULL'))) = []; % remove missing trials

        %% Create durations
        % image conditions
        for b = 1:nConds
            idxs = find(strcmp(healthOrder(:), names(b)));
            idxsBid = Data.Resp(idxs);
            durations{b} = ([Data.BidOnset{idxs}] - [Data.FoodOnset{idxs}])';
            durations{b}(find(strcmp(idxsBid(:), 'NULL'))) = []; % remove missing trials
        end

        % bids
        bidsDbl = zeros(size(Data.RT));
        bidsNum = cellfun(@(x) isnumeric(x), Data.RT);
        bidsDbl(bidsNum) = [Data.RT{bidsNum}];
        
        durations{nConds+1} = bidsDbl';
        durations{nConds+1}(find(strcmp(Data.Resp(:), 'NULL'))) = []; % remove missing trials

        %% Pull onsets and durations for missed responses (if any)
        % Missing responses are coded from image onset to bid
        % offset (8 seconds). Exclude incomplete trials.
        if sum(strcmp(Data.Resp(:), 'NULL')) > 0
            idxs_missing = find(strcmp(Data.Resp(:), 'NULL'));
            names{nConds+2} = 'noResponse';
            onsets{nConds+2} = [Data.FoodOnset{idxs_missing}]';
            durations{nConds+2} = repelem(8, length(onsets{nConds+2}))';
        end 

        %% Add parametric modulation info
        pmod = struct;
        
        for cond = 1:nConds
            pmod(cond).name = {'valuation'};
            pmod(cond).poly = {1};
        end
        
        % mean center healthy ratings
        healthyRatingsStr = Data.Resp(find(strcmp(healthOrder(:), names(1))));
        healthyRatingsStr(find(strcmp(healthyRatingsStr, 'NULL'))) = []; %remove missing trials
        healthyRatings = ((cellfun(@str2num, healthyRatingsStr) - 5) / 2)';
        pmod(1).param{1} = healthyRatings - mean(healthyRatings);
        
        % mean center unhealthy ratings
        unhealthyRatingsStr = Data.Resp(find(strcmp(healthOrder(:), names(2))));
        unhealthyRatingsStr(find(strcmp(unhealthyRatingsStr, 'NULL'))) = []; %remove missing trials
        unhealthyRatings = ((cellfun(@str2num, unhealthyRatingsStr) - 5) / 2)';
        pmod(2).param{1} = unhealthyRatings - mean(unhealthyRatings);    
        
        %% Define output file name
        outputName = sprintf('%s1%s_WTP.mat', studyName, sub);

        %% Save as .mat file and clear
        if ~exist(writeDir); mkdir(writeDir); end

        if ~(isempty(onsets{1}) && isempty(onsets{2}))
            save(fullfile(writeDir,outputName),'names','onsets','durations', 'pmod');
        else
            warning('File is empty. Did not save %s.', outputName);
        end

        %% Log missing trial info
        missing{i,2} = sum(strcmp(Data.Resp(:), 'NULL'));

        clear names onsets durations;
    end
end
  
% save missing trial info
missing(cellfun('isempty', missing)) = {NaN};
table = cell2table(missing,'VariableNames',[{'subjectID'}, runNames{:}]);
writetable(table,fullfile(writeDir, 'missing.csv'),'Delimiter',',')
fprintf('\nMissing trial info saved in %s\n', fullfile(writeDir, 'missing.csv'))