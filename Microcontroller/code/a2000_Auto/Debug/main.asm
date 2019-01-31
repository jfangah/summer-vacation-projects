// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccXBYU18.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/3140102328/ÐÞ¸Ä/a2000_Auto/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/3140102328/Ð/336¸/304/a2000_Auto/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
	.dw '.stabn 0x44,0,61,',0,0
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
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM2-_LedDispDig
	.dw 0x0d,0x0a
.code
LM2:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,64,',0,0
	.dd LM3-_LedDispDig
	.dw 0x0d,0x0a
.code
LM3:
	R1=[28679]	// QImode move
	R2=R1|16383
	[28679]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,65,',0,0
	.dd LM4-_LedDispDig
	.dw 0x0d,0x0a
.code
LM4:
	R1=[28680]	// QImode move
	R2=R1|16383
	[28680]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,66,',0,0
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
	.dw '.stabn 0x44,0,68,',0,0
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
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM7-_LedDispDig
	.dw 0x0d,0x0a
.code
LM7:
.debug
	.dw '.stabn 0x44,0,69,',0,0
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
	.dw '.stabn 0x44,0,72,',0,0
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
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM10-_GetKey
	.dw 0x0d,0x0a
.code
LM10:
LBB2:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM11-_GetKey
	.dw 0x0d,0x0a
.code
LM11:
	R1=[28674]	// QImode move
	R2=R1&255
	[28674]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,76,',0,0
	.dd LM12-_GetKey
	.dw 0x0d,0x0a
.code
LM12:
	R1=[28675]	// QImode move
	R2=R1&255
	[28675]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM13-_GetKey
	.dw 0x0d,0x0a
.code
LM13:
	R1=[28673]	// QImode move
	R2=R1|(-256)
	[28673]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,79,',0,0
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
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM15-_GetKey
	.dw 0x0d,0x0a
.code
LM15:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM16-_GetKey
	.dw 0x0d,0x0a
.code
LM16:
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
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM17-_GetKey
	.dw 0x0d,0x0a
.code
LM17:
	R1=BP	// QImode move
	R2=BP+1
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L7:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,6	// QImode compare
	NSJNA L10	//QImode LEU
	PC=L8	// jump
L10:
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM18-_GetKey
	.dw 0x0d,0x0a
.code
LM18:
	R1=BP	// QImode move
	R2=BP+1
	R1=R2	// QImode move
	R3=[R1]	// QImode move
	R1=R3+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM19-_GetKey
	.dw 0x0d,0x0a
.code
LM19:
L9:
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
	PC=L7	// jump
L8:
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM20-_GetKey
	.dw 0x0d,0x0a
.code
LM20:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,2000	// QImode compare
	NSJNA L11	//QImode LEU
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM21-_GetKey
	.dw 0x0d,0x0a
.code
LM21:
	PC=L5	// jump
L11:
.debug
	.dw '.stabn 0x44,0,89,',0,0
	.dd LM22-_GetKey
	.dw 0x0d,0x0a
.code
LM22:
	PC=L4	// jump
L5:
.debug
	.dw '.stabn 0x44,0,90,',0,0
	.dd LM23-_GetKey
	.dw 0x0d,0x0a
.code
LM23:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	R4=R1^(-256)
	[BP]=R4	// QImode move
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM24-_GetKey
	.dw 0x0d,0x0a
.code
LM24:
L12:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJNZ L14	//QImode NE
	PC=L13	// jump
L14:
.debug
	.dw '.stabn 0x44,0,94,',0,0
	.dd LM25-_GetKey
	.dw 0x0d,0x0a
.code
LM25:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM26-_GetKey
	.dw 0x0d,0x0a
.code
LM26:
	R1=BP	// QImode move
	R2=BP+1
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L15:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,6	// QImode compare
	NSJNA L18	//QImode LEU
	PC=L16	// jump
L18:
.debug
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM27-_GetKey
	.dw 0x0d,0x0a
.code
LM27:
	R1=BP	// QImode move
	R2=BP+1
	R1=R2	// QImode move
	R3=[R1]	// QImode move
	R1=R3+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM28-_GetKey
	.dw 0x0d,0x0a
.code
LM28:
L17:
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
	PC=L15	// jump
L16:
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM29-_GetKey
	.dw 0x0d,0x0a
