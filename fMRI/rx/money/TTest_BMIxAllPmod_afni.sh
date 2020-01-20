#!/bin/tcsh
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --mem=124000
#SBATCH --partition=ctn
#SBATCH --account=sanlab
#SBATCH --output=TTestBmiXAllCondPmod_afnifx.log
module load afni
# apply any data directories with variables
cd /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/afni_rx

3dttest++                \
-prefix /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/afni_rx/TTestBmiXAllCondPmod_afnifx    	\
-setA 	PmodAll \
sub-CHIVES1001	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1001/CHIVES1001_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1002	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1002/CHIVES1002_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1003	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1003/CHIVES1003_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1004	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1004/CHIVES1004_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1005	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1005/CHIVES1005_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1006	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1006/CHIVES1006_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1007	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1007/CHIVES1007_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1008	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1008/CHIVES1008_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1009	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1009/CHIVES1009_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1010	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1010/CHIVES1010_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1011	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1011/CHIVES1011_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1012	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1012/CHIVES1012_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1013	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1013/CHIVES1013_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1014	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1014/CHIVES1014_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1016	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1016/CHIVES1016_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1017	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1017/CHIVES1017_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1018	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1018/CHIVES1018_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1019	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1019/CHIVES1019_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1020	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1020/CHIVES1020_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1021	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1021/CHIVES1021_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1022	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1022/CHIVES1022_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1023	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1023/CHIVES1023_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1024	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1024/CHIVES1024_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1025	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1025/CHIVES1025_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1026	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1026/CHIVES1026_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1027	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1027/CHIVES1027_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1029	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1029/CHIVES1029_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1030	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1030/CHIVES1030_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1031	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1031/CHIVES1031_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1032	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1032/CHIVES1032_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1033	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1033/CHIVES1033_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1034	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1034/CHIVES1034_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1035	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1035/CHIVES1035_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1036	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1036/CHIVES1036_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1037	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1037/CHIVES1037_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1038	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1038/CHIVES1038_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1041	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1041/CHIVES1041_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1042	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1042/CHIVES1042_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1043	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1043/CHIVES1043_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1044	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1044/CHIVES1044_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1045	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1045/CHIVES1045_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1046	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1046/CHIVES1046_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1047	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1047/CHIVES1047_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1048	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1048/CHIVES1048_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1049	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1049/CHIVES1049_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1050	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1050/CHIVES1050_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1051	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1051/CHIVES1051_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1052	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1052/CHIVES1052_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1053	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1053/CHIVES1053_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1054	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1054/CHIVES1054_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1055	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1055/CHIVES1055_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1056	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1056/CHIVES1056_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1057	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1057/CHIVES1057_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1058	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1058/CHIVES1058_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1059	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1059/CHIVES1059_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1060	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1060/CHIVES1060_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1061	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1061/CHIVES1061_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1062	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1062/CHIVES1062_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1063	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1063/CHIVES1063_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1064	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1064/CHIVES1064_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1065	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1065/CHIVES1065_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1066	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1066/CHIVES1066_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1068	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1068/CHIVES1068_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1069	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1069/CHIVES1069_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1070	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1070/CHIVES1070_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1071	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1071/CHIVES1071_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1072	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1072/CHIVES1072_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1073	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1073/CHIVES1073_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1074	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1074/CHIVES1074_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1076	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1076/CHIVES1076_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1077	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1077/CHIVES1077_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1078	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1078/CHIVES1078_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1079	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1079/CHIVES1079_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1080	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1080/CHIVES1080_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1081	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1081/CHIVES1081_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1083	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1083/CHIVES1083_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1084	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1084/CHIVES1084_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1085	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1085/CHIVES1085_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1087	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1087/CHIVES1087_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1088	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1088/CHIVES1088_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1089	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1089/CHIVES1089_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1090	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1090/CHIVES1090_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1091	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1091/CHIVES1091_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1092	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1092/CHIVES1092_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1094	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1094/CHIVES1094_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1095	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1095/CHIVES1095_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1096	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1096/CHIVES1096_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1097	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1097/CHIVES1097_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1098	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1098/CHIVES1098_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1100	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1100/CHIVES1100_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1102	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1102/CHIVES1102_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1103	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1103/CHIVES1103_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
sub-CHIVES1105	"/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/afni/CHIVES1105/CHIVES1105_AllCondPmod_stats_REML+tlrc.HEAD[Pmod#0_Coef]"	\
-mask /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/code/MNI152_T1_2mm_brain_mask.nii  \
-covariates /projects/sanlab/shared/CHIVES/CHIVES_WTP_scripts/fMRI/rx/money/covariates.txt \
-Clustsim \
-prefix_clustsim /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/afni_rx/ClustSim/TTestBmiXAllCondPmod_afnifx