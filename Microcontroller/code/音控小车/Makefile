#####################################################################
#																	 
#	Created by u'nSP IDE		16:49:07	07/17/17
#
#####################################################################




APPDIR	= C:\PROGRA~1\GENERA~1\UNSPID~1.4

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\gcc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

RM	= $(APPDIR)\toolchain\rm -f

INCLUDES	= -I"D:/3140102328/修改/音控小车" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include/sys" -I"../../../Library" -I"D:/Program Files/Sunplus/unSPIDE162/Include"

BODY	= -body SPCE060A_061A -nobdy -bfile "D:\3140102328\修改\音控小车\Guard_SD.bdy"

BODYFILE	= "D:\3140102328\修改\音控小车\Guard_SD.bdy" 

BINFILE	= "$(OUTDIR)\Guard_SD.S37"

ARYFILE	= "$(OUTDIR)\Guard_SD.ary"

SBMFILE	= "$(OUTDIR)\Guard_SD.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t2 -d

CASFLAGS	= -t2 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\dcqzy_48k.res" \
	"$(OUTDIR)\fbf_48k.res" \
	"$(OUTDIR)\gjg_48k.res" \
	"$(OUTDIR)\j15yq_48k.res" \
	"$(OUTDIR)\jwwyq_48k.res" \
	"$(OUTDIR)\nqw5y_48k.res" \
	"$(OUTDIR)\nqw15y_48k.res" \
	"$(OUTDIR)\nqwwwyq_48k.res" \
	"$(OUTDIR)\nzwgsm_48k.res" \
	"$(OUTDIR)\nzylhql_48k.res" \
	"$(OUTDIR)\qj_48k.res" \
	"$(OUTDIR)\S12_24K.res" \
	"$(OUTDIR)\sb_48k.res" \
	"$(OUTDIR)\ssmay_48k.res" \
	"$(OUTDIR)\wlhq_48k.res" \
	"$(OUTDIR)\xl_48k.res" \
	"$(OUTDIR)\yeah_48k.res" \
	"$(OUTDIR)\yrzm_48k.res" \
	"$(OUTDIR)\zsyb_48k.res" \
	"$(OUTDIR)\nqw10yq_48k.res" \
	"$(OUTDIR)\j10yq_48k.res" \
	"$(OUTDIR)\InitIO.obj" \
	"$(OUTDIR)\hardware.obj" \
	"$(OUTDIR)\FIQ.obj" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\Flash.obj" \
	"$(OUTDIR)\Bpwm.obj" \
	"$(OUTDIR)\SetIOBit.obj" 

"$(OUTDIR)\dcqzy_48k.res": "D:\3140102328\修改\音控小车\voice\dcqzy.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\dcqzy.48k" "$(OUTDIR)\dcqzy_48k.res" RES_DCQZY_48K 

"$(OUTDIR)\fbf_48k.res": "D:\3140102328\修改\音控小车\voice\fbf.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\fbf.48k" "$(OUTDIR)\fbf_48k.res" RES_FBF_48K 

"$(OUTDIR)\gjg_48k.res": "D:\3140102328\修改\音控小车\voice\gjg.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\gjg.48k" "$(OUTDIR)\gjg_48k.res" RES_GJG_48K 

"$(OUTDIR)\j15yq_48k.res": "D:\3140102328\修改\音控小车\voice\j15yq.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\j15yq.48k" "$(OUTDIR)\j15yq_48k.res" RES_J15YQ_48K 

"$(OUTDIR)\jwwyq_48k.res": "D:\3140102328\修改\音控小车\voice\jwwyq.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\jwwyq.48k" "$(OUTDIR)\jwwyq_48k.res" RES_JWWYQ_48K 

"$(OUTDIR)\nqw5y_48k.res": "D:\3140102328\修改\音控小车\voice\nqw5y.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\nqw5y.48k" "$(OUTDIR)\nqw5y_48k.res" RES_NQW5Y_48K 

"$(OUTDIR)\nqw15y_48k.res": "D:\3140102328\修改\音控小车\voice\nqw15y.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\nqw15y.48k" "$(OUTDIR)\nqw15y_48k.res" RES_NQW15Y_48K 

"$(OUTDIR)\nqwwwyq_48k.res": "D:\3140102328\修改\音控小车\voice\nqwwwyq.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\nqwwwyq.48k" "$(OUTDIR)\nqwwwyq_48k.res" RES_NQWWWYQ_48K 

"$(OUTDIR)\nzwgsm_48k.res": "D:\3140102328\修改\音控小车\voice\nzwgsm.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\nzwgsm.48k" "$(OUTDIR)\nzwgsm_48k.res" RES_NZWGSM_48K 

"$(OUTDIR)\nzylhql_48k.res": "D:\3140102328\修改\音控小车\voice\nzylhql.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\nzylhql.48k" "$(OUTDIR)\nzylhql_48k.res" RES_NZYLHQL_48K 

"$(OUTDIR)\qj_48k.res": "D:\3140102328\修改\音控小车\voice\qj.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\qj.48k" "$(OUTDIR)\qj_48k.res" RES_QJ_48K 

"$(OUTDIR)\S12_24K.res": "D:\3140102328\修改\音控小车\voice\S12.24K"
	$(RESC) "D:\3140102328\修改\音控小车\voice\S12.24K" "$(OUTDIR)\S12_24K.res" RES_S12_24K 

"$(OUTDIR)\sb_48k.res": "D:\3140102328\修改\音控小车\voice\sb.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\sb.48k" "$(OUTDIR)\sb_48k.res" RES_SB_48K 

"$(OUTDIR)\ssmay_48k.res": "D:\3140102328\修改\音控小车\voice\ssmay.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\ssmay.48k" "$(OUTDIR)\ssmay_48k.res" RES_SSMAY_48K 