.code
LM29:
	PC=L12	// jump
L13:
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM30-_GetKey
	.dw 0x0d,0x0a
.code
LM30:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L3	// jump
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM31-_GetKey
	.dw 0x0d,0x0a
.code
LM31:
LBE2:
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM32-_GetKey
	.dw 0x0d,0x0a
.code
LM32:
L3:

	SP+=4
	POP BP from [SP]
	RETF
	.endp	// end of GetKey

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB2-_GetKey
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "KeyValue:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "temp:4",128,0,0,2',0x0d,0x0a
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
	.dw '.stabs "GetKey1:F4",36,0,0,',0,0,offset _GetKey1,seg _GetKey1,0x0d,0x0a
.CODE
.public _GetKey1
_GetKey1:	.proc
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM33-_GetKey1
	.dw 0x0d,0x0a
.code
LM33:
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
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM34-_GetKey1
	.dw 0x0d,0x0a
.code
LM34:
LBB3:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM35-_GetKey1
	.dw 0x0d,0x0a
.code
LM35:
	R1=[28674]	// QImode move
	R2=R1&255
	[28674]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM36-_GetKey1
	.dw 0x0d,0x0a
.code
LM36:
	R1=[28675]	// QImode move
	R2=R1&255
	[28675]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM37-_GetKey1
	.dw 0x0d,0x0a
.code
LM37:
	R1=[28673]	// QImode move
	R2=R1|(-256)
	[28673]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM38-_GetKey1
	.dw 0x0d,0x0a
.code
LM38:
L25:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L27	//QImode EQ
	PC=L26	// jump
L27:
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM39-_GetKey1
	.dw 0x0d,0x0a
.code
LM39:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM40-_GetKey1
	.dw 0x0d,0x0a
.code
LM40:
	R1=BP	// QImode move
	R2=BP+1
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L28:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNA L31	//QImode LEU
	PC=L29	// jump
L31:
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM41-_GetKey1
	.dw 0x0d,0x0a
.code
LM41:
	R1=BP	// QImode move
	R2=BP+1
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
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM42-_GetKey1
	.dw 0x0d,0x0a
.code
LM42:
L30:
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
	PC=L28	// jump
L29:
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM43-_GetKey1
	.dw 0x0d,0x0a
.code
LM43:
	PC=L25	// jump
L26:
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM44-_GetKey1
	.dw 0x0d,0x0a
.code
LM44:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	R3=R1^(-256)
	[BP]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,121,',0,0
	.dd LM45-_GetKey1
	.dw 0x0d,0x0a
.code
LM45:
L32:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJNZ L34	//QImode NE
	PC=L33	// jump
L34:
.debug
	.dw '.stabn 0x44,0,123,',0,0
	.dd LM46-_GetKey1
	.dw 0x0d,0x0a
.code
LM46:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM47-_GetKey1
	.dw 0x0d,0x0a
.code
LM47:
	R1=BP	// QImode move
	R2=BP+1
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L35:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNA L38	//QImode LEU
	PC=L36	// jump
L38:
.debug
	.dw '.stabn 0x44,0,126,',0,0
	.dd LM48-_GetKey1
	.dw 0x0d,0x0a
.code
LM48:
	R1=BP	// QImode move
	R2=BP+1
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
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM49-_GetKey1
	.dw 0x0d,0x0a
.code
LM49:
L37:
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
	PC=L35	// jump
L36:
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM50-_GetKey1
	.dw 0x0d,0x0a
.code
LM50:
	PC=L32	// jump
L33:
.debug
	.dw '.stabn 0x44,0,129,',0,0
	.dd LM51-_GetKey1
	.dw 0x0d,0x0a
.code
LM51:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L24	// jump
.debug
	.dw '.stabn 0x44,0,130,',0,0
	.dd LM52-_GetKey1
	.dw 0x0d,0x0a
.code
LM52:
LBE3:
.debug
	.dw '.stabn 0x44,0,130,',0,0
	.dd LM53-_GetKey1
	.dw 0x0d,0x0a
.code
LM53:
L24:

	SP+=4
	POP BP from [SP]
	RETF
	.endp	// end of GetKey1

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_GetKey1
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "KeyValue:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "temp:4",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_GetKey1
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME3-_GetKey1
	.dw 0x0d,0x0a
