#!/bin/tcsh
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=124000
#SBATCH --partition=ctn
module load afni

# apply any data directories with variables
cd /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/afni_rx
3dMEMA -prefix BMIxHealthvsUnhealthy_MEMA                 \
  -cio -max_zeros 2 -missing_data 0                 \
  -model_outliers -jobs 20 -verb 1                \
       -set Pmod                                        \
          sub-CHIVES1001	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1001/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1001/spmT_0004.nii	\
sub-CHIVES1002	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1002/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1002/spmT_0004.nii	\
sub-CHIVES1003	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1003/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1003/spmT_0004.nii	\
sub-CHIVES1004	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1004/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1004/spmT_0004.nii	\
sub-CHIVES1005	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1005/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1005/spmT_0004.nii	\
sub-CHIVES1006	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1006/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1006/spmT_0004.nii	\
sub-CHIVES1007	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1007/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1007/spmT_0004.nii	\
sub-CHIVES1008	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1008/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1008/spmT_0004.nii	\
sub-CHIVES1009	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1009/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1009/spmT_0004.nii	\
sub-CHIVES1010	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1010/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1010/spmT_0004.nii	\
sub-CHIVES1011	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1011/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1011/spmT_0004.nii	\
sub-CHIVES1012	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1012/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1012/spmT_0004.nii	\
sub-CHIVES1013	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1013/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1013/spmT_0004.nii	\
sub-CHIVES1014	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1014/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1014/spmT_0004.nii	\
sub-CHIVES1016	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1016/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1016/spmT_0004.nii	\
sub-CHIVES1017	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1017/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1017/spmT_0004.nii	\
sub-CHIVES1018	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1018/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1018/spmT_0004.nii	\
sub-CHIVES1019	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1019/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1019/spmT_0004.nii	\
sub-CHIVES1020	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1020/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1020/spmT_0004.nii	\
sub-CHIVES1021	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1021/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1021/spmT_0004.nii	\
sub-CHIVES1022	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1022/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1022/spmT_0004.nii	\
sub-CHIVES1023	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1023/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1023/spmT_0004.nii	\
sub-CHIVES1024	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1024/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1024/spmT_0004.nii	\
sub-CHIVES1025	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1025/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1025/spmT_0004.nii	\
sub-CHIVES1026	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1026/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1026/spmT_0004.nii	\
sub-CHIVES1027	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1027/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1027/spmT_0004.nii	\
sub-CHIVES1029	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1029/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1029/spmT_0004.nii	\
sub-CHIVES1030	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1030/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1030/spmT_0004.nii	\
sub-CHIVES1031	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1031/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1031/spmT_0004.nii	\
sub-CHIVES1032	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1032/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1032/spmT_0004.nii	\
sub-CHIVES1033	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1033/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1033/spmT_0004.nii	\
sub-CHIVES1034	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1034/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1034/spmT_0004.nii	\
sub-CHIVES1035	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1035/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1035/spmT_0004.nii	\
sub-CHIVES1036	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1036/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1036/spmT_0004.nii	\
sub-CHIVES1037	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1037/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1037/spmT_0004.nii	\
sub-CHIVES1038	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1038/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1038/spmT_0004.nii	\
sub-CHIVES1041	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1041/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1041/spmT_0004.nii	\
sub-CHIVES1042	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1042/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1042/spmT_0004.nii	\
sub-CHIVES1043	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1043/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1043/spmT_0004.nii	\
sub-CHIVES1044	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1044/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1044/spmT_0004.nii	\
sub-CHIVES1045	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1045/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1045/spmT_0004.nii	\
sub-CHIVES1046	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1046/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1046/spmT_0004.nii	\
sub-CHIVES1047	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1047/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1047/spmT_0004.nii	\
sub-CHIVES1048	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1048/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1048/spmT_0004.nii	\
sub-CHIVES1049	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1049/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1049/spmT_0004.nii	\
sub-CHIVES1050	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1050/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1050/spmT_0004.nii	\
sub-CHIVES1051	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1051/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1051/spmT_0004.nii	\
sub-CHIVES1052	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1052/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1052/spmT_0004.nii	\
sub-CHIVES1053	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1053/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1053/spmT_0004.nii	\
sub-CHIVES1054	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1054/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1054/spmT_0004.nii	\
sub-CHIVES1055	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1055/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1055/spmT_0004.nii	\
sub-CHIVES1056	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1056/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1056/spmT_0004.nii	\
sub-CHIVES1057	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1057/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1057/spmT_0004.nii	\
sub-CHIVES1058	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1058/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1058/spmT_0004.nii	\
sub-CHIVES1059	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1059/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1059/spmT_0004.nii	\
sub-CHIVES1060	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1060/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1060/spmT_0004.nii	\
sub-CHIVES1061	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1061/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1061/spmT_0004.nii	\
sub-CHIVES1062	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1062/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1062/spmT_0004.nii	\
sub-CHIVES1063	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1063/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1063/spmT_0004.nii	\
sub-CHIVES1064	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1064/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1064/spmT_0004.nii	\
sub-CHIVES1065	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1065/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1065/spmT_0004.nii	\
sub-CHIVES1066	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1066/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1066/spmT_0004.nii	\
sub-CHIVES1068	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1068/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1068/spmT_0004.nii	\
sub-CHIVES1069	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1069/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1069/spmT_0004.nii	\
sub-CHIVES1070	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1070/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1070/spmT_0004.nii	\
sub-CHIVES1071	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1071/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1071/spmT_0004.nii	\
sub-CHIVES1072	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1072/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1072/spmT_0004.nii	\
sub-CHIVES1073	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1073/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1073/spmT_0004.nii	\
sub-CHIVES1074	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1074/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1074/spmT_0004.nii	\
sub-CHIVES1076	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1076/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1076/spmT_0004.nii	\
sub-CHIVES1077	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1077/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1077/spmT_0004.nii	\
sub-CHIVES1078	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1078/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1078/spmT_0004.nii	\
sub-CHIVES1079	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1079/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1079/spmT_0004.nii	\
sub-CHIVES1080	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1080/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1080/spmT_0004.nii	\
sub-CHIVES1081	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1081/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1081/spmT_0004.nii	\
sub-CHIVES1082	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1082/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1082/spmT_0004.nii	\
sub-CHIVES1083	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1083/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1083/spmT_0004.nii	\
sub-CHIVES1084	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1084/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1084/spmT_0004.nii	\
sub-CHIVES1085	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1085/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1085/spmT_0004.nii	\
sub-CHIVES1087	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1087/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1087/spmT_0004.nii	\
sub-CHIVES1088	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1088/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1088/spmT_0004.nii	\
sub-CHIVES1089	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1089/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1089/spmT_0004.nii	\
sub-CHIVES1090	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1090/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1090/spmT_0004.nii	\
sub-CHIVES1091	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1091/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1091/spmT_0004.nii	\
sub-CHIVES1092	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1092/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1092/spmT_0004.nii	\
sub-CHIVES1094	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1094/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1094/spmT_0004.nii	\
sub-CHIVES1095	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1095/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1095/spmT_0004.nii	\
sub-CHIVES1096	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1096/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1096/spmT_0004.nii	\
sub-CHIVES1097	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1097/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1097/spmT_0004.nii	\
sub-CHIVES1098	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1098/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1098/spmT_0004.nii	\
sub-CHIVES1100	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1100/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1100/spmT_0004.nii	\
sub-CHIVES1102	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1102/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1102/spmT_0004.nii	\
sub-CHIVES1103	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1103/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1103/spmT_0004.nii	\
sub-CHIVES1105	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1105/con_0004.nii	/projects/sanlab/shared/CHIVES/nonbids_data/fMRI/fx/models/money/pmod/sub-CHIVES1105/spmT_0004.nii	\
            -mask /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/code/MNI152_T1_2mm_brain_mask.nii  \
            -covariates /projects/sanlab/shared/CHIVES/nonbids_data/fMRI/rx/money/code/covariates.txt


exit