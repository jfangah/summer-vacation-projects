// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\cc1lIcv6.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/3140102328/ÐÞ¸Ä/jifenqi/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/3140102328/Ð/336¸/304/jifenqi/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.code
Ltext0:
.debug
	.dw '.stabs "int:t1=r1;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "char:t2=r2;0;127;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long int:t3=r3;-2147483648;2147483647;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "unsigned int:t4=r4;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long unsigned int:t5=r5;0;4294967295;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long long int:t6=r6;-2147483648;2147483647;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long long unsigned int:t7=r7;0;4294967295;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "short int:t8=r8;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "short unsigned int:t9=r9;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "signed char:t10=r10;-32768;32767;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "unsigned char:t11=r11;0;65535;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "float:t12=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "double:t13=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "long double:t14=r1;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex int:t15=s2real:1,0,16;imag:1,16,16;;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex float:t16=r16;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex double:t17=r17;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "complex long double:t18=r18;2;0;",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "void:t19=19",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "num:G20=ar1;0;5;1",32,0,0,',0,0,offset _num,seg _num,0x0d,0x0a
.CODE
.public _DigCode
.text
_DigCode:
	.dw 63
	.dw 6
	.dw 91
	.dw 79
	.dw 102
	.dw 109
	.dw 125
	.dw 7
	.dw 127
	.dw 111
.debug
	.dw '.stabs "DigCode:G21=ar1;0;9;11",32,0,0,',0,0,offset _DigCode,seg _DigCode,0x0d,0x0a
.CODE
.code
.debug
	.dw '.stabs "LedDispDig:F19",36,0,0,',0,0,offset _LedDispDig,seg _LedDispDig,0x0d,0x0a
.CODE
.public _LedDispDig
_LedDispDig:	.proc
.debug
	.dw '.stabn 0x44,0,26,',0,0
	.dd LM1-_LedDispDig
	.dw 0x0d,0x0a
.code
LM1:
	// total=1, vars=1
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,1',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=1
	BP=SP+1

	R1=BP+4
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,27,',0,0
	.dd LM2-_LedDispDig
	.dw 0x0d,0x0a
.code
LM2:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,29,',0,0
	.dd LM3-_LedDispDig
	.dw 0x0d,0x0a
.code
LM3:
	R1=[28679]	// QImode move
	R2=R1|16383
	[28679]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,30,',0,0
	.dd LM4-_LedDispDig
	.dw 0x0d,0x0a
.code
LM4:
	R1=[28680]	// QImode move
	R2=R1|16383
	[28680]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,31,',0,0
	.dd LM5-_LedDispDig
	.dw 0x0d,0x0a
.code
LM5:
	R3=[BP]	// QImode move
	R2=[R3]	// QImode move
	R1=R2+(-1)
	R2=256	// QImode move
	[SP--]=R1	// QImode move
	[SP--]=R2	// QImode move
	CALL __lshiu1	// call with return value
	SP = SP + 2	//SP
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,33,',0,0
	.dd LM6-_LedDispDig
	.dw 0x0d,0x0a
.code
LM6:
	R1=[BP]	// QImode move
	R4=[BP]	// QImode move
	R2=R4+1
	R1=_DigCode	// QImode move
	R3=R2	// QImode move
	R2=[R3]	// QImode move
	R1 = R1 + R2	//addqi3
	R2=[28677]	// QImode move
	R3=R2	// QImode move
	R4=R1	// QImode move
	R3|=[R4]	// iorqi3_r0R
	R1=R3	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM7-_LedDispDig
	.dw 0x0d,0x0a
.code
LM7:
.debug
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM8-_LedDispDig
	.dw 0x0d,0x0a
.code
LM8:
L2:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of LedDispDig

.debug
	.dw '.stabs "Pos:p1",160,0,0,4',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Dig:p1",160,0,0,5',0x0d,0x0a
.CODE
.debug
	.dw '.stabf ',0,0
	.dd LME1-_LedDispDig
	.dw 0x0d,0x0a
.code
LME1:
.code
.debug
	.dw '.stabs "GetKey:F4",36,0,0,',0,0,offset _GetKey,seg _GetKey,0x0d,0x0a
.CODE
.public _GetKey
_GetKey:	.proc
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM9-_GetKey
	.dw 0x0d,0x0a