.code
LME3:
.code
.debug
	.dw '.stabs "main:F1",36,0,0,',0,0,offset _main,seg _main,0x0d,0x0a
.CODE
.public _main
_main:	.proc
.debug
	.dw '.stabn 0x44,0,134,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
	// total=11, vars=11
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,11',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=11
	BP=SP+1

	R1=BP+14
	[BP+9]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,135,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
LBB4:
	R1=0	// QImode move
	[BP]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+2
	R1=7	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+4
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+5
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	R1=BP	// QImode move
	R2=BP+7
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,137,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
	R1=1	// QImode move
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,138,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
	R1=BP	// QImode move
	R2=BP+6
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,139,',0,0
	.dd LM59-_main
	.dw 0x0d,0x0a
.code
LM59:
	R1=255	// QImode move
	[28674]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,140,',0,0
	.dd LM60-_main
	.dw 0x0d,0x0a
.code
LM60:
	R1=255	// QImode move
	[28675]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,141,',0,0
	.dd LM61-_main
	.dw 0x0d,0x0a
.code
LM61:
	R1=(-256)	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,142,',0,0
	.dd LM62-_main
	.dw 0x0d,0x0a
.code
LM62:
	R1=BP	// QImode move
	R2=BP+6
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,1	// QImode compare
	NSJNZ L44	//QImode NE
.debug
	.dw '.stabn 0x44,0,144,',0,0
	.dd LM63-_main
	.dw 0x0d,0x0a
.code
LM63:
	R1=BP	// QImode move
	R2=BP+6
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Initial	// call with return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,145,',0,0
	.dd LM64-_main
	.dw 0x0d,0x0a
.code
LM64:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,148,',0,0
	.dd LM65-_main
	.dw 0x0d,0x0a
.code
LM65:
L45:
	PC=L47	// jump
	PC=L44	// jump
L47:
.debug
	.dw '.stabn 0x44,0,149,',0,0
	.dd LM66-_main
	.dw 0x0d,0x0a
.code
LM66:
LBB5:
L48:
	CALL _SACM_A2000_Status	// call with return value
	R2=R1&1
	CMP R2,0	// QImode test
	NSJNZ L50	//QImode NE
	PC=L49	// jump
L50:
.debug
	.dw '.stabn 0x44,0,151,',0,0
	.dd LM67-_main
	.dw 0x0d,0x0a
.code
LM67:
	CALL _SACM_A2000_ServiceLoop	// call with return value
.debug
	.dw '.stabn 0x44,0,152,',0,0
	.dd LM68-_main
	.dw 0x0d,0x0a
.code
LM68:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L51	//QImode EQ
.debug
	.dw '.stabn 0x44,0,154,',0,0
	.dd LM69-_main
	.dw 0x0d,0x0a
.code
LM69:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,155,',0,0
	.dd LM70-_main
	.dw 0x0d,0x0a
.code
LM70:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L52:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,1999	// QImode compare
	NSJNG L55	//QImode LE
	PC=L53	// jump
L55:
.debug
	.dw '.stabn 0x44,0,156,',0,0
	.dd LM71-_main
	.dw 0x0d,0x0a
.code
LM71:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,155,',0,0
	.dd LM72-_main
	.dw 0x0d,0x0a
.code
LM72:
L54:
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
	PC=L52	// jump
L53:
.debug
	.dw '.stabn 0x44,0,157,',0,0
	.dd LM73-_main
	.dw 0x0d,0x0a
.code
LM73:
	R1=BP	// QImode move
	R3=BP+8
	[BP+10]=R3	// QImode move
	CALL _GetKey	// call with return value
	R4=[BP+10]	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,158,',0,0
	.dd LM74-_main
	.dw 0x0d,0x0a
.code
LM74:
	R1=BP	// QImode move
	R2=BP+8
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,256	// QImode compare
	NSJNZ L56	//QImode NE
.debug
	.dw '.stabn 0x44,0,160,',0,0
	.dd LM75-_main
	.dw 0x0d,0x0a
.code
LM75:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,161,',0,0
	.dd LM76-_main
	.dw 0x0d,0x0a
.code
LM76:
	R1=1	// QImode move
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,162,',0,0
	.dd LM77-_main
	.dw 0x0d,0x0a
.code
LM77:
	R1=BP	// QImode move
	R2=BP+7
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,163,',0,0
	.dd LM78-_main
	.dw 0x0d,0x0a
