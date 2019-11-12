#!/bin/tcsh
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --mem=124000
#SBATCH --partition=ctn
#SBATCH --account=sanlab
#SBATCH --output=REML1100_1010.log

set sub = CHIVES1100

cd /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/${sub}

chmod +x CHIVES*
./${sub}_AllCondPmod_stats.REML_cmd
#
./${sub}_2CondPmod_stats.REML_cmd
#
./${sub}_2Cond_stats.REML_cmd
#
#

set sub = CHIVES1010

cd /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/${sub}

chmod +x CHIVES*
./${sub}_AllCondPmod_stats.REML_cmd
#
./${sub}_2CondPmod_stats.REML_cmd
#
./${sub}_2Cond_stats.REML_cmd