.code
LM9:
	// total=4, vars=4
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,4',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=4
	BP=SP+1

	R1=BP+7
	[BP+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,44,',0,0
	.dd LM10-_GetKey
	.dw 0x0d,0x0a
.code
LM10:
LBB2:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,47,',0,0
	.dd LM11-_GetKey
	.dw 0x0d,0x0a
.code
LM11:
	R1=[28674]	// QImode move
	R2=R1&255
	[28674]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,48,',0,0
	.dd LM12-_GetKey
	.dw 0x0d,0x0a
.code
LM12:
	R1=[28675]	// QImode move
	R2=R1&255
	[28675]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM13-_GetKey
	.dw 0x0d,0x0a
.code
LM13:
	R1=[28673]	// QImode move
	R2=R1|(-256)
	[28673]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM14-_GetKey
	.dw 0x0d,0x0a
.code
LM14:
L4:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L6	//QImode EQ
	PC=L5	// jump
L6:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM15-_GetKey
	.dw 0x0d,0x0a
.code
LM15:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,55,',0,0
	.dd LM16-_GetKey
	.dw 0x0d,0x0a
.code
LM16:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,10000	// QImode compare
	NSJNA L7	//QImode LEU
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM17-_GetKey
	.dw 0x0d,0x0a
.code
LM17:
	PC=L5	// jump
L7:
.debug
	.dw '.stabn 0x44,0,57,',0,0
	.dd LM18-_GetKey
	.dw 0x0d,0x0a
.code
LM18:
	R1=BP	// QImode move
	R2=BP+2
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L8:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L11	//QImode LE
	PC=L9	// jump
L11:
.debug
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM19-_GetKey
	.dw 0x0d,0x0a
.code
LM19:
	R1=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R1=R2	// QImode move
	R2=[BP+3]	// QImode move
	R1 = R1 + [R2]	//addqi3
	R2=R1+(-1)
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,57,',0,0
	.dd LM20-_GetKey
	.dw 0x0d,0x0a
.code
LM20:
L10:
	R1=BP	// QImode move
	R2=BP+2
	R3=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L8	// jump
L9:
.debug
	.dw '.stabn 0x44,0,59,',0,0
	.dd LM21-_GetKey
	.dw 0x0d,0x0a
.code
LM21:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM22-_GetKey
	.dw 0x0d,0x0a
.code
LM22:
	PC=L4	// jump
L5:
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM23-_GetKey
	.dw 0x0d,0x0a
.code
LM23:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L12:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,99	// QImode compare
	NSJNA L15	//QImode LEU
	PC=L13	// jump
L15:
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM24-_GetKey
	.dw 0x0d,0x0a
.code
LM24:
	R1=BP	// QImode move
	R2=BP+2
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L16:
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L19	//QImode LE
	PC=L14	// jump
L19:
.debug
	.dw '.stabn 0x44,0,63,',0,0
	.dd LM25-_GetKey
	.dw 0x0d,0x0a
.code
LM25:
	R1=BP	// QImode move
	R3=BP+2
	R1=R3	// QImode move
	R2=[R1]	// QImode move
	R1=R2	// QImode move
	R2=[BP+3]	// QImode move
	R1 = R1 + [R2]	//addqi3
	R2=R1+(-1)
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM26-_GetKey
	.dw 0x0d,0x0a
.code
LM26:
L18:
	R1=BP	// QImode move
	R2=BP+2
	R3=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L16	// jump
L17:
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM27-_GetKey
	.dw 0x0d,0x0a
.code
LM27:
L14:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L12	// jump
L13:
.debug
	.dw '.stabn 0x44,0,64,',0,0
	.dd LM28-_GetKey
	.dw 0x0d,0x0a
.code
LM28:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	R3=R1^(-256)
	[BP]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM29-_GetKey
	.dw 0x0d,0x0a
.code
LM29:
L20:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJNZ L22	//QImode NE
	PC=L21	// jump
L22:
.debug
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM30-_GetKey
	.dw 0x0d,0x0a
.code
LM30:
	R1=BP	// QImode move
	R2=BP+2
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L23:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L26	//QImode LE
	PC=L24	// jump
L26:
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM31-_GetKey
	.dw 0x0d,0x0a
.code
LM31:
	R1=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R1=R2	// QImode move
	R2=[BP+3]	// QImode move
	R1 = R1 + [R2]	//addqi3
	R2=R1+(-1)
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM32-_GetKey
	.dw 0x0d,0x0a
.code
LM32:
L25:
	R1=BP	// QImode move
	R2=BP+2
	R3=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L23	// jump
L24:
.debug
	.dw '.stabn 0x44,0,70,',0,0
	.dd LM33-_GetKey
	.dw 0x0d,0x0a
.code
LM33:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM34-_GetKey
	.dw 0x0d,0x0a
.code
LM34:
	PC=L20	// jump
L21:
.debug
	.dw '.stabn 0x44,0,72,',0,0
	.dd LM35-_GetKey
	.dw 0x0d,0x0a
.code
LM35:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L3	// jump
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM36-_GetKey
	.dw 0x0d,0x0a
.code
LM36:
LBE2:
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM37-_GetKey
	.dw 0x0d,0x0a
.code
LM37:
L3:

	SP+=4
	POP BP from [SP]
	RETF
	.endp	// end of GetKey

.debug
	.dw '.stabs "num:p22=*1",160,0,0,7',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB2-_GetKey
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "KeyValue:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "time:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:1",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE2-_GetKey
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME2-_GetKey
	.dw 0x0d,0x0a
.code
LME2:
.code
.debug
	.dw '.stabs "main:F1",36,0,0,',0,0,offset _main,seg _main,0x0d,0x0a
.CODE
.public _main
_main:	.proc
.debug
	.dw '.stabn 0x44,0,78,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	// total=7, vars=7
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,7',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=7
	BP=SP+1

	R1=BP+10
	[BP+6]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
LBB3:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
	R1=BP	// QImode move
	R2=BP+3
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,89,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
L35:
	PC=L37	// jump
	PC=L36	// jump
L37:
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R1=BP	// QImode move
	R2=BP+5
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R1=_num	// QImode move
	[SP--]=R1	// QImode move
	CALL _GetKey	// call with return value
	SP = SP + 1	//SP
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
	R1=[BP]	// QImode move
	CMP R1,4096	// QImode compare
	NSJNZ L38	//QImode NE
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	R1=0	// QImode move
	[_num]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	R1=0	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	R1=0	// QImode move
	[_num+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
	R1=0	// QImode move
	[_num+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
	R1=0	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
	R1=0	// QImode move
	[_num+5]=R1	// QImode move
L38:
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
	R1=[BP]	// QImode move
	CMP R1,2048	// QImode compare
	NSJNZ L39	//QImode NE
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
	R1=BP	// QImode move
	R2=BP+3
	R3=BP	// QImode move
	R1=BP+3
	R2=BP	// QImode move
	R3=BP+3
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
L39:
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
	R1=BP	// QImode move
	R2=BP+3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	R2=R1&1
	CMP R2,0	// QImode test
	NSJNZ L40	//QImode NE
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
	R1=[BP]	// QImode move
	CMP R1,256	// QImode compare
	NSJNZ L41	//QImode NE
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
	R1=[_num+2]	// QImode move
	R2=1	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	R1=[_num+2]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L42	//QImode LE
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
	R1=[_num+2]	// QImode move
	R2=(-10)	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
	R1=[_num+1]	// QImode move
	R2=1	// QImode move
	[_num+1]=R1+R2  //addqi3_Qrr
L42:
.debug
	.dw '.stabn 0x44,0,122,',0,0
	.dd LM59-_main
	.dw 0x0d,0x0a
.code
LM59:
	R1=[_num+1]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L43	//QImode LE
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM60-_main
	.dw 0x0d,0x0a
.code
LM60:
	R1=0	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,125,',0,0
	.dd LM61-_main
	.dw 0x0d,0x0a
.code
LM61:
	R1=[_num]	// QImode move
	R2=1	// QImode move
	[_num]=R1+R2  //addqi3_Qrr
L43:
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM62-_main
	.dw 0x0d,0x0a
.code
LM62:
	R1=[_num]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L41	//QImode LE
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM63-_main
	.dw 0x0d,0x0a
.code
LM63:
	R1=0	// QImode move
	[_num]=R1	// QImode move
L44:
L41:
.debug
	.dw '.stabn 0x44,0,130,',0,0
	.dd LM64-_main
	.dw 0x0d,0x0a
.code
LM64:
	R1=[BP]	// QImode move
	CMP R1,512	// QImode compare
	NSJNZ L45	//QImode NE
.debug
	.dw '.stabn 0x44,0,132,',0,0
	.dd LM65-_main
	.dw 0x0d,0x0a
.code
LM65:
	R1=[_num+2]	// QImode move
	R2=2	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,133,',0,0
	.dd LM66-_main
	.dw 0x0d,0x0a
.code
LM66:
	R1=[_num+2]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L46	//QImode LE
.debug
	.dw '.stabn 0x44,0,135,',0,0
	.dd LM67-_main
	.dw 0x0d,0x0a
.code
LM67:
	R1=[_num+2]	// QImode move
	R2=(-10)	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM68-_main
	.dw 0x0d,0x0a
.code
LM68:
	R1=[_num+1]	// QImode move
	R2=1	// QImode move
	[_num+1]=R1+R2  //addqi3_Qrr
L46:
.debug
	.dw '.stabn 0x44,0,138,',0,0
	.dd LM69-_main
	.dw 0x0d,0x0a
.code
LM69:
	R1=[_num+1]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L47	//QImode LE
.debug
	.dw '.stabn 0x44,0,140,',0,0
	.dd LM70-_main
	.dw 0x0d,0x0a
.code
LM70:
	R1=0	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,141,',0,0
	.dd LM71-_main
	.dw 0x0d,0x0a
.code
LM71:
	R1=[_num]	// QImode move
	R2=1	// QImode move
	[_num]=R1+R2  //addqi3_Qrr
L47:
.debug
	.dw '.stabn 0x44,0,143,',0,0
	.dd LM72-_main
	.dw 0x0d,0x0a
.code
LM72:
	R1=[_num]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L45	//QImode LE
.debug
	.dw '.stabn 0x44,0,144,',0,0
	.dd LM73-_main
	.dw 0x0d,0x0a
.code
LM73:
	R1=0	// QImode move
	[_num]=R1	// QImode move
L48:
L45:
.debug
	.dw '.stabn 0x44,0,146,',0,0
	.dd LM74-_main
	.dw 0x0d,0x0a
.code
LM74:
	R1=[BP]	// QImode move
	CMP R1,1024	// QImode compare
	NSJNZ L49	//QImode NE
.debug
	.dw '.stabn 0x44,0,148,',0,0
	.dd LM75-_main
	.dw 0x0d,0x0a
.code
LM75:
	R1=[_num+2]	// QImode move
	R2=3	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,149,',0,0
	.dd LM76-_main
	.dw 0x0d,0x0a
.code
LM76:
	R1=[_num+2]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L50	//QImode LE
.debug
	.dw '.stabn 0x44,0,151,',0,0
	.dd LM77-_main
	.dw 0x0d,0x0a
.code
LM77:
	R1=[_num+2]	// QImode move
	R2=(-10)	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,152,',0,0
	.dd LM78-_main
	.dw 0x0d,0x0a
.code
LM78:
	R1=[_num+1]	// QImode move
	R2=1	// QImode move
	[_num+1]=R1+R2  //addqi3_Qrr
L50:
.debug
	.dw '.stabn 0x44,0,154,',0,0
	.dd LM79-_main
	.dw 0x0d,0x0a
.code
LM79:
	R1=[_num+1]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L51	//QImode LE
.debug
	.dw '.stabn 0x44,0,156,',0,0
	.dd LM80-_main
	.dw 0x0d,0x0a
.code
LM80:
	R1=0	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,157,',0,0
	.dd LM81-_main
	.dw 0x0d,0x0a
.code
LM81:
	R1=[_num]	// QImode move
	R2=1	// QImode move
	[_num]=R1+R2  //addqi3_Qrr
L51:
.debug
	.dw '.stabn 0x44,0,159,',0,0
	.dd LM82-_main
	.dw 0x0d,0x0a
.code
LM82:
	R1=[_num]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L49	//QImode LE
.debug
	.dw '.stabn 0x44,0,160,',0,0
	.dd LM83-_main
	.dw 0x0d,0x0a
.code
LM83:
	R1=0	// QImode move
	[_num]=R1	// QImode move
L52:
L49:
.debug
	.dw '.stabn 0x44,0,162,',0,0
	.dd LM84-_main
	.dw 0x0d,0x0a
.code
LM84:
	R1=[BP]	// QImode move
	CMP R1,8192	// QImode compare
	NSJNZ L53	//QImode NE
.debug
	.dw '.stabn 0x44,0,164,',0,0
	.dd LM85-_main
	.dw 0x0d,0x0a
.code
LM85:
	R1=[_num+5]	// QImode move
	R2=1	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,165,',0,0
	.dd LM86-_main
	.dw 0x0d,0x0a
.code
LM86:
	R1=[_num+5]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L54	//QImode LE
.debug
	.dw '.stabn 0x44,0,167,',0,0
	.dd LM87-_main
	.dw 0x0d,0x0a
.code
LM87:
	R1=[_num+5]	// QImode move
	R2=(-10)	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,168,',0,0
	.dd LM88-_main
	.dw 0x0d,0x0a
.code
LM88:
	R1=[_num+4]	// QImode move
	R2=1	// QImode move
	[_num+4]=R1+R2  //addqi3_Qrr
L54:
.debug
	.dw '.stabn 0x44,0,170,',0,0
	.dd LM89-_main
	.dw 0x0d,0x0a
.code
LM89:
	R1=[_num+4]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L55	//QImode LE
.debug
	.dw '.stabn 0x44,0,172,',0,0
	.dd LM90-_main
	.dw 0x0d,0x0a
.code
LM90:
	R1=0	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,173,',0,0
	.dd LM91-_main
	.dw 0x0d,0x0a
.code
LM91:
	R1=[_num+3]	// QImode move
	R2=1	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
L55:
.debug
	.dw '.stabn 0x44,0,175,',0,0
	.dd LM92-_main
	.dw 0x0d,0x0a
.code
LM92:
	R1=[_num+3]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L53	//QImode LE
.debug
	.dw '.stabn 0x44,0,176,',0,0
	.dd LM93-_main
	.dw 0x0d,0x0a
.code
LM93:
	R1=0	// QImode move
	[_num+3]=R1	// QImode move
L56:
L53:
.debug
	.dw '.stabn 0x44,0,178,',0,0
	.dd LM94-_main
	.dw 0x0d,0x0a
.code
LM94:
	R1=[BP]	// QImode move
	CMP R1,16384	// QImode compare
	NSJNZ L57	//QImode NE
.debug
	.dw '.stabn 0x44,0,180,',0,0
	.dd LM95-_main
	.dw 0x0d,0x0a
.code
LM95:
	R1=[_num+5]	// QImode move
	R2=2	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,181,',0,0
	.dd LM96-_main
	.dw 0x0d,0x0a
.code
LM96:
	R1=[_num+5]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L58	//QImode LE
.debug
	.dw '.stabn 0x44,0,183,',0,0
	.dd LM97-_main
	.dw 0x0d,0x0a
.code
LM97:
	R1=[_num+5]	// QImode move
	R2=(-10)	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,184,',0,0
	.dd LM98-_main
	.dw 0x0d,0x0a
.code
LM98:
	R1=[_num+4]	// QImode move
	R2=1	// QImode move
	[_num+4]=R1+R2  //addqi3_Qrr
L58:
.debug
	.dw '.stabn 0x44,0,186,',0,0
	.dd LM99-_main
	.dw 0x0d,0x0a
.code
LM99:
	R1=[_num+4]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L59	//QImode LE
.debug
	.dw '.stabn 0x44,0,188,',0,0
	.dd LM100-_main
	.dw 0x0d,0x0a
.code
LM100:
	R1=0	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,189,',0,0
	.dd LM101-_main
	.dw 0x0d,0x0a
.code
LM101:
	R1=[_num+3]	// QImode move
	R2=1	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
L59:
.debug
	.dw '.stabn 0x44,0,191,',0,0
	.dd LM102-_main
	.dw 0x0d,0x0a
.code
LM102:
	R1=[_num+3]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L57	//QImode LE
.debug
	.dw '.stabn 0x44,0,192,',0,0
	.dd LM103-_main
	.dw 0x0d,0x0a
.code
LM103:
	R1=0	// QImode move
	[_num+3]=R1	// QImode move
L60:
L57:
.debug
	.dw '.stabn 0x44,0,194,',0,0
	.dd LM104-_main
	.dw 0x0d,0x0a
.code
LM104:
	R1=[BP]	// QImode move
	CMP R1,(-32768)	// QImode compare
	NSJNZ L61	//QImode NE
.debug
	.dw '.stabn 0x44,0,196,',0,0
	.dd LM105-_main
	.dw 0x0d,0x0a
.code
LM105:
	R1=[_num+5]	// QImode move
	R2=3	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,197,',0,0
	.dd LM106-_main
	.dw 0x0d,0x0a
.code
LM106:
	R1=[_num+5]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L62	//QImode LE
.debug
	.dw '.stabn 0x44,0,199,',0,0
	.dd LM107-_main
	.dw 0x0d,0x0a
.code
LM107:
	R1=[_num+5]	// QImode move
	R2=(-10)	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,200,',0,0
	.dd LM108-_main
	.dw 0x0d,0x0a
.code
LM108:
	R1=[_num+4]	// QImode move
	R2=1	// QImode move
	[_num+4]=R1+R2  //addqi3_Qrr
L62:
.debug
	.dw '.stabn 0x44,0,202,',0,0
	.dd LM109-_main
	.dw 0x0d,0x0a
.code
LM109:
	R1=[_num+4]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L63	//QImode LE
.debug
	.dw '.stabn 0x44,0,204,',0,0
	.dd LM110-_main
	.dw 0x0d,0x0a
.code
LM110:
	R1=0	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,205,',0,0
	.dd LM111-_main
	.dw 0x0d,0x0a
.code
LM111:
	R1=[_num+3]	// QImode move
	R2=1	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
L63:
.debug
	.dw '.stabn 0x44,0,207,',0,0
	.dd LM112-_main
	.dw 0x0d,0x0a
.code
LM112:
	R1=[_num+3]	// QImode move
	CMP R1,9	// QImode compare
	NSJNG L61	//QImode LE
.debug
	.dw '.stabn 0x44,0,208,',0,0
	.dd LM113-_main
	.dw 0x0d,0x0a
.code
LM113:
	R1=0	// QImode move
	[_num+3]=R1	// QImode move
L64:
L61:
.debug
	.dw '.stabn 0x44,0,210,',0,0
	.dd LM114-_main
	.dw 0x0d,0x0a
.code
LM114:
	PC=L65	// jump
L40:
.debug
	.dw '.stabn 0x44,0,214,',0,0
	.dd LM115-_main
	.dw 0x0d,0x0a
.code
LM115:
	R1=[BP]	// QImode move
	CMP R1,256	// QImode compare
	NSJNZ L66	//QImode NE
.debug
	.dw '.stabn 0x44,0,216,',0,0
	.dd LM116-_main
	.dw 0x0d,0x0a
.code
LM116:
	R1=[_num+2]	// QImode move
	R2=(-1)	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,217,',0,0
	.dd LM117-_main
	.dw 0x0d,0x0a
.code
LM117:
	R1=[_num+2]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L67	//QImode GE
.debug
	.dw '.stabn 0x44,0,219,',0,0
	.dd LM118-_main
	.dw 0x0d,0x0a
.code
LM118:
	R1=[_num+2]	// QImode move
	R2=10	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,220,',0,0
	.dd LM119-_main
	.dw 0x0d,0x0a
.code
LM119:
	R1=[_num+1]	// QImode move
	R2=(-1)	// QImode move
	[_num+1]=R1+R2  //addqi3_Qrr
L67:
.debug
	.dw '.stabn 0x44,0,222,',0,0
	.dd LM120-_main
	.dw 0x0d,0x0a
.code
LM120:
	R1=[_num+1]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L68	//QImode GE
.debug
	.dw '.stabn 0x44,0,224,',0,0
	.dd LM121-_main
	.dw 0x0d,0x0a
.code
LM121:
	R1=9	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,225,',0,0
	.dd LM122-_main
	.dw 0x0d,0x0a
.code
LM122:
	R1=[_num]	// QImode move
	R2=(-1)	// QImode move
	[_num]=R1+R2  //addqi3_Qrr
L68:
.debug
	.dw '.stabn 0x44,0,227,',0,0
	.dd LM123-_main
	.dw 0x0d,0x0a
.code
LM123:
	R1=[_num]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L66	//QImode GE
.debug
	.dw '.stabn 0x44,0,228,',0,0
	.dd LM124-_main
	.dw 0x0d,0x0a
.code
LM124:
	R1=9	// QImode move
	[_num]=R1	// QImode move
L69:
L66:
.debug
	.dw '.stabn 0x44,0,230,',0,0
	.dd LM125-_main
	.dw 0x0d,0x0a
.code
LM125:
	R1=[BP]	// QImode move
	CMP R1,512	// QImode compare
	NSJNZ L70	//QImode NE
.debug
	.dw '.stabn 0x44,0,232,',0,0
	.dd LM126-_main
	.dw 0x0d,0x0a
.code
LM126:
	R1=[_num+2]	// QImode move
	R2=(-2)	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,233,',0,0
	.dd LM127-_main
	.dw 0x0d,0x0a
.code
LM127:
	R1=[_num+2]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L71	//QImode GE
.debug
	.dw '.stabn 0x44,0,235,',0,0
	.dd LM128-_main
	.dw 0x0d,0x0a
.code
LM128:
	R1=[_num+2]	// QImode move
	R2=10	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,236,',0,0
	.dd LM129-_main
	.dw 0x0d,0x0a
.code
LM129:
	R1=[_num+1]	// QImode move
	R2=(-1)	// QImode move
	[_num+1]=R1+R2  //addqi3_Qrr
L71:
.debug
	.dw '.stabn 0x44,0,238,',0,0
	.dd LM130-_main
	.dw 0x0d,0x0a
.code
LM130:
	R1=[_num+1]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L72	//QImode GE
.debug
	.dw '.stabn 0x44,0,240,',0,0
	.dd LM131-_main
	.dw 0x0d,0x0a
.code
LM131:
	R1=9	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,241,',0,0
	.dd LM132-_main
	.dw 0x0d,0x0a
.code
LM132:
	R1=[_num]	// QImode move
	R2=(-1)	// QImode move
	[_num]=R1+R2  //addqi3_Qrr
L72:
.debug
	.dw '.stabn 0x44,0,243,',0,0
	.dd LM133-_main
	.dw 0x0d,0x0a
.code
LM133:
	R1=[_num]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L70	//QImode GE
.debug
	.dw '.stabn 0x44,0,244,',0,0
	.dd LM134-_main
	.dw 0x0d,0x0a
.code
LM134:
	R1=9	// QImode move
	[_num]=R1	// QImode move
L73:
L70:
.debug
	.dw '.stabn 0x44,0,246,',0,0
	.dd LM135-_main
	.dw 0x0d,0x0a
.code
LM135:
	R1=[BP]	// QImode move
	CMP R1,1024	// QImode compare
	NSJNZ L74	//QImode NE
.debug
	.dw '.stabn 0x44,0,248,',0,0
	.dd LM136-_main
	.dw 0x0d,0x0a
.code
LM136:
	R1=[_num+2]	// QImode move
	R2=(-3)	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,249,',0,0
	.dd LM137-_main
	.dw 0x0d,0x0a
.code
LM137:
	R1=[_num+2]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L75	//QImode GE
.debug
	.dw '.stabn 0x44,0,251,',0,0
	.dd LM138-_main
	.dw 0x0d,0x0a
.code
LM138:
	R1=[_num+2]	// QImode move
	R2=10	// QImode move
	[_num+2]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,252,',0,0
	.dd LM139-_main
	.dw 0x0d,0x0a
.code
LM139:
	R1=[_num+1]	// QImode move
	R2=(-1)	// QImode move
	[_num+1]=R1+R2  //addqi3_Qrr
L75:
.debug
	.dw '.stabn 0x44,0,254,',0,0
	.dd LM140-_main
	.dw 0x0d,0x0a
.code
LM140:
	R1=[_num+1]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L76	//QImode GE
.debug
	.dw '.stabn 0x44,0,256,',0,0
	.dd LM141-_main
	.dw 0x0d,0x0a
.code
LM141:
	R1=9	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,257,',0,0
	.dd LM142-_main
	.dw 0x0d,0x0a
.code
LM142:
	R1=[_num]	// QImode move
	R2=(-1)	// QImode move
	[_num]=R1+R2  //addqi3_Qrr
L76:
.debug
	.dw '.stabn 0x44,0,259,',0,0
	.dd LM143-_main
	.dw 0x0d,0x0a
.code
LM143:
	R1=[_num]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L74	//QImode GE
.debug
	.dw '.stabn 0x44,0,260,',0,0
	.dd LM144-_main
	.dw 0x0d,0x0a
.code
LM144:
	R1=9	// QImode move
	[_num]=R1	// QImode move
L77:
L74:
.debug
	.dw '.stabn 0x44,0,262,',0,0
	.dd LM145-_main
	.dw 0x0d,0x0a
.code
LM145:
	R1=[BP]	// QImode move
	CMP R1,8192	// QImode compare
	NSJNZ L78	//QImode NE
.debug
	.dw '.stabn 0x44,0,264,',0,0
	.dd LM146-_main
	.dw 0x0d,0x0a
.code
LM146:
	R1=[_num+5]	// QImode move
	R2=(-1)	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,265,',0,0
	.dd LM147-_main
	.dw 0x0d,0x0a
.code
LM147:
	R1=[_num+5]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L79	//QImode GE
.debug
	.dw '.stabn 0x44,0,267,',0,0
	.dd LM148-_main
	.dw 0x0d,0x0a
.code
LM148:
	R1=[_num+5]	// QImode move
	R2=10	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,268,',0,0
	.dd LM149-_main
	.dw 0x0d,0x0a
.code
LM149:
	R1=[_num+4]	// QImode move
	R2=(-1)	// QImode move
	[_num+4]=R1+R2  //addqi3_Qrr
L79:
.debug
	.dw '.stabn 0x44,0,270,',0,0
	.dd LM150-_main
	.dw 0x0d,0x0a
.code
LM150:
	R1=[_num+4]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L80	//QImode GE
.debug
	.dw '.stabn 0x44,0,272,',0,0
	.dd LM151-_main
	.dw 0x0d,0x0a
.code
LM151:
	R1=9	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,273,',0,0
	.dd LM152-_main
	.dw 0x0d,0x0a
.code
LM152:
	R1=[_num+3]	// QImode move
	R2=(-1)	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
L80:
.debug
	.dw '.stabn 0x44,0,275,',0,0
	.dd LM153-_main
	.dw 0x0d,0x0a
.code
LM153:
	R1=[_num+3]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L78	//QImode GE
.debug
	.dw '.stabn 0x44,0,276,',0,0
	.dd LM154-_main
	.dw 0x0d,0x0a
.code
LM154:
	R1=9	// QImode move
	[_num+3]=R1	// QImode move
L81:
L78:
.debug
	.dw '.stabn 0x44,0,278,',0,0
	.dd LM155-_main
	.dw 0x0d,0x0a
.code
LM155:
	R1=[BP]	// QImode move
	CMP R1,16384	// QImode compare
	NSJNZ L82	//QImode NE
.debug
	.dw '.stabn 0x44,0,280,',0,0
	.dd LM156-_main
	.dw 0x0d,0x0a
.code
LM156:
	R1=[_num+5]	// QImode move
	R2=(-2)	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,281,',0,0
	.dd LM157-_main
	.dw 0x0d,0x0a
.code
LM157:
	R1=[_num+5]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L83	//QImode GE
.debug
	.dw '.stabn 0x44,0,283,',0,0
	.dd LM158-_main
	.dw 0x0d,0x0a
.code
LM158:
	R1=[_num+5]	// QImode move
	R2=10	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,284,',0,0
	.dd LM159-_main
	.dw 0x0d,0x0a
.code
LM159:
	R1=[_num+4]	// QImode move
	R2=(-1)	// QImode move
	[_num+4]=R1+R2  //addqi3_Qrr
L83:
.debug
	.dw '.stabn 0x44,0,286,',0,0
	.dd LM160-_main
	.dw 0x0d,0x0a
.code
LM160:
	R1=[_num+4]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L84	//QImode GE
.debug
	.dw '.stabn 0x44,0,288,',0,0
	.dd LM161-_main
	.dw 0x0d,0x0a
.code
LM161:
	R1=9	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,289,',0,0
	.dd LM162-_main
	.dw 0x0d,0x0a
.code
LM162:
	R1=[_num+3]	// QImode move
	R2=1	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
L84:
.debug
	.dw '.stabn 0x44,0,291,',0,0
	.dd LM163-_main
	.dw 0x0d,0x0a
.code
LM163:
	R1=[_num+3]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L82	//QImode GE
.debug
	.dw '.stabn 0x44,0,292,',0,0
	.dd LM164-_main
	.dw 0x0d,0x0a
.code
LM164:
	R1=9	// QImode move
	[_num+3]=R1	// QImode move
L85:
L82:
.debug
	.dw '.stabn 0x44,0,294,',0,0
	.dd LM165-_main
	.dw 0x0d,0x0a
.code
LM165:
	R1=[BP]	// QImode move
	CMP R1,(-32768)	// QImode compare
	NSJNZ L65	//QImode NE
.debug
	.dw '.stabn 0x44,0,296,',0,0
	.dd LM166-_main
	.dw 0x0d,0x0a
.code
LM166:
	R1=[_num+5]	// QImode move
	R2=(-3)	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,297,',0,0
	.dd LM167-_main
	.dw 0x0d,0x0a
.code
LM167:
	R1=[_num+5]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L87	//QImode GE
.debug
	.dw '.stabn 0x44,0,299,',0,0
	.dd LM168-_main
	.dw 0x0d,0x0a
.code
LM168:
	R1=[_num+5]	// QImode move
	R2=10	// QImode move
	[_num+5]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,300,',0,0
	.dd LM169-_main
	.dw 0x0d,0x0a
.code
LM169:
	R1=[_num+4]	// QImode move
	R2=(-1)	// QImode move
	[_num+4]=R1+R2  //addqi3_Qrr
L87:
.debug
	.dw '.stabn 0x44,0,302,',0,0
	.dd LM170-_main
	.dw 0x0d,0x0a
.code
LM170:
	R1=[_num+4]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L88	//QImode GE
.debug
	.dw '.stabn 0x44,0,304,',0,0
	.dd LM171-_main
	.dw 0x0d,0x0a
.code
LM171:
	R1=9	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,305,',0,0
	.dd LM172-_main
	.dw 0x0d,0x0a
.code
LM172:
	R1=[_num+3]	// QImode move
	R2=(-1)	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
L88:
.debug
	.dw '.stabn 0x44,0,307,',0,0
	.dd LM173-_main
	.dw 0x0d,0x0a
.code
LM173:
	R1=[_num+3]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L65	//QImode GE
.debug
	.dw '.stabn 0x44,0,308,',0,0
	.dd LM174-_main
	.dw 0x0d,0x0a
.code
LM174:
	R1=9	// QImode move
	[_num+3]=R1	// QImode move
L89:
L86:
L65:
.debug
	.dw '.stabn 0x44,0,311,',0,0
	.dd LM175-_main
	.dw 0x0d,0x0a
.code
LM175:
L90:
	PC=L92	// jump
	PC=L91	// jump
L92:
.debug
	.dw '.stabn 0x44,0,313,',0,0
	.dd LM176-_main
	.dw 0x0d,0x0a
.code
LM176:
	R1=BP	// QImode move
	R2=BP+4
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L93:
	R1=BP	// QImode move
	R2=BP+4
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L96	//QImode LE
	PC=L94	// jump
L96:
.debug
	.dw '.stabn 0x44,0,314,',0,0
	.dd LM177-_main
	.dw 0x0d,0x0a
.code
LM177:
	R1=BP	// QImode move
	R2=BP+4
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R1=R3+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+4
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,313,',0,0
	.dd LM178-_main
	.dw 0x0d,0x0a
.code
LM178:
L95:
	R1=BP	// QImode move
	R2=BP+4
	R3=BP	// QImode move
	R1=BP+4
	R2=BP	// QImode move
	R3=BP+4
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L93	// jump
L94:
.debug
	.dw '.stabn 0x44,0,315,',0,0
	.dd LM179-_main
	.dw 0x0d,0x0a
.code
LM179:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L97	//QImode EQ
.debug
	.dw '.stabn 0x44,0,319,',0,0
	.dd LM180-_main
	.dw 0x0d,0x0a
.code
LM180:
	PC=L91	// jump
L97:
.debug
	.dw '.stabn 0x44,0,321,',0,0
	.dd LM181-_main
	.dw 0x0d,0x0a
.code
LM181:
	PC=L90	// jump
L91:
.debug
	.dw '.stabn 0x44,0,322,',0,0
	.dd LM182-_main
	.dw 0x0d,0x0a
.code
LM182:
	PC=L35	// jump
L36:
.debug
	.dw '.stabn 0x44,0,323,',0,0
	.dd LM183-_main
	.dw 0x0d,0x0a
.code
LM183:
LBE3:
.debug
	.dw '.stabn 0x44,0,323,',0,0
	.dd LM184-_main
	.dw 0x0d,0x0a
.code
LM184:
L34:

	SP+=7
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "KeyValue:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Time:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Key:4",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "flag:4",128,0,0,3',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:1",128,0,0,4',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "temp:1",128,0,0,5',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME3-_main
	.dw 0x0d,0x0a
.code
LME3:
.iram
.public _num
_num:
	.dw 6 dup(0)
.external __lshiu1
	.end
