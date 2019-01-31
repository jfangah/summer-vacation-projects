
// Resource Table
// Created by IDE, Do not modify this table

.TEXT
.public _RES_Table;
.external __RES_D1_24K_sa
.public _RES_D1_24K_SA;
.external __RES_D1_24K_ea;
.public _RES_D1_24K_EA;
.external __RES_WW_24K_sa
.public _RES_WW_24K_SA;
.external __RES_WW_24K_ea;
.public _RES_WW_24K_EA;


_RES_Table:

_RES_D1_24K_SA:
	.DW offset __RES_D1_24K_sa,seg __RES_D1_24K_sa;
_RES_D1_24K_EA:
	.DW offset __RES_D1_24K_ea,seg __RES_D1_24K_ea;

_RES_WW_24K_SA:
	.DW offset __RES_WW_24K_sa,seg __RES_WW_24K_sa;
_RES_WW_24K_EA:
	.DW offset __RES_WW_24K_ea,seg __RES_WW_24K_ea;


// End Table
.PUBLIC T_SACM_A2000_SpeechTable
T_SACM_A2000_SpeechTable:
.DW _RES_D1_24K_SA  //0
.DW _RES_WW_24K_SA  //1
