// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccI7O4GW.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/ÐÂ½¨ÎÄ¼þ¼Ð/11111111/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/Ð/302½/250Î/304¼/376¼/320/123/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
.public _count
.iram
_count:
	.dw 0
.debug
	.dw '.stabs "count:G1",32,0,0,',0,0,offset _count,seg _count,0x0d,0x0a
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
// ISR ATTRIBUTE FUNCTION, LOCATE in .text SECTION
.text
.debug
	.dw '.stabs "IRQ2:F19",36,0,0,',0,0,offset _IRQ2,seg _IRQ2,0x0d,0x0a
.TEXT
.public _IRQ2
_IRQ2:	.proc
.debug
	.dw '.stabn 0x44,0,26,',0,0
	.dd LM1-_IRQ2
	.dw 0x0d,0x0a
.text
LM1:
	// ISR ATTRIBUTE FUNCTION, PUSH R1,BP
	PUSH R1,BP to [SP]

	// total=2, vars=2
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,2',0x0d, 0x0a
.text
	SP-=2
	BP=SP+1

	R1=BP+5
	[BP+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,27,',0,0
	.dd LM2-_IRQ2
	.dw 0x0d,0x0a
.text
LM2:
LBB2:
	R1=0	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,28,',0,0
	.dd LM3-_IRQ2
	.dw 0x0d,0x0a
.text
LM3:
	R1=[_count]	// QImode move
	// ashrqi3_rr1 R2 R1 15
	R2=R1 asr 3
	R2=R2 asr 4
	R2=R2 asr 4
	R2=R2 asr 4
	R3=R2 lsr 3
	R3=R3 lsr 4
	R3=R3 lsr 4
	R3=R3 lsr 4
	R1 = R1 + R3	//addqi3
	// ashrqi3_rr1 R2 R1 1
	R2=R1 asr 1
	[BP]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,29,',0,0
	.dd LM4-_IRQ2
	.dw 0x0d,0x0a
.text
LM4:
	R1=[BP]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+5]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,30,',0,0
	.dd LM5-_IRQ2
	.dw 0x0d,0x0a
.text
LM5:
	R1=[BP]	// QImode move
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divu1	// call with return value
	SP = SP + 2	//SP
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,31,',0,0
	.dd LM6-_IRQ2
	.dw 0x0d,0x0a
.text
LM6:
	R1=[BP]	// QImode move
	R2=100	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divu1	// call with return value
	SP = SP + 2	//SP
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,32,',0,0
	.dd LM7-_IRQ2
	.dw 0x0d,0x0a
.text
LM7:
	R1=[BP]	// QImode move
	R2=1000	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divu1	// call with return value
	SP = SP + 2	//SP
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,33,',0,0
	.dd LM8-_IRQ2
	.dw 0x0d,0x0a
.text
LM8:
	R1=[BP]	// QImode move
	R2=10000	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __divu1	// call with return value
	SP = SP + 2	//SP
	R2=10	// QImode move
	[SP--]=R2	// QImode move
	[SP--]=R1	// QImode move
	CALL __modu1	// call with return value
	SP = SP + 2	//SP
	[_num+1]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,34,',0,0
	.dd LM9-_IRQ2
	.dw 0x0d,0x0a
.text
LM9:
	R1=[BP]
	R2=0
	//split R3=100000
	R3=34464	// QImode move
	R4=1	// QImode move
	PUSH R3,R4 to [SP]	// pushhi
	PUSH R1,R2 to [SP]	// pushhi
	CALL __divi2	// call with return value
	SP = SP + 4	//SP
	//split R3=10
	R3=10	// QImode move
	R4=0	// QImode move
	PUSH R3,R4 to [SP]	// pushhi
	PUSH R1,R2 to [SP]	// pushhi
	CALL __modi2	// call with return value
	SP = SP + 4	//SP
	R3=R1	// QImode move
	[_num]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,35,',0,0
	.dd LM10-_IRQ2
	.dw 0x0d,0x0a
.text
LM10:
	R1=0	// QImode move
	[_count]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,36,',0,0
	.dd LM11-_IRQ2
	.dw 0x0d,0x0a
.text
LM11:
	R1=1024	// QImode move
	[28689]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,37,',0,0
	.dd LM12-_IRQ2
	.dw 0x0d,0x0a
