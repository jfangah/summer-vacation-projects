// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccfvk9de.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/3140102328/ÐÞ¸Ä/fanzhuan/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/3140102328/Ð/336¸/304/fanzhuan/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
.debug
	.dw '.stabs "num2:G20",32,0,0,',0,0,offset _num2,seg _num2,0x0d,0x0a
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
	.dw '.stabn 0x44,0,27,',0,0
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
	.dw '.stabn 0x44,0,28,',0,0
	.dd LM2-_LedDispDig
	.dw 0x0d,0x0a
.code
LM2:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,30,',0,0
	.dd LM3-_LedDispDig
	.dw 0x0d,0x0a
.code
LM3:
	R1=[28679]	// QImode move
	R2=R1|16383
	[28679]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,31,',0,0
	.dd LM4-_LedDispDig
	.dw 0x0d,0x0a
.code
LM4:
	R1=[28680]	// QImode move
	R2=R1|16383
	[28680]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,32,',0,0
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
	.dw '.stabn 0x44,0,34,',0,0
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
	.dw '.stabn 0x44,0,35,',0,0
	.dd LM7-_LedDispDig
	.dw 0x0d,0x0a
.code
LM7:
.debug
	.dw '.stabn 0x44,0,35,',0,0
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
	.dw '.stabn 0x44,0,44,',0,0
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
LBB2:
.debug
	.dw '.stabn 0x44,0,48,',0,0
	.dd LM10-_GetKey
	.dw 0x0d,0x0a
.code
LM10:
	R1=[28674]	// QImode move
	R2=R1&255
	[28674]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM11-_GetKey
	.dw 0x0d,0x0a
.code
LM11:
	R1=[28675]	// QImode move
	R2=R1&255
	[28675]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,50,',0,0
	.dd LM12-_GetKey
	.dw 0x0d,0x0a
.code
LM12:
	R1=[28673]	// QImode move
	R2=R1|(-256)
	[28673]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM13-_GetKey
	.dw 0x0d,0x0a
.code
LM13:
L4:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L6	//QImode EQ
	PC=L5	// jump
L6:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM14-_GetKey
	.dw 0x0d,0x0a
.code
LM14:
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
	.dd LM15-_GetKey
	.dw 0x0d,0x0a
.code
LM15:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM16-_GetKey
	.dw 0x0d,0x0a
.code
LM16:
	R1=BP	// QImode move
	R2=BP+2
	R1=1	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L7:
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L10	//QImode LE
	PC=L8	// jump
L10:
.debug
	.dw '.stabn 0x44,0,57,',0,0
	.dd LM17-_GetKey
	.dw 0x0d,0x0a
.code
LM17:
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
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM18-_GetKey
	.dw 0x0d,0x0a
.code
LM18:
L9:
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
	PC=L7	// jump
L8:
.debug
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM19-_GetKey
	.dw 0x0d,0x0a
.code
LM19:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,10000	// QImode compare
	NSJNA L11	//QImode LEU
.debug
	.dw '.stabn 0x44,0,59,',0,0
	.dd LM20-_GetKey
	.dw 0x0d,0x0a
.code
LM20:
	PC=L5	// jump
L11:
.debug
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM21-_GetKey
	.dw 0x0d,0x0a
.code
LM21:
	PC=L4	// jump
L5:
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM22-_GetKey
	.dw 0x0d,0x0a
.code
LM22:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L12:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,99	// QImode compare
	NSJNA L15	//QImode LEU
	PC=L13	// jump
L15:
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM23-_GetKey
	.dw 0x0d,0x0a
.code
LM23:
	R1=BP	// QImode move
	R2=BP+2
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L16:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L19	//QImode LE
	PC=L14	// jump
L19:
.debug
	.dw '.stabn 0x44,0,63,',0,0
	.dd LM24-_GetKey
	.dw 0x0d,0x0a
.code
LM24:
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
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM25-_GetKey
	.dw 0x0d,0x0a
.code
LM25:
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
	.dd LM26-_GetKey
	.dw 0x0d,0x0a
.code
LM26:
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
	.dd LM27-_GetKey
	.dw 0x0d,0x0a
.code
LM27:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	R3=R1^(-256)
	[BP]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM28-_GetKey
	.dw 0x0d,0x0a
.code
LM28:
L20:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJNZ L22	//QImode NE
	PC=L21	// jump
L22:
.debug
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM29-_GetKey
	.dw 0x0d,0x0a
.code
LM29:
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
	.dd LM30-_GetKey
	.dw 0x0d,0x0a
.code
LM30:
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
	.dd LM31-_GetKey
	.dw 0x0d,0x0a
