#!/bin/bash

Subs=($(ls -1 /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/))
SDir="/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/"
#Rois=($(ls /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/*resampled.nii.gz))
vS="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/avS_resampled.nii.gz"
vmPFC="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/Batra/fig09/vmPFC_resampled.nii.gz"
RDir="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rois/"
touch ${RDir}vS_AllCondPmod.txt
touch ${RDir}vmPFC_AllCondPmod.txt
touch ${RDir}vS_HealthvUnCond.txt
touch ${RDir}vmPFC_HealthvUnCond.txt
touch ${RDir}vS_HealthvUnPmod.txt
touch ${RDir}vmPFC_HealthvUnPmod.txt

for s in ${Subs[@]}; do
3dROIstats -mask $vS -quiet ${SDir}${s}/${s}_AllCondPmod_stats_REML+tlrc[12] >> ${RDir}vS_AllCondPmod.txt
3dROIstats -mask $vmPFC -quiet ${SDir}${s}/${s}_AllCondPmod_stats_REML+tlrc[12] >> ${RDir}vmPFC_AllCondPmod.txt
#
3dROIstats -mask $vS -quiet ${SDir}${s}/${s}_2Cond_stats_REML+tlrc[16] >> ${RDir}vS_HealthvUnCond.txt
3dROIstats -mask $vmPFC -quiet ${SDir}${s}/${s}_2Cond_stats_REML+tlrc[16] >> ${RDir}vmPFC_HealthvUnCond.txt
#
3dROIstats -mask $vS -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[29] >> ${RDir}vS_HealthvUnPmod.txt
3dROIstats -mask $vmPFC -quiet ${SDir}${s}/${s}_2CondPmod_stats_REML+tlrc[29] >> ${RDir}vmPFC_HealthvUnPmod.txt
#
done