.text
LM12:
LBE2:
.debug
	.dw '.stabn 0x44,0,37,',0,0
	.dd LM13-_IRQ2
	.dw 0x0d,0x0a
.text
LM13:
L2:

	SP+=2
	// ISR ATTRIBUTE FUNCTION, POP R1,BP
	POP R1,BP from [SP]
	RETI
	.endp	// end of IRQ2

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB2-_IRQ2
	.dw 0x0d,0x0a
.text
.debug
	.dw '.stabs "freq:4",128,0,0,0',0x0d,0x0a
.TEXT
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE2-_IRQ2
	.dw 0x0d,0x0a
.text
.debug
	.dw '.stabf ',0,0
	.dd LME1-_IRQ2
	.dw 0x0d,0x0a
.text
LME1:
// ISR ATTRIBUTE FUNCTION, LOCATE in .text SECTION
.text
.debug
	.dw '.stabs "IRQ3:F19",36,0,0,',0,0,offset _IRQ3,seg _IRQ3,0x0d,0x0a
.TEXT
.public _IRQ3
_IRQ3:	.proc
.debug
	.dw '.stabn 0x44,0,40,',0,0
	.dd LM14-_IRQ3
	.dw 0x0d,0x0a
.text
LM14:
	// ISR ATTRIBUTE FUNCTION, PUSH R1,BP
	PUSH R1,BP to [SP]

	// total=0, vars=0
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,0',0x0d, 0x0a
.text
	BP=SP+1

	R1=BP+3
.debug
	.dw '.stabn 0x44,0,41,',0,0
	.dd LM15-_IRQ3
	.dw 0x0d,0x0a
.text
LM15:
	R3=[28688]	// QImode move
	R2=R3&256
	CMP R2,0	// QImode test
	NSJZ L4	//QImode EQ
.debug
	.dw '.stabn 0x44,0,43,',0,0
	.dd LM16-_IRQ3
	.dw 0x0d,0x0a
.text
LM16:
	R2=[_count]	// QImode move
	R3=1	// QImode move
	[_count]=R2+R3  //addqi3_Qrr
.debug
	.dw '.stabn 0x44,0,44,',0,0
	.dd LM17-_IRQ3
	.dw 0x0d,0x0a
.text
LM17:
	R2=256	// QImode move
	[28689]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,45,',0,0
	.dd LM18-_IRQ3
	.dw 0x0d,0x0a
.text
LM18:
	PC=L5	// jump
L4:
.debug
	.dw '.stabn 0x44,0,46,',0,0
	.dd LM19-_IRQ3
	.dw 0x0d,0x0a
.text
LM19:
	R3=[28688]	// QImode move
	R2=R3&512
	CMP R2,0	// QImode test
	NSJZ L6	//QImode EQ
.debug
	.dw '.stabn 0x44,0,48,',0,0
	.dd LM20-_IRQ3
	.dw 0x0d,0x0a
.text
LM20:
	R2=512	// QImode move
	[28689]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM21-_IRQ3
	.dw 0x0d,0x0a
.text
LM21:
	PC=L5	// jump
L6:
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM22-_IRQ3
	.dw 0x0d,0x0a
.text
LM22:
	R2=128	// QImode move
	[28689]=R2	// QImode move
L7:
L5:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM23-_IRQ3
	.dw 0x0d,0x0a
.text
LM23:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM24-_IRQ3
	.dw 0x0d,0x0a
.text
LM24:
L3:

	// ISR ATTRIBUTE FUNCTION, POP R1,BP
	POP R1,BP from [SP]
	RETI
	.endp	// end of IRQ3

.debug
	.dw '.stabf ',0,0
	.dd LME2-_IRQ3
	.dw 0x0d,0x0a
.text
LME2:
.code
.debug
	.dw '.stabs "LedDispDig:F19",36,0,0,',0,0,offset _LedDispDig,seg _LedDispDig,0x0d,0x0a
.CODE
.public _LedDispDig
_LedDispDig:	.proc
.debug
	.dw '.stabn 0x44,0,57,',0,0
	.dd LM25-_LedDispDig
	.dw 0x0d,0x0a
