#!/bin/tcsh
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=124000
#SBATCH --partition=ctn
#SBATCH --account=sanlab
#SBATCH --array=1001,1007,1013,1014,1021,1022,1024,1025,1034,1041,1044,1045,1049,1050,1056,1058,1059,1060,1063,1065,1066,1069,1072,1074,1075,1077,1078,1087,1089,1091,1095,1097,1100,1103%30

set sub = CHIVES${SLURM_ARRAY_TASK_ID}


module load afni

# cd /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}

# 1dMarry AllStimOns.1D AllBid.1D > AllCondsPmod.1D

# 1dMarry HealthyOns.1D HealthyBid.1D > HealthyPmod.1D

# 1dMarry UnhealthyOns.1D UnealthyBid.1D > UnhealthyPmod.1D

# 1dMarry -sep : BidOns.1D BidDur.1D > BidOnsDur.1D



# mkdir /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/${sub}

cd /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/${sub}

3dDeconvolve 	\
	-force_TR 2 \
	-input /projects/sanlab/shared/CHIVES/bids_data/derivatives/fmriprep/sub-${sub}/ses-wave1/func/s6_sub-${sub}_ses-wave1_task-money_bold_space-MNI152NLin2009cAsym_preproc.nii \
	-mask /projects/sanlab/shared/CHIVES/bids_data/derivatives/fmriprep/sub-${sub}/ses-wave1/func/sub-${sub}_ses-wave1_task-money_bold_space-MNI152NLin2009cAsym_brainmask.nii.gz \
	-polort A -jobs 20  \
	-ortvec /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn/rp_${sub}_1_money_1.txt demean 	\
	-censor /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn/censor_rp_${sub}_1_money_1.txt 	\
	-num_stimts 2 \
	-stim_times_AM2 1 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/AllCondsPmod.1D 'BLOCK(4,1)' -stim_label 1 AllConds \
	-stim_times_AM1 2 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/BidOnsDur.1D 'dmBLOCK(1)' -stim_label 2 BidsNMiss \
	-num_glt 2 \
	-gltsym 'SYM: AllConds[0]' \
	-glt_label 1 CondGtRest \
	-gltsym 'SYM: AllConds[1]' \
	-glt_label 2 Pmod \
	-fout -tout -x1D ${sub}_AllCondPmod_xmat.1D \
	-x1D_uncensored ${sub}_AllCondPmod_uncensor_xmat.1D \
	-errts ${sub}_AllCondPmod -fitts ${sub}_AllCondPmod -bucket ${sub}_AllCondPmod_stats -overwrite

##

3dDeconvolve 	\
	-force_TR 2 \
	-input /projects/sanlab/shared/CHIVES/bids_data/derivatives/fmriprep/sub-${sub}/ses-wave1/func/s6_sub-${sub}_ses-wave1_task-money_bold_space-MNI152NLin2009cAsym_preproc.nii \
	-mask /projects/sanlab/shared/CHIVES/bids_data/derivatives/fmriprep/sub-${sub}/ses-wave1/func/sub-${sub}_ses-wave1_task-money_bold_space-MNI152NLin2009cAsym_brainmask.nii.gz \
	-polort A -jobs 20  \
	-ortvec /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn/rp_${sub}_1_money_1.txt demean 	\
	-censor /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn/censor_rp_${sub}_1_money_1.txt 	\
	-num_stimts 3 \
	-stim_times_AM2 1 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/HealthyPmod.1D 'BLOCK(4,1)' -stim_label 1 HealthyPmod \
	-stim_times_AM2 2 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/UnhealthyPmod.1D 'BLOCK(4,1)' -stim_label 2 UnhealthyPmod \
	-stim_times_AM1 3 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/BidOnsDur.1D 'dmBLOCK(1)' -stim_label 3 BidsNMiss \
	-num_glt 6 \
	-gltsym 'SYM: HealthyPmod[0]' \
	-glt_label 1 HealthyGtRest \
	-gltsym 'SYM: HealthyPmod[1]' \
	-glt_label 2 HealthyPmod \
	-gltsym 'SYM: UnhealthyPmod[0]' \
	-glt_label 3 UnhealthyGtRest \
	-gltsym 'SYM: UnhealthyPmod[1]' \
	-glt_label 4 UnhealthyPmod \
	-gltsym 'SYM: HealthyPmod[0] -UnhealthyPmod[0]' \
	-glt_label 5 HealthyGtUnhealthy \
	-gltsym 'SYM: HealthyPmod[1] -UnhealthyPmod[1]' \
	-glt_label 6 HealthyGtUnhealthyPmod \
	-fout -tout -x1D ${sub}_2CondPmod_xmat.1D \
	-x1D_uncensored ${sub}_2CondPmod_uncensor_xmat.1D \
	-errts ${sub}_2CondPmod -fitts ${sub}_2CondPmod -bucket ${sub}_2CondPmod_stats -overwrite

	##

3dDeconvolve 	\
	-force_TR 2 \
	-input /projects/sanlab/shared/CHIVES/bids_data/derivatives/fmriprep/sub-${sub}/ses-wave1/func/s6_sub-${sub}_ses-wave1_task-money_bold_space-MNI152NLin2009cAsym_preproc.nii \
	-mask /projects/sanlab/shared/CHIVES/bids_data/derivatives/fmriprep/sub-${sub}/ses-wave1/func/sub-${sub}_ses-wave1_task-money_bold_space-MNI152NLin2009cAsym_brainmask.nii.gz \
	-polort A -jobs 20  \
	-ortvec /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn/rp_${sub}_1_money_1.txt demean 	\
	-censor /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn/censor_rp_${sub}_1_money_1.txt 	\
	-num_stimts 3 \
	-stim_times 1 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/HealthyOns.1D 'BLOCK(4,1)' -stim_label 1 Healthy \
	-stim_times 2 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/UnhealthyOns.1D 'BLOCK(4,1)' -stim_label 2 Unhealthy \
	-stim_times_AM1 3 /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/behavioral/money/afni_timing_files/${sub}/BidOnsDur.1D 'dmBLOCK(1)' -stim_label 3 BidsNMiss \
	-num_glt 3 \
	-gltsym 'SYM: Healthy' \
	-glt_label 1 HealthyGtRest \
	-gltsym 'SYM: Unhealthy' \
	-glt_label 2 UnhealthyGtRest \
	-gltsym 'SYM: Healthy -Unhealthy' \
	-glt_label 3 HealthyGtUnhealthy \
	-fout -tout -x1D ${sub}_2Cond_xmat.1D \
	-x1D_uncensored ${sub}_2Cond_uncensor_xmat.1D \
	-errts ${sub}_2Cond -fitts ${sub}_2Cond -bucket ${sub}_2Cond_stats -overwrite
