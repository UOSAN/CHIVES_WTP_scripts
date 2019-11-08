###################################################
# Grab and check arguments and assign to arg variable
args <- commandArgs(trailingOnly = TRUE)
setwd("/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt")
File = args[1]
OutDir="/projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/fx/motion/auto-motion-fmriprep/rp_txt/FourColumn"
Data = read.table(file = File)
Motion = Data[,1:4]
write.table(Motion,paste(OutDir,"/",File, sep=""), quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)
Censor = Data[,5]
Censor=-1*(Censor-1)
write.table(Censor,paste(OutDir,"/censor_",File, sep=""), quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)