"$(OUTDIR)\wlhq_48k.res": "D:\3140102328\修改\音控小车\voice\wlhq.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\wlhq.48k" "$(OUTDIR)\wlhq_48k.res" RES_WLHQ_48K 

"$(OUTDIR)\xl_48k.res": "D:\3140102328\修改\音控小车\voice\xl.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\xl.48k" "$(OUTDIR)\xl_48k.res" RES_XL_48K 

"$(OUTDIR)\yeah_48k.res": "D:\3140102328\修改\音控小车\voice\yeah.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\yeah.48k" "$(OUTDIR)\yeah_48k.res" RES_YEAH_48K 

"$(OUTDIR)\yrzm_48k.res": "D:\3140102328\修改\音控小车\voice\yrzm.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\yrzm.48k" "$(OUTDIR)\yrzm_48k.res" RES_YRZM_48K 

"$(OUTDIR)\zsyb_48k.res": "D:\3140102328\修改\音控小车\voice\zsyb.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\zsyb.48k" "$(OUTDIR)\zsyb_48k.res" RES_ZSYB_48K 

"$(OUTDIR)\nqw10yq_48k.res": "D:\3140102328\修改\音控小车\voice\nqw10yq.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\nqw10yq.48k" "$(OUTDIR)\nqw10yq_48k.res" RES_NQW10YQ_48K 

"$(OUTDIR)\j10yq_48k.res": "D:\3140102328\修改\音控小车\voice\j10yq.48k"
	$(RESC) "D:\3140102328\修改\音控小车\voice\j10yq.48k" "$(OUTDIR)\j10yq_48k.res" RES_J10YQ_48K 

"$(OUTDIR)\InitIO.obj": "D:\3140102328\修改\音控小车\InitIO.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\InitIO.lst" -o "$(OUTDIR)\InitIO.obj" "D:\3140102328\修改\音控小车\InitIO.asm" 

"$(OUTDIR)\hardware.obj": "D:\3140102328\修改\音控小车\hardware.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\hardware.lst" -o "$(OUTDIR)\hardware.obj" "D:\3140102328\修改\音控小车\hardware.asm" 

"$(OUTDIR)\FIQ.obj": "D:\3140102328\修改\音控小车\FIQ.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\FIQ.lst" -o "$(OUTDIR)\FIQ.obj" "D:\3140102328\修改\音控小车\FIQ.asm" 

"$(OUTDIR)\Resource.obj": "D:\3140102328\修改\音控小车\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\3140102328\修改\音控小车\Resource.asm" 

"$(OUTDIR)\main.asm": "D:\3140102328\修改\音控小车\main.c" ".\bsrsd.h" ".\hardware.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/3140102328/修改/音控小车/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\Flash.obj": "D:\3140102328\修改\音控小车\Flash.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Flash.lst" -o "$(OUTDIR)\Flash.obj" "D:\3140102328\修改\音控小车\Flash.asm" 

"$(OUTDIR)\Bpwm.obj": "D:\3140102328\修改\音控小车\Bpwm.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Bpwm.lst" -o "$(OUTDIR)\Bpwm.obj" "D:\3140102328\修改\音控小车\Bpwm.asm" 

"$(OUTDIR)\SetIOBit.obj": "D:\3140102328\修改\音控小车\SetIOBit.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SetIOBit.lst" -o "$(OUTDIR)\SetIOBit.obj" "D:\3140102328\修改\音控小车\SetIOBit.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\dcqzy_48k.res" 
	$(RM) "$(OUTDIR)\fbf_48k.res" 
	$(RM) "$(OUTDIR)\gjg_48k.res" 
	$(RM) "$(OUTDIR)\j15yq_48k.res" 
	$(RM) "$(OUTDIR)\jwwyq_48k.res" 
	$(RM) "$(OUTDIR)\nqw5y_48k.res" 
	$(RM) "$(OUTDIR)\nqw15y_48k.res" 
	$(RM) "$(OUTDIR)\nqwwwyq_48k.res" 
	$(RM) "$(OUTDIR)\nzwgsm_48k.res" 
	$(RM) "$(OUTDIR)\nzylhql_48k.res" 
	$(RM) "$(OUTDIR)\qj_48k.res" 
	$(RM) "$(OUTDIR)\S12_24K.res" 
	$(RM) "$(OUTDIR)\sb_48k.res" 
	$(RM) "$(OUTDIR)\ssmay_48k.res" 
	$(RM) "$(OUTDIR)\wlhq_48k.res" 
	$(RM) "$(OUTDIR)\xl_48k.res" 
	$(RM) "$(OUTDIR)\yeah_48k.res" 
	$(RM) "$(OUTDIR)\yrzm_48k.res" 
	$(RM) "$(OUTDIR)\zsyb_48k.res" 
	$(RM) "$(OUTDIR)\nqw10yq_48k.res" 
	$(RM) "$(OUTDIR)\j10yq_48k.res" 
	$(RM) "$(OUTDIR)\InitIO.obj" 
	$(RM) "$(OUTDIR)\InitIO.lst" 
	$(RM) "$(OUTDIR)\hardware.obj" 
	$(RM) "$(OUTDIR)\hardware.lst" 
	$(RM) "$(OUTDIR)\FIQ.obj" 
	$(RM) "$(OUTDIR)\FIQ.lst" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\Flash.obj" 
	$(RM) "$(OUTDIR)\Flash.lst" 
	$(RM) "$(OUTDIR)\Bpwm.obj" 
	$(RM) "$(OUTDIR)\Bpwm.lst" 
	$(RM) "$(OUTDIR)\SetIOBit.obj" 
	$(RM) "$(OUTDIR)\SetIOBit.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