.code
LM78:
	PC=L51	// jump
L56:
.debug
	.dw '.stabn 0x44,0,164,',0,0
	.dd LM79-_main
	.dw 0x0d,0x0a
.code
LM79:
	R1=BP	// QImode move
	R2=BP+8
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,512	// QImode compare
	NSJNZ L58	//QImode NE
.debug
	.dw '.stabn 0x44,0,166,',0,0
	.dd LM80-_main
	.dw 0x0d,0x0a
.code
LM80:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,167,',0,0
	.dd LM81-_main
	.dw 0x0d,0x0a
.code
LM81:
	R1=2	// QImode move
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,168,',0,0
	.dd LM82-_main
	.dw 0x0d,0x0a
.code
LM82:
	R1=BP	// QImode move
	R2=BP+7
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,169,',0,0
	.dd LM83-_main
	.dw 0x0d,0x0a
.code
LM83:
	PC=L51	// jump
L58:
.debug
	.dw '.stabn 0x44,0,170,',0,0
	.dd LM84-_main
	.dw 0x0d,0x0a
.code
LM84:
	R1=BP	// QImode move
	R2=BP+8
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,2048	// QImode compare
	NSJNZ L60	//QImode NE
.debug
	.dw '.stabn 0x44,0,172,',0,0
	.dd LM85-_main
	.dw 0x0d,0x0a
.code
LM85:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,173,',0,0
	.dd LM86-_main
	.dw 0x0d,0x0a
.code
LM86:
	CALL _SACM_A2000_Resume	// call with return value
.debug
	.dw '.stabn 0x44,0,174,',0,0
	.dd LM87-_main
	.dw 0x0d,0x0a
.code
LM87:
	PC=L49	// jump
.debug
	.dw '.stabn 0x44,0,175,',0,0
	.dd LM88-_main
	.dw 0x0d,0x0a
.code
LM88:
	PC=L51	// jump
L60:
.debug
	.dw '.stabn 0x44,0,176,',0,0
	.dd LM89-_main
	.dw 0x0d,0x0a
.code
LM89:
	R1=BP	// QImode move
	R2=BP+8
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,4096	// QImode compare
	NSJNZ L62	//QImode NE
.debug
	.dw '.stabn 0x44,0,178,',0,0
	.dd LM90-_main
	.dw 0x0d,0x0a
.code
LM90:
LBB6:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,179,',0,0
	.dd LM91-_main
	.dw 0x0d,0x0a
.code
LM91:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,14	// QImode compare
	NSJG L63	//QImode GT
.debug
	.dw '.stabn 0x44,0,180,',0,0
	.dd LM92-_main
	.dw 0x0d,0x0a
.code
LM92:
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
	PC=L64	// jump
L63:
.debug
	.dw '.stabn 0x44,0,181,',0,0
	.dd LM93-_main
	.dw 0x0d,0x0a
.code
LM93:
	PC=L48	// jump
L64:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Volume	// call with return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,182,',0,0
	.dd LM94-_main
	.dw 0x0d,0x0a
.code
LM94:
LBE6:
	PC=L51	// jump
L62:
.debug
	.dw '.stabn 0x44,0,183,',0,0
	.dd LM95-_main
	.dw 0x0d,0x0a
.code
LM95:
	R1=BP	// QImode move
	R2=BP+8
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,8192	// QImode compare
	NSJNZ L66	//QImode NE
.debug
	.dw '.stabn 0x44,0,185,',0,0
	.dd LM96-_main
	.dw 0x0d,0x0a
.code
LM96:
LBB7:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,186,',0,0
	.dd LM97-_main
	.dw 0x0d,0x0a
.code
LM97:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,0	// QImode test
	NSJNG L67	//QImode LE
.debug
	.dw '.stabn 0x44,0,188,',0,0
	.dd LM98-_main
	.dw 0x0d,0x0a
.code
LM98:
	R1=BP	// QImode move
	R2=BP+2
	R3=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+(-1)
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L68	// jump
L67:
.debug
	.dw '.stabn 0x44,0,190,',0,0
	.dd LM99-_main
	.dw 0x0d,0x0a
.code
LM99:
	PC=L48	// jump
L68:
.debug
	.dw '.stabn 0x44,0,191,',0,0
	.dd LM100-_main
	.dw 0x0d,0x0a