.code
LM25:
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
	.dw '.stabn 0x44,0,58,',0,0
	.dd LM26-_LedDispDig
	.dw 0x0d,0x0a
.code
LM26:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,60,',0,0
	.dd LM27-_LedDispDig
	.dw 0x0d,0x0a
.code
LM27:
	R1=[28674]	// QImode move
	R2=R1|16383
	[28674]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,61,',0,0
	.dd LM28-_LedDispDig
	.dw 0x0d,0x0a
.code
LM28:
	R1=[28675]	// QImode move
	R2=R1|16383
	[28675]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,62,',0,0
	.dd LM29-_LedDispDig
	.dw 0x0d,0x0a
.code
LM29:
	R3=[BP]	// QImode move
	R2=[R3]	// QImode move
	R1=R2+(-1)
	R2=256	// QImode move
	[SP--]=R1	// QImode move
	[SP--]=R2	// QImode move
	CALL __lshiu1	// call with return value
	SP = SP + 2	//SP
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,64,',0,0
	.dd LM30-_LedDispDig
	.dw 0x0d,0x0a
.code
LM30:
	R1=[BP]	// QImode move
	R4=[BP]	// QImode move
	R2=R4+1
	R1=_DigCode	// QImode move
	R3=R2	// QImode move
	R2=[R3]	// QImode move
	R1 = R1 + R2	//addqi3
	R2=[28672]	// QImode move
	R3=R2	// QImode move
	R4=R1	// QImode move
	R3|=[R4]	// iorqi3_r0R
	R1=R3	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,65,',0,0
	.dd LM31-_LedDispDig
	.dw 0x0d,0x0a
.code
LM31:
.debug
	.dw '.stabn 0x44,0,65,',0,0
	.dd LM32-_LedDispDig
	.dw 0x0d,0x0a
.code
LM32:
L10:

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
	.dd LME3-_LedDispDig
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
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM33-_main
	.dw 0x0d,0x0a
.code
LM33:
	// total=2, vars=2
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,2',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=2
	BP=SP+1

	R1=BP+5
	[BP+1]=R1	// QImode move
LBB3:
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM34-_main
	.dw 0x0d,0x0a
.code
LM34:
	R1=(-1)	// QImode move
	[28679]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,72,',0,0
	.dd LM35-_main
	.dw 0x0d,0x0a
.code
LM35:
	R1=(-1)	// QImode move
	[28680]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM36-_main
	.dw 0x0d,0x0a
.code
LM36:
	R1=255	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,74,',0,0
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	R1=(-8193)	// QImode move
	[28684]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	R1=4	// QImode move
	[28685]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,76,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
	R1=1280	// QImode move
	[28688]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
// GCC inline ASM start
	int irq
// GCC inline ASM end
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
L12:
	PC=L14	// jump
	PC=L13	// jump
L14:
.debug
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R1=1	// QImode move
	[BP]=R1	// QImode move
L15:
	R1=[BP]	// QImode move
	CMP R1,6	// QImode compare
	NSJNG L18	//QImode LE
	PC=L16	// jump
L18:
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R2=[BP]	// QImode move
	R1=R2+(-1)
	R3=_num	// QImode move
	R2=R3	// QImode move
	R2 = R2 + R1	//addqi3
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	[SP--]=R1	// QImode move
	R1=[BP]	// QImode move
	[SP--]=R1	// QImode move
	CALL _LedDispDig	// call without return value
	SP = SP + 2	//SP
.debug
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
L17:
	R1=[BP]	// QImode move
	R2=R1+1
	[BP]=R2	// QImode move
	PC=L15	// jump
L16:
.debug
	.dw '.stabn 0x44,0,84,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	PC=L12	// jump
L13:
.debug
	.dw '.stabn 0x44,0,85,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
L19:
	PC=L21	// jump
	PC=L20	// jump
L21:
.debug
	.dw '.stabn 0x44,0,86,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	R1=1	// QImode move
	[28690]=R1	// QImode move
	PC=L19	// jump
L20:
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
LBE3:
.debug
	.dw '.stabn 0x44,0,87,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
L11:

	SP+=2
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "i:1",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_main
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
.external __lshiu1
.external __modi2
.external __divi2
.external __modu1
.external __divu1
	.end
