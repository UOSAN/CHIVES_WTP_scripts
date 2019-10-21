
#!/bin/bash
#--------------------------------------------------------------
# This script runs 3dClustSim for each model using acf parameters 
# generated by calculate_group_average.R
#	
# D.Cos 2018.11.06
#--------------------------------------------------------------

# Set your study
STUDY=/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts

# Set shell script to execute
SHELL_SCRIPT=3dClustSim.sh

# FP the results files
RESULTS_INFIX=3dclustsim

# Set output dir and make it if it doesn't exist
OUTPUTDIR=${STUDY}/fMRI/rx/thresholding/output

if [ ! -d ${OUTPUTDIR} ]; then
	mkdir -p ${OUTPUTDIR}
fi

# Set model dir and specify RX models
MODELDIR=/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money
MODELS=(bid)

# Set job parameters
cpuspertask=1
mempercpu=8G

# Create and execute batch job
for MODEL in ${MODELS[@]}; do
 	sbatch --export ALL,MODEL=$MODEL,MODELDIR=$MODELDIR,OUTPUTDIR=$OUTPUTDIR \
	 	--job-name=${RESULTS_INFIX} \
	 	-o ${OUTPUTDIR}/${MODEL}_${RESULTS_INFIX}.log \
	 	--cpus-per-task=${cpuspertask} \
	 	--mem-per-cpu=${mempercpu} \
	 	--account=sanlab \
	 	${SHELL_SCRIPT}
 	sleep .25
done