.code
LM100:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Volume	// call with return value
	SP = SP + 1	//SP
.debug
	.dw '.stabn 0x44,0,192,',0,0
	.dd LM101-_main
	.dw 0x0d,0x0a
.code
LM101:
LBE7:
	PC=L51	// jump
L66:
.debug
	.dw '.stabn 0x44,0,193,',0,0
	.dd LM102-_main
	.dw 0x0d,0x0a
.code
LM102:
	R1=BP	// QImode move
	R2=BP+8
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,(-32768)	// QImode compare
	NSJNZ L70	//QImode NE
.debug
	.dw '.stabn 0x44,0,195,',0,0
	.dd LM103-_main
	.dw 0x0d,0x0a
.code
LM103:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,196,',0,0
	.dd LM104-_main
	.dw 0x0d,0x0a
.code
LM104:
	R1=BP	// QImode move
	R2=BP+4
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,0	// QImode test
	NSJNZ L71	//QImode NE
.debug
	.dw '.stabn 0x44,0,197,',0,0
	.dd LM105-_main
	.dw 0x0d,0x0a
.code
LM105:
	CALL _SACM_A2000_Pause	// call with return value
	PC=L72	// jump
L71:
.debug
	.dw '.stabn 0x44,0,199,',0,0
	.dd LM106-_main
	.dw 0x0d,0x0a
.code
LM106:
	CALL _SACM_A2000_Resume	// call with return value
L72:
.debug
	.dw '.stabn 0x44,0,201,',0,0
	.dd LM107-_main
	.dw 0x0d,0x0a
.code
LM107:
	R2=BP	// QImode move
	R1=BP+4
	R2=BP	// QImode move
	R3=BP+4
	R4=R3	// QImode move
	R4=[R4]
	R2=R4^1
	R4=R1	// QImode move
	[R4]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,202,',0,0
	.dd LM108-_main
	.dw 0x0d,0x0a
.code
LM108:
	PC=L51	// jump
L70:
.debug
	.dw '.stabn 0x44,0,203,',0,0
	.dd LM109-_main
	.dw 0x0d,0x0a
.code
LM109:
	R1=BP	// QImode move
	R2=BP+8
	R1=1024	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	PC=L51	// jump
L74:
.debug
	.dw '.stabn 0x44,0,204,',0,0
	.dd LM110-_main
	.dw 0x0d,0x0a
.code
LM110:
	R1=BP	// QImode move
	R2=BP+8
	R1=16384	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
	PC=L51	// jump
L76:
.debug
	.dw '.stabn 0x44,0,205,',0,0
	.dd LM111-_main
	.dw 0x0d,0x0a
.code
LM111:
	R1=BP	// QImode move
	R2=BP+8
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	PC=L51	// jump
L78:
.debug
	.dw '.stabn 0x44,0,206,',0,0
	.dd LM112-_main
	.dw 0x0d,0x0a
.code
LM112:
	R1=BP	// QImode move
	R2=BP+8
	R1=2	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
	PC=L51	// jump
L80:
.debug
	.dw '.stabn 0x44,0,207,',0,0
	.dd LM113-_main
	.dw 0x0d,0x0a
.code
LM113:
	R1=BP	// QImode move
	R2=BP+8
	R1=4	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	PC=L51	// jump
L82:
.debug
	.dw '.stabn 0x44,0,208,',0,0
	.dd LM114-_main
	.dw 0x0d,0x0a
.code
LM114:
	R1=BP	// QImode move
	R2=BP+8
	R1=8	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
	PC=L51	// jump
L84:
.debug
	.dw '.stabn 0x44,0,209,',0,0
	.dd LM115-_main
	.dw 0x0d,0x0a
.code
LM115:
	R1=BP	// QImode move
	R2=BP+8
	R1=16	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	PC=L51	// jump
L86:
.debug
	.dw '.stabn 0x44,0,210,',0,0
	.dd LM116-_main
	.dw 0x0d,0x0a
.code
LM116:
	R1=BP	// QImode move
	R2=BP+8
	R1=32	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
	PC=L51	// jump
L88:
.debug
	.dw '.stabn 0x44,0,211,',0,0
	.dd LM117-_main
	.dw 0x0d,0x0a
