// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccS5hPt0.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/3140102328/ÐÞ¸Ä/mimasuo/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/3140102328/Ð/336¸/304/mimasuo/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
	.dw '.stabs "KeyNum:G20=ar1;0;3;1",32,0,0,',0,0,offset _KeyNum,seg _KeyNum,0x0d,0x0a
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
	// total=1, vars=1
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,1',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=1
	BP=SP+1

	R2=BP+4
LBB2:
.debug
	.dw '.stabn 0x44,0,46,',0,0
	.dd LM10-_GetKey
	.dw 0x0d,0x0a
.code
LM10:
	R1=[28674]	// QImode move
	R3=R1&255
	[28674]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,47,',0,0
	.dd LM11-_GetKey
	.dw 0x0d,0x0a
.code
LM11:
	R1=[28675]	// QImode move
	R3=R1&255
	[28675]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,48,',0,0
	.dd LM12-_GetKey
	.dw 0x0d,0x0a
.code
LM12:
	R1=[28673]	// QImode move
	R3=R1|(-256)
	[28673]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,50,',0,0
	.dd LM13-_GetKey
	.dw 0x0d,0x0a
.code
LM13:
L4:
	R3=[28672]	// QImode move
	R1=R3&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L6	//QImode EQ
	PC=L5	// jump
L6:
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM14-_GetKey
	.dw 0x0d,0x0a
.code
LM14:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,53,',0,0
	.dd LM15-_GetKey
	.dw 0x0d,0x0a
.code
LM15:
	PC=L4	// jump
L5:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM16-_GetKey
	.dw 0x0d,0x0a
.code
LM16:
	R3=[28672]	// QImode move
	R1=R3&(-256)
	R3=R1^(-256)
	[BP]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,56,',0,0
	.dd LM17-_GetKey
	.dw 0x0d,0x0a
.code
LM17:
L7:
	R3=[28672]	// QImode move
	R1=R3&(-256)
	CMP R1,(-256)	// QImode compare
	NSJNZ L9	//QImode NE
	PC=L8	// jump
L9:
.debug
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM18-_GetKey
	.dw 0x0d,0x0a
.code
LM18:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,59,',0,0
	.dd LM19-_GetKey
	.dw 0x0d,0x0a
.code
LM19:
	PC=L7	// jump
L8:
.debug
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM20-_GetKey
	.dw 0x0d,0x0a
.code
LM20:
	R3=[BP]	// QImode move
	R1=R3	// QImode move
	PC=L3	// jump
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM21-_GetKey
	.dw 0x0d,0x0a
.code
LM21:
LBE2:
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM22-_GetKey
	.dw 0x0d,0x0a
.code
LM22:
L3:

	SP+=1
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
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM23-_main
	.dw 0x0d,0x0a
.code
LM23:
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
LBB3:
.debug
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM24-_main
	.dw 0x0d,0x0a
.code
LM24:
	R1=BP	// QImode move
	R2=BP+1
	R1=3	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,70,',0,0
	.dd LM25-_main
	.dw 0x0d,0x0a
.code
LM25:
L13:
	PC=L15	// jump
	PC=L14	// jump
L15:
.debug
	.dw '.stabn 0x44,0,72,',0,0
	.dd LM26-_main
	.dw 0x0d,0x0a
.code
LM26:
	CALL _GetKey	// call with return value
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM27-_main
	.dw 0x0d,0x0a
.code
LM27:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L16:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,3999	// QImode compare
	NSJNG L19	//QImode LE
	PC=L17	// jump
L19:
.debug
	.dw '.stabn 0x44,0,74,',0,0
	.dd LM28-_main
	.dw 0x0d,0x0a
.code
LM28:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM29-_main
	.dw 0x0d,0x0a
.code
LM29:
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
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM30-_main
	.dw 0x0d,0x0a
.code
LM30:
	R1=[BP]	// QImode move
	CMP R1,4096	// QImode compare
	NSJNZ L20	//QImode NE
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM31-_main
	.dw 0x0d,0x0a
.code
LM31:
	R1=0	// QImode move
	[_KeyNum]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,78,',0,0
	.dd LM32-_main
	.dw 0x0d,0x0a