.code
LM31:
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
	.dd LM32-_GetKey
	.dw 0x0d,0x0a
.code
LM32:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM33-_GetKey
	.dw 0x0d,0x0a
.code
LM33:
	PC=L20	// jump
L21:
.debug
	.dw '.stabn 0x44,0,72,',0,0
	.dd LM34-_GetKey
	.dw 0x0d,0x0a
.code
LM34:
	R2=[BP]	// QImode move
	R1=R2	// QImode move
	PC=L3	// jump
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM35-_GetKey
	.dw 0x0d,0x0a
.code
LM35:
LBE2:
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM36-_GetKey
	.dw 0x0d,0x0a
.code
LM36:
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
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	// total=8, vars=8
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,8',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=8
	BP=SP+1

	R1=BP+11
	[BP+7]=R1	// QImode move
LBB3:
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	R1=BP	// QImode move
	R2=BP+5
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
L35:
	PC=L37	// jump
	PC=L36	// jump
L37:
.debug
	.dw '.stabn 0x44,0,84,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
	R1=_num	// QImode move
	[SP--]=R1	// QImode move
	CALL _GetKey	// call with return value
	SP = SP + 1	//SP
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
	R1=[BP]	// QImode move
	CMP R1,(-32768)	// QImode compare
	NSJNZ L38	//QImode NE
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R1=0	// QImode move
	[_num]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R1=0	// QImode move
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,89,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
	R1=0	// QImode move
	[_num+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,90,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	R1=0	// QImode move
	[_num+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	R1=0	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	R1=0	// QImode move
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,93,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
	R1=0	// QImode move
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,94,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
	R1=0	// QImode move
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
	R1=0	// QImode move
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
	R1=0	// QImode move
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
	R1=0	// QImode move
	[_num2+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
	R1=0	// QImode move
	[_num2+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
	R1=BP	// QImode move
	R2=BP+3
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L38:
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	R1=[BP]	// QImode move
	CMP R1,4096	// QImode compare
	NSJNZ L39	//QImode NE
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
	R1=3	// QImode move
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
	R1=3	// QImode move
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,106,',0,0
	.dd LM59-_main
	.dw 0x0d,0x0a
.code
LM59:
	R1=3	// QImode move
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM60-_main
	.dw 0x0d,0x0a
.code
LM60:
	R1=3	// QImode move
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM61-_main
	.dw 0x0d,0x0a
.code
LM61:
	R1=1	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM62-_main
	.dw 0x0d,0x0a
.code
LM62:
	R1=0	// QImode move
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,110,',0,0
	.dd LM63-_main
	.dw 0x0d,0x0a
.code
LM63:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM64-_main
	.dw 0x0d,0x0a
.code
LM64:
	R1=BP	// QImode move
	R2=BP+4
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L39:
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM65-_main
	.dw 0x0d,0x0a
.code
LM65:
	R1=[BP]	// QImode move
	CMP R1,8192	// QImode compare
	NSJNZ L40	//QImode NE
.debug
	.dw '.stabn 0x44,0,115,',0,0
	.dd LM66-_main
	.dw 0x0d,0x0a
.code
LM66:
	R1=3	// QImode move
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM67-_main
	.dw 0x0d,0x0a
.code
LM67:
	R1=3	// QImode move
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM68-_main
	.dw 0x0d,0x0a
.code
LM68:
	R1=3	// QImode move
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM69-_main
	.dw 0x0d,0x0a
.code
LM69:
	R1=3	// QImode move
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM70-_main
	.dw 0x0d,0x0a
.code
LM70:
	R1=0	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM71-_main
	.dw 0x0d,0x0a
.code
LM71:
	R1=2	// QImode move
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,121,',0,0
	.dd LM72-_main
	.dw 0x0d,0x0a
.code
LM72:
	R2=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R3=BP+4
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R1	// QImode move
	[R3]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,122,',0,0
	.dd LM73-_main
	.dw 0x0d,0x0a
.code
LM73:
	R1=BP	// QImode move
	R2=BP+4
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L40:
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM74-_main
	.dw 0x0d,0x0a
.code
LM74:
	R1=[BP]	// QImode move
	CMP R1,256	// QImode compare
	NSJNZ L41	//QImode NE
.debug
	.dw '.stabn 0x44,0,126,',0,0
	.dd LM75-_main
	.dw 0x0d,0x0a
.code
LM75:
	R1=[_num2+1]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM76-_main
	.dw 0x0d,0x0a
.code
LM76:
	R1=[_num2+2]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM77-_main
	.dw 0x0d,0x0a
.code
LM77:
	R1=[_num2+3]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,129,',0,0
	.dd LM78-_main
	.dw 0x0d,0x0a
.code
LM78:
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
L41:
.debug
	.dw '.stabn 0x44,0,131,',0,0
	.dd LM79-_main
	.dw 0x0d,0x0a
.code
LM79:
	R1=[BP]	// QImode move
	CMP R1,512	// QImode compare
	NSJNZ L42	//QImode NE
.debug
	.dw '.stabn 0x44,0,133,',0,0
	.dd LM80-_main
	.dw 0x0d,0x0a
.code
LM80:
	R1=[_num2]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,134,',0,0
	.dd LM81-_main
	.dw 0x0d,0x0a
.code
LM81:
	R1=[_num2+2]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,135,',0,0
	.dd LM82-_main
	.dw 0x0d,0x0a
.code
LM82:
	R1=[_num2+3]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,136,',0,0
	.dd LM83-_main
	.dw 0x0d,0x0a
.code
LM83:
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
L42:
.debug
	.dw '.stabn 0x44,0,138,',0,0
	.dd LM84-_main
	.dw 0x0d,0x0a
.code
LM84:
	R1=[BP]	// QImode move
	CMP R1,1024	// QImode compare
	NSJNZ L43	//QImode NE
.debug
	.dw '.stabn 0x44,0,140,',0,0
	.dd LM85-_main
	.dw 0x0d,0x0a
.code
LM85:
	R1=[_num2]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,141,',0,0
	.dd LM86-_main
	.dw 0x0d,0x0a
.code
LM86:
	R1=[_num2+1]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,142,',0,0
	.dd LM87-_main
	.dw 0x0d,0x0a
.code
LM87:
	R1=[_num2+3]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,143,',0,0
	.dd LM88-_main
	.dw 0x0d,0x0a
.code
LM88:
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
L43:
.debug
	.dw '.stabn 0x44,0,145,',0,0
	.dd LM89-_main
	.dw 0x0d,0x0a
.code
LM89:
	R1=[BP]	// QImode move
	CMP R1,2048	// QImode compare
	NSJNZ L44	//QImode NE
.debug
	.dw '.stabn 0x44,0,147,',0,0
	.dd LM90-_main
	.dw 0x0d,0x0a
.code
LM90:
	R1=[_num2]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,148,',0,0
	.dd LM91-_main
	.dw 0x0d,0x0a
.code
LM91:
	R1=[_num2+1]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,149,',0,0
	.dd LM92-_main
	.dw 0x0d,0x0a
.code
LM92:
	R1=[_num2+2]	// QImode move
	R2=R1	// QImode move
	R1=-R2	// QImode negative
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,150,',0,0
	.dd LM93-_main
	.dw 0x0d,0x0a
.code
LM93:
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
L44:
.debug
	.dw '.stabn 0x44,0,152,',0,0
	.dd LM94-_main
	.dw 0x0d,0x0a
.code
LM94:
	R1=[BP]	// QImode move
	CMP R1,16384	// QImode compare
	NSJNZ L45	//QImode NE
.debug
	.dw '.stabn 0x44,0,154,',0,0
	.dd LM95-_main
	.dw 0x0d,0x0a
.code
LM95:
	R2=BP	// QImode move
	R1=BP+2
	R2=BP	// QImode move
	R3=BP+2
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R1	// QImode move
	[R3]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,155,',0,0
	.dd LM96-_main
	.dw 0x0d,0x0a
.code
LM96:
	R2=BP	// QImode move
	R1=BP+3
	R2=BP	// QImode move
	R3=BP+4
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R1	// QImode move
	[R3]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,156,',0,0
	.dd LM97-_main
	.dw 0x0d,0x0a
.code
LM97:
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divu1	// call with return value
	SP = SP + 2	//SP
	[_num]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,157,',0,0
	.dd LM98-_main
	.dw 0x0d,0x0a
.code
LM98:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,158,',0,0
	.dd LM99-_main
	.dw 0x0d,0x0a
.code
LM99:
	R1=BP	// QImode move
	R2=BP+4
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divu1	// call with return value
	SP = SP + 2	//SP
	[_num+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,159,',0,0
	.dd LM100-_main
	.dw 0x0d,0x0a
.code
LM100:
	R1=BP	// QImode move
	R2=BP+4
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,160,',0,0
	.dd LM101-_main
	.dw 0x0d,0x0a
.code
LM101:
	R1=0	// QImode move
	[_num2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,161,',0,0
	.dd LM102-_main
	.dw 0x0d,0x0a
.code
LM102:
	R1=0	// QImode move
	[_num2+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,162,',0,0
	.dd LM103-_main
	.dw 0x0d,0x0a
.code
LM103:
	R1=0	// QImode move
	[_num2+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,163,',0,0
	.dd LM104-_main
	.dw 0x0d,0x0a
.code
LM104:
	R1=0	// QImode move
	[_num2+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,164,',0,0
	.dd LM105-_main
	.dw 0x0d,0x0a
.code
LM105:
	R1=1	// QImode move
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,165,',0,0
	.dd LM106-_main
	.dw 0x0d,0x0a
.code
LM106:
	R1=2	// QImode move
	[_num+5]=R1	// QImode move
L45:
.debug
	.dw '.stabn 0x44,0,167,',0,0
	.dd LM107-_main
	.dw 0x0d,0x0a
.code
LM107:
L46:
	PC=L48	// jump
	PC=L47	// jump
L48:
.debug
	.dw '.stabn 0x44,0,169,',0,0
	.dd LM108-_main
	.dw 0x0d,0x0a
.code
LM108:
	R1=BP	// QImode move
	R2=BP+6
	R1=1	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L49:
	R1=BP	// QImode move
	R2=BP+6
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L52	//QImode LE
	PC=L50	// jump
L52:
.debug
	.dw '.stabn 0x44,0,171,',0,0
	.dd LM109-_main
	.dw 0x0d,0x0a
.code
LM109:
	R1=BP	// QImode move
	R2=BP+6
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R1=R3+(-1)
	R3=_num2	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,3	// QImode compare
	NSJNZ L53	//QImode NE
.debug
	.dw '.stabn 0x44,0,172,',0,0
	.dd LM110-_main
	.dw 0x0d,0x0a
.code
LM110:
	R1=BP	// QImode move
	R2=BP+6
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R1=R3+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R1=6	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L53:
.debug
	.dw '.stabn 0x44,0,173,',0,0
	.dd LM111-_main
	.dw 0x0d,0x0a
.code
LM111:
	R1=BP	// QImode move
	R2=BP+6
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R1=R3+(-1)
	R3=_num2	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,(-3)	// QImode compare
	NSJNZ L54	//QImode NE
.debug
	.dw '.stabn 0x44,0,174,',0,0
	.dd LM112-_main
	.dw 0x0d,0x0a
.code
LM112:
	R1=BP	// QImode move
	R2=BP+6
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R1=R3+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R1=9	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L54:
.debug
	.dw '.stabn 0x44,0,175,',0,0
	.dd LM113-_main
	.dw 0x0d,0x0a
.code
LM113:
	R1=BP	// QImode move
	R2=BP+6
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
	R2=BP+6
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,169,',0,0
	.dd LM114-_main
	.dw 0x0d,0x0a
.code
LM114:
L51:
	R1=BP	// QImode move
	R2=BP+6
	R3=BP	// QImode move
	R1=BP+6
	R2=BP	// QImode move
	R3=BP+6
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+1
	R2=R1	// QImode move
	[R2]=R3	// QImode move
	PC=L49	// jump
L50:
.debug
	.dw '.stabn 0x44,0,177,',0,0
	.dd LM115-_main
	.dw 0x0d,0x0a
.code
LM115:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L55	//QImode EQ
.debug
	.dw '.stabn 0x44,0,178,',0,0
	.dd LM116-_main
	.dw 0x0d,0x0a
.code
LM116:
	PC=L47	// jump
L55:
.debug
	.dw '.stabn 0x44,0,179,',0,0
	.dd LM117-_main
	.dw 0x0d,0x0a
.code
LM117:
	PC=L46	// jump
L47:
.debug
	.dw '.stabn 0x44,0,180,',0,0
	.dd LM118-_main
	.dw 0x0d,0x0a
.code
LM118:
	PC=L35	// jump
L36:
.debug
	.dw '.stabn 0x44,0,181,',0,0
	.dd LM119-_main
	.dw 0x0d,0x0a
.code
LM119:
LBE3:
.debug
	.dw '.stabn 0x44,0,181,',0,0
	.dd LM120-_main
	.dw 0x0d,0x0a
.code
LM120:
L34:

	SP+=8
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
	.dw '.stabs "temp1:4",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "temp2:4",128,0,0,3',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "temp:4",128,0,0,4',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "flag:4",128,0,0,5',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:1",128,0,0,6',0x0d,0x0a
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
.iram
.public _num2
_num2:
	.dw 6 dup(0)
.external __modu1
.external __divu1
.external __lshiu1
	.end
