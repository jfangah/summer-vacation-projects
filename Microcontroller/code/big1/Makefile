#####################################################################
#																	 
#	Created by u'nSP IDE		10:30:17	07/08/17
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

INCLUDES	= -I"D:/3140102328/修改/big1" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include/sys"

BODY	= -body SPCE060A_061A -nobdy -bfile "D:\3140102328\修改\big1\big1.bdy"

BODYFILE	= "D:\3140102328\修改\big1\big1.bdy" 

BINFILE	= "$(OUTDIR)\big1.S37"

ARYFILE	= "$(OUTDIR)\big1.ary"

SBMFILE	= "$(OUTDIR)\big1.sbm"

OPT	= -S -gstabs -Wall -mglobal-var-iram

ASFLAGS	= -t2 -d -sr

CASFLAGS	= -t2 -sr -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= 

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\Resource.obj" 

"$(OUTDIR)\main.asm": "D:\3140102328\修改\big1\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/3140102328/修改/big1/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\Resource.obj": "D:\3140102328\修改\big1\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Resource.obj" "D:\3140102328\修改\big1\Resource.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

