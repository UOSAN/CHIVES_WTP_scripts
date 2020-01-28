cd('/Users/junaid/Desktop/SANLab/WTP/money_bx/');
inputDir = '/Users/junaid/Desktop/SANLab/WTP/money_bx/';
runNames = {'run1'};
writeDir = '/Users/junaid/Desktop/SANLab/WTP/fx_code/multiconds/money/afni_timing_files/';
studyName = 'CHIVES';
filePattern = 'Data.';
nConds = 2;
condNames = {'healthy', 'unhealthy', 'bid'};
runFiles = dir(sprintf('%s/*%s*.mat', inputDir, filePattern));
filesCell = struct2cell(runFiles);

% extract subject IDs
subjectID = unique(extractBetween(filesCell(1,:), 6,8));

% exclude test responses
excluded = subjectID(cellfun(@isempty,regexp(subjectID, '[0-2]{1}[0-9]{2}')));
subjectID = subjectID(~cellfun(@isempty,regexp(subjectID, '[0-2]{1}[0-9]{2}')));
fprintf(1, 'Excluded: %s\n', excluded{:})

% load health condition info and replace names
load('/Users/junaid/Desktop/SANLab/WTP/fx_code/multiconds/money/health_info.mat');
healthy_idx = [health{:,2}] == 0;
unhealthy_idx = [health{:,2}] == 1;
health(healthy_idx, 2) = {'healthy'};
health(unhealthy_idx, 2) = {'unhealthy'};

SubIDs=cell(0);
HealthyBids=nan(0);
UnhealthyBids=nan(0);

for i = 1:numel(subjectID)
    sub = subjectID{i};
    files = dir(fullfile(inputDir, sprintf('Data.%s.2.mat', sub)));
    subFileName = {files.name};
    subFile = sprintf('%s%s', inputDir, subFileName{end}); %select the last file
    SubIDs=[SubIDs; strcat('CHIVES1',sub)];

    % log missing trial info
    missing{i,1} = sprintf('%s1%s', studyName, sub);
    
    if exist(subFile)
        load(subFile);
        
        %% Reorder health condition info
        healthOnly = health(:,2);
        [orderTF, orderIdx] = ismember(Data.FoodPic, health(:,1));
        healthOrder = healthOnly(orderIdx);
        
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
        bidsDbl = zeros(size(Data.RT));
        bidsNum = cellfun(@(x) isnumeric(x), Data.RT);
        bidsDbl(bidsNum) = [Data.RT{bidsNum}];
        % mean center healthy ratings
        healthyRatingsStr = Data.Resp(find(strcmp(healthOrder(:), names(1))));
        healthyRatingsStr(find(strcmp(healthyRatingsStr, 'NULL'))) = []; %remove missing trials
        healthyRatings = ((cellfun(@str2num, healthyRatingsStr) - 5) / 2)';
        % mean center unhealthy ratings
        unhealthyRatingsStr = Data.Resp(find(strcmp(healthOrder(:), names(2))));
        unhealthyRatingsStr(find(strcmp(unhealthyRatingsStr, 'NULL'))) = []; %remove missing trials
        unhealthyRatings = ((cellfun(@str2num, unhealthyRatingsStr) - 5) / 2)';
        
        HealthyBids=[HealthyBids; mean(healthyRatings)];
        UnhealthyBids=[UnhealthyBids; mean(unhealthyRatings)];
        
    end
end
        