.code
LM117:
	R1=BP	// QImode move
	R2=BP+8
	R1=64	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
	PC=L51	// jump
L90:
.debug
	.dw '.stabn 0x44,0,212,',0,0
	.dd LM118-_main
	.dw 0x0d,0x0a
.code
LM118:
	R1=BP	// QImode move
	R2=BP+8
	R1=128	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L92:
L91:
L89:
L87:
L85:
L83:
L81:
L79:
L77:
L75:
L73:
L69:
L65:
L61:
L59:
L57:
L51:
.debug
	.dw '.stabn 0x44,0,217,',0,0
	.dd LM119-_main
	.dw 0x0d,0x0a
.code
LM119:
	R1=[BP]	// QImode move
	R2=1	// QImode move
	[_num+3]=R1+R2  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,218,',0,0
	.dd LM120-_main
	.dw 0x0d,0x0a
.code
LM120:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modi1	// call with return value
	SP = SP + 2	//SP
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,219,',0,0
	.dd LM121-_main
	.dw 0x0d,0x0a
.code
LM121:
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divi1	// call with return value
	SP = SP + 2	//SP
	[_num]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,220,',0,0
	.dd LM122-_main
	.dw 0x0d,0x0a
.code
LM122:
	R1=BP	// QImode move
	R2=BP+1
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L93:
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L96	//QImode LE
	PC=L94	// jump
L96:
.debug
	.dw '.stabn 0x44,0,222,',0,0
	.dd LM123-_main
	.dw 0x0d,0x0a
.code
LM123:
	R1=BP	// QImode move
	R2=BP+1
	R1=R2	// QImode move
	R3=[R1]	// QImode move
	R1=R3+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=BP	// QImode move
	R2=BP+1
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,220,',0,0
	.dd LM124-_main
	.dw 0x0d,0x0a
.code
LM124:
L95:
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
	PC=L93	// jump
L94:
.debug
	.dw '.stabn 0x44,0,224,',0,0
	.dd LM125-_main
	.dw 0x0d,0x0a
.code
LM125:
	PC=L48	// jump
L49:
.debug
	.dw '.stabn 0x44,0,225,',0,0
	.dd LM126-_main
	.dw 0x0d,0x0a
.code
LM126:
	R1=BP	// QImode move
	R2=BP+7
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,0	// QImode test
	NSJNZ L97	//QImode NE
.debug
	.dw '.stabn 0x44,0,226,',0,0
	.dd LM127-_main
	.dw 0x0d,0x0a
.code
LM127:
	R4=[BP]	// QImode move
	R4=R4^1
	[BP]=R4	// QImode move
L97:
.debug
	.dw '.stabn 0x44,0,228,',0,0
	.dd LM128-_main
	.dw 0x0d,0x0a
.code
LM128:
	R1=3	// QImode move
	[SP--]=R1	// QImode move
	R1=1	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _SACM_A2000_Play	// call with return value
	SP = SP + 3	//SP
.debug
	.dw '.stabn 0x44,0,229,',0,0
	.dd LM129-_main
	.dw 0x0d,0x0a
.code
LM129:
LBE5:
	PC=L45	// jump
L46:
L44:
.debug
	.dw '.stabn 0x44,0,231,',0,0
	.dd LM130-_main
	.dw 0x0d,0x0a
.code
LM130:
LBE4:
.debug
	.dw '.stabn 0x44,0,231,',0,0
	.dd LM131-_main
	.dw 0x0d,0x0a
.code
LM131:
L43:

	SP+=11
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB4-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "iSpeech_index:1",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:1",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "value:1",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "t:1",128,0,0,3',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "m:1",128,0,0,4',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Key1:1",128,0,0,5',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "iMode:1",128,0,0,6',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "flag:1",128,0,0,7',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Key:1",128,0,0,8',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB5-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB6-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE6-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB7-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE7-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE5-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE4-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME4-_main
	.dw 0x0d,0x0a
.code
LME4:
.iram
.public _num
_num:
	.dw 6 dup(0)
.external _SACM_A2000_Pause
.external _SACM_A2000_Volume
.external _SACM_A2000_Resume
.external _SACM_A2000_ServiceLoop
.external _SACM_A2000_Status
.external _SACM_A2000_Play
.external _SACM_A2000_Initial
.external __divi1
.external __modi1
.external __lshiu1
	.end
