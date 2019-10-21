#!/bin/bash

# This script extracts mean parameter estimates and SDs within an ROI or parcel
# from subject FX condition contrasts (condition > rest) or beta image. Output is 
# saved as a text file in the output directory.

module load afni

echo -------------------------------------------------------------------------------
echo "${SUB}"
echo "Running ${SCRIPT}"
date
echo -------------------------------------------------------------------------------


# Set paths and variables
# ------------------------------------------------------------------------------------------
# paths
beta_dir=/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/betaseries_image/sub-"${SUB}" #beta directory
roi_dir=/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/roi/rois #roi directory 
atlas_dir=/projects/sanlab/shared/parcellations/Schaefer/MNI #parcellation atlas directory 
output_dir=/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/betaseries/money/parameterEstimates #parameter estimate output directory

# variables
rois=(clithero_vmPFC clithero_NAcc clithero_PCC bartra_6a_striatum bartra_6a_vmPFC rx_positive_p001_k100_mask aseg_NAcc_lh aseg_NAcc_rh) #.nii.gz
atlas=(Schaefer2018_200Parcels_7Networks_order_FSLMNI152_2mm) #parcellation atlas file
parcels=($(seq 1 200)) #parcellation number(s) to extract from; use $(seq 1 N) where N is the total number of parcels to extract from all
betasALL=`echo $(printf "beta_%04d.nii\n" {1..60})`
betasCHIVES1038=`echo $(printf "beta_%04d.nii\n" {1..29})`
betasCHIVES1078=`echo $(printf "beta_%04d.nii\n" {1..59})`

if [ ! -d ${output_dir} ]; then
	mkdir -p ${output_dir}
fi

# Specify betas
# ------------------------------------------------------------------------------------------
if [ $subname == sub-CHIVES1038 ]; then
	betas=$betasCHIVES1038
elif [ $subname == sub-CHIVES1078 ]; then
	betas=$betasCHIVES1078
else
	betas=$betasALL
fi

# Extract mean parameter estimates and SDs for each subject, beta, and ROI
# ------------------------------------------------------------------------------------------
for roi in ${rois[@]}; do 
	3dAllineate -source "${roi_dir}"/"${roi}".nii.gz -master "${beta_dir}"/mask.nii -final NN -1Dparam_apply '1D: 12@0'\' -prefix "${roi_dir}"/aligned_"${roi}"
	for beta in ${betas[@]}; do 
		echo "${SUB}" "${beta}" "${roi}" `3dmaskave -sigma -quiet -mask "${roi_dir}"/aligned_"${roi}"+tlrc "${beta_dir}"/"${beta}"` >> "${output_dir}"/"${SUB}"_parameterEstimates.txt
	done
done

# Extract mean parameter estimates and SDs for each subject, beta, and parcel
# ------------------------------------------------------------------------------------------
for parcel in ${parcels[@]}; do 
	3dAllineate -source "${atlas_dir}"/"${atlas}".nii.gz -master "${beta_dir}"/mask.nii -final NN -1Dparam_apply '1D: 12@0'\' -prefix "${atlas_dir}"/aligned_"${atlas}"
	for beta in ${betas[@]}; do 
		echo "${SUB}" "${beta}" "${parcel}" `3dmaskave -sigma -quiet -mrange $parcel $parcel -mask "${atlas_dir}"/aligned_"${atlas}"+tlrc "${beta_dir}"/"${beta}"` >> "${output_dir}"/"${SUB}"_parameterEstimates.txt
	done
done


# Calculate volume mean intensities
# ------------------------------------------------------------------------------------------
for beta in ${betas[@]}; do
	echo "${SUB}" "${beta}" `3dBrickStat -mean "${beta_dir}"/"${beta}"` >> "${output_dir}"/"${SUB}"_meanIntensity.txt
done