.code
LM32:
	R1=0	// QImode move
	[_KeyNum+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM33-_main
	.dw 0x0d,0x0a
.code
LM33:
	R1=0	// QImode move
	[_KeyNum+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,80,',0,0
	.dd LM34-_main
	.dw 0x0d,0x0a
.code
LM34:
	R1=0	// QImode move
	[_KeyNum+3]=R1	// QImode move
L20:
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM35-_main
	.dw 0x0d,0x0a
.code
LM35:
	R1=[BP]	// QImode move
	CMP R1,512	// QImode compare
	NSJNZ L21	//QImode NE
.debug
	.dw '.stabn 0x44,0,84,',0,0
	.dd LM36-_main
	.dw 0x0d,0x0a
.code
LM36:
	R1=BP	// QImode move
	R2=BP+1
	R1=_KeyNum	// QImode move
	R3=R2	// QImode move
	R2=[R3]	// QImode move
	R1 = R1 + R2	//addqi3
	R2=BP	// QImode move
	R3=BP+1
	R2=_KeyNum	// QImode move
	R4=R3	// QImode move
	R3=[R4]	// QImode move
	R2 = R2 + R3	//addqi3
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R2=R3+1
	R3=R1	// QImode move
	[R3]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	R1=BP	// QImode move
	R2=BP+1
	R1=_KeyNum	// QImode move
	R4=R2	// QImode move
	R2=[R4]	// QImode move
	R1 = R1 + R2	//addqi3
	R3=R1	// QImode move
	R2=[R3]	// QImode move
	CMP R2,9	// QImode compare
	NSJNG L21	//QImode LE
.debug
	.dw '.stabn 0x44,0,86,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	R1=BP	// QImode move
	R2=BP+1
	R1=_KeyNum	// QImode move
	R4=R2	// QImode move
	R2=[R4]	// QImode move
	R1 = R1 + R2	//addqi3
	R2=0	// QImode move
	R3=R1	// QImode move
	[R3]=R2	// QImode move
L22:
L21:
.debug
	.dw '.stabn 0x44,0,88,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
	R1=[BP]	// QImode move
	CMP R1,1024	// QImode compare
	NSJNZ L23	//QImode NE
.debug
	.dw '.stabn 0x44,0,90,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
	R1=BP	// QImode move
	R2=BP+1
	R1=_KeyNum	// QImode move
	R4=R2	// QImode move
	R2=[R4]	// QImode move
	R1 = R1 + R2	//addqi3
	R2=BP	// QImode move
	R3=BP+1
	R2=_KeyNum	// QImode move
	R4=R3	// QImode move
	R3=[R4]	// QImode move
	R2 = R2 + R3	//addqi3
	R4=R2	// QImode move
	R3=[R4]	// QImode move
	R2=R3+(-1)
	R3=R1	// QImode move
	[R3]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,91,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
	R1=BP	// QImode move
	R2=BP+1
	R1=_KeyNum	// QImode move
	R4=R2	// QImode move
	R2=[R4]	// QImode move
	R1 = R1 + R2	//addqi3
	R3=R1	// QImode move
	R2=[R3]	// QImode move
	CMP R2,0	// QImode test
	NSJNL L23	//QImode GE
.debug
	.dw '.stabn 0x44,0,92,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R1=BP	// QImode move
	R2=BP+1
	R1=_KeyNum	// QImode move
	R4=R2	// QImode move
	R2=[R4]	// QImode move
	R1 = R1 + R2	//addqi3
	R2=9	// QImode move
	R3=R1	// QImode move
	[R3]=R2	// QImode move
L24:
L23:
.debug
	.dw '.stabn 0x44,0,94,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R1=[BP]	// QImode move
	CMP R1,2048	// QImode compare
	NSJNZ L25	//QImode NE
.debug
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
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
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,3	// QImode compare
	NSJNG L25	//QImode LE
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L26:
L25:
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	R1=[BP]	// QImode move
	CMP R1,256	// QImode compare
	NSJNZ L27	//QImode NE
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
	R1=BP	// QImode move
	R2=BP+1
	R3=BP	// QImode move
	R1=BP+1
	R2=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R2=[R4]	// QImode move
	R3=R2+(-1)
	R2=R1	// QImode move
	[R2]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,0	// QImode test
	NSJNL L27	//QImode GE
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
	R1=BP	// QImode move
	R2=BP+1
	R1=3	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
L28:
L27:
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
L29:
	PC=L31	// jump
	PC=L30	// jump
L31:
.debug
	.dw '.stabn 0x44,0,110,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
	R1=BP	// QImode move
	R2=BP+2
	R1=3	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
L32:
	R1=BP	// QImode move
	R2=BP+2
	R4=R2	// QImode move
	R1=[R4]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L35	//QImode LE
	PC=L33	// jump
L35:
.debug
	.dw '.stabn 0x44,0,111,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
	R1=BP	// QImode move
	R2=BP+2
	R1=R2	// QImode move
	R3=[R1]	// QImode move
	R1=R3+(-3)
	R3=_KeyNum	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
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
	.dw '.stabn 0x44,0,110,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
L34:
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
	PC=L32	// jump
L33:
.debug
	.dw '.stabn 0x44,0,112,',0,0
	.dd LM55-_main
	.dw 0x0d,0x0a
.code
LM55:
	R2=[28672]	// QImode move
	R1=R2&(-256)
	CMP R1,(-256)	// QImode compare
	NSJZ L36	//QImode EQ
.debug
	.dw '.stabn 0x44,0,115,',0,0
	.dd LM56-_main
	.dw 0x0d,0x0a
.code
LM56:
	PC=L30	// jump
L36:
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM57-_main
	.dw 0x0d,0x0a
.code
LM57:
	PC=L29	// jump
L30:
.debug
	.dw '.stabn 0x44,0,118,',0,0
	.dd LM58-_main
	.dw 0x0d,0x0a
.code
LM58:
	PC=L13	// jump
L14:
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM59-_main
	.dw 0x0d,0x0a
.code
LM59:
LBE3:
.debug
	.dw '.stabn 0x44,0,119,',0,0
	.dd LM60-_main
	.dw 0x0d,0x0a
.code
LM60:
L12:

	SP+=4
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
	.dw '.stabs "KeyMask:1",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "i:1",128,0,0,2',0x0d,0x0a
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
.public _KeyNum
_KeyNum:
	.dw 4 dup(0)
.external __lshiu1
	.end
