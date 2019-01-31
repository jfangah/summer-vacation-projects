#####################################################################
#																	 
#	Created by u'nSP IDE		11:33:56	07/16/17
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

INCLUDES	= -I"D:/新建文件夹/11111111" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.4/library/include/sys"

BODY	= -body SPCE060A_061A -nobdy -bfile "D:\新建文件夹\11111111\11111111.bdy"

BODYFILE	= "D:\新建文件夹\11111111\11111111.bdy" 

BINFILE	= "$(OUTDIR)\11111111.S37"

ARYFILE	= "$(OUTDIR)\11111111.ary"

SBMFILE	= "$(OUTDIR)\11111111.sbm"

OPT	= -S -gstabs -Wall -mglobal-var-iram

ASFLAGS	= -t2 -d -sr

CASFLAGS	= -t2 -sr -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= 

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\libgloss.obj" \
	"$(OUTDIR)\main.obj" 

"$(OUTDIR)\Resource.obj": "D:\新建文件夹\11111111\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)\Resource.obj" "D:\新建文件夹\11111111\Resource.asm" 

"$(OUTDIR)\libgloss.asm": "D:\新建文件夹\123\libgloss.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/libgloss.asm" "D:/新建文件夹/123/libgloss.c" 

"$(OUTDIR)\libgloss.obj": "$(OUTDIR)\libgloss.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\libgloss.obj" "$(OUTDIR)\libgloss.asm" 

"$(OUTDIR)\main.asm": "D:\新建文件夹\123\main.c" "D:\新建文件夹\123\SPCE061.H" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/新建文件夹/123/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\libgloss.obj" 
	$(RM) "$(OUTDIR)\libgloss.lst" 
	$(RM) "$(OUTDIR)\libgloss.asm" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

