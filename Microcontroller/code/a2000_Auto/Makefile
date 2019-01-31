#####################################################################
#																	 
#	Created by u'nSP IDE		17:23:50	07/18/17
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

INCLUDES	= -I"D:/3140102328/修改/a2000_Auto" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include/sys" -I"../../../Include"

BODY	= -body SPCE060A_061A -nobdy -bfile "D:\3140102328\修改\a2000_Auto\a2000_Auto.bdy"

BODYFILE	= "D:\3140102328\修改\a2000_Auto\a2000_Auto.bdy" 

BINFILE	= "$(OUTDIR)\a2000_Auto.S37"

ARYFILE	= "$(OUTDIR)\a2000_Auto.ary"

SBMFILE	= "$(OUTDIR)\a2000_Auto.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t2 -d

CASFLAGS	= -t2 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\d1_24K.res" \
	"$(OUTDIR)\ww_24k.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\isr.obj" \
	"$(OUTDIR)\hardware.obj" 

"$(OUTDIR)\d1_24K.res": "D:\3140102328\修改\a2000_Auto\voice\d1.24K"
	$(RESC) "D:\3140102328\修改\a2000_Auto\voice\d1.24K" "$(OUTDIR)\d1_24K.res" RES_D1_24K 

"$(OUTDIR)\ww_24k.res": "D:\3140102328\修改\a2000_Auto\voice\ww.24k"
	$(RESC) "D:\3140102328\修改\a2000_Auto\voice\ww.24k" "$(OUTDIR)\ww_24k.res" RES_WW_24K 

"$(OUTDIR)\Resource.obj": "D:\3140102328\修改\a2000_Auto\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\3140102328\修改\a2000_Auto\Resource.asm" 

"$(OUTDIR)\main.asm": "D:\3140102328\修改\a2000_Auto\main.c" ".\a2000.h" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/3140102328/修改/a2000_Auto/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\isr.obj": "D:\3140102328\修改\a2000_Auto\isr.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\isr.lst" -o "$(OUTDIR)\isr.obj" "D:\3140102328\修改\a2000_Auto\isr.asm" 

"$(OUTDIR)\hardware.obj": "D:\3140102328\修改\a2000_Auto\hardware.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\hardware.lst" -o "$(OUTDIR)\hardware.obj" "D:\3140102328\修改\a2000_Auto\hardware.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\d1_24K.res" 
	$(RM) "$(OUTDIR)\ww_24k.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\isr.obj" 
	$(RM) "$(OUTDIR)\isr.lst" 
	$(RM) "$(OUTDIR)\hardware.obj" 
	$(RM) "$(OUTDIR)\hardware.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

