#!/bin/bash

Subs=($(ls -1 /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/))
SDir="/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/"
#Rois=($(ls /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/*resampled.nii.gz))
Acc="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig03c/Acc_resampled.nii.gz"
lAI="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig03c/lAI_resampled.nii.gz"
rAI="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig03c/rAI_resampled.nii.gz"

RDir="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/"
touch ${RDir}Acc_AllCondPmod.txt
touch ${RDir}lAI_AllCondPmod.txt
touch ${RDir}rAI_AllCondPmod.txt

touch ${RDir}Acc_HealthvUnCond.txt
touch ${RDir}lAI_HealthvUnCond.txt
touch ${RDir}rAI_HealthvUnCond.txt

touch ${RDir}Acc_HealthvUnPmod.txt
touch ${RDir}lAI_HealthvUnPmod.txt
touch ${RDir}rAI_HealthvUnPmod.txt

for s in ${Subs[@]}; do
3dROIstats -mask $Acc -quiet ${SDir}${s}/${s}_AllCondPmod_stats_REML+tlrc[12] >> ${RDir}Acc_AllCondPmod.txt
3dROIstats -mask $lAI -quiet ${SDir}${s}/${s}_AllCondPmod_stats_REML+tlrc[12] >> ${RDir}lAI_AllCondPmod.txt
3dROIstats -mask $rAI -quiet ${SDir}${s}/${s}_AllCondPmod_stats_REML+tlrc[12] >> ${RDir}rAI_AllCondPmod.txt
#
3dROIstats -mask $Acc -quiet ${SDir}${s}/${s}_2Cond_stats_REML+tlrc[16] >> ${RDir}Acc_HealthvUnCond.txt
3dROIstats -mask $lAI -quiet ${SDir}${s}/${s}_2Cond_stats_REML+tlrc[16] >> ${RDir}lAI_HealthvUnCond.txt
3dROIstats -mask $rAI -quiet ${SDir}${s}/${s}_2Cond_stats_REML+tlrc[16] >> ${RDir}rAI_HealthvUnCond.txt
#
3dROIstats -mask $Acc -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[29] >> ${RDir}Acc_HealthvUnPmod.txt
3dROIstats -mask $lAI -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[29] >> ${RDir}lAI_HealthvUnPmod.txt
3dROIstats -mask $rAI -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[29] >> ${RDir}rAI_HealthvUnPmod.txt
#
done