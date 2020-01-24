#!/bin/bash
#
Subs=($(ls -1 /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/))
SDir="/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/"
#Rois=($(ls /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/*resampled.nii.gz))
vS="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/avS_resampled.nii.gz"
vmPFC="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/vmPFC_resampled.nii.gz"
Acc="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig03c/Acc_resampled.nii.gz"
lAI="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig03c/lAI_resampled.nii.gz"
rAI="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig03c/rAI_resampled.nii.gz"
#
RDir="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/"
#
touch ${RDir}vS_HealthyPmod.txt
touch ${RDir}vmPFC_HealthyPmod.txt
touch ${RDir}Acc_HealthyPmod.txt
touch ${RDir}lAI_HealthyPmod.txt
touch ${RDir}rAI_HealthyPmod.txt
#
touch ${RDir}vS_unHealthyPmod.txt
touch ${RDir}vmPFC_unHealthyPmod.txt
touch ${RDir}Acc_unHealthyPmod.txt
touch ${RDir}lAI_unHealthyPmod.txt
touch ${RDir}rAI_unHealthyPmod.txt
#
for s in ${Subs[@]}; do
3dROIstats -mask $vS -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[17] >> ${RDir}vS_HealthyPmod.txt
3dROIstats -mask $vmPFC -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[17] >> ${RDir}vmPFC_HealthyPmod.txt
3dROIstats -mask $Acc -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[17] >> ${RDir}Acc_HealthyPmod.txt
3dROIstats -mask $lAI -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[17] >> ${RDir}lAI_HealthyPmod.txt
3dROIstats -mask $rAI -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[17] >> ${RDir}rAI_HealthyPmod.txt
#
3dROIstats -mask $vS -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[23] >> ${RDir}vS_unHealthyPmod.txt
3dROIstats -mask $vmPFC -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[23] >> ${RDir}vmPFC_unHealthyPmod.txt
3dROIstats -mask $Acc -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[23] >> ${RDir}Acc_unHealthyPmod.txt
3dROIstats -mask $lAI -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[23] >> ${RDir}lAI_unHealthyPmod.txt
3dROIstats -mask $rAI -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[23] >> ${RDir}rAI_unHealthyPmod.txt
#
done