// GCC for GeneralPlus u'nSP version 1.1.0.3
// Command: C:\PROGRA~1\GENERA~1\UNSPID~1.4\toolchain\cc1.exe C:\DOCUME~1\ADMINI~1\LOCALS~1\Temp\ccpLZUSM.i -fkeep-inline-functions -quiet -dumpbase main.c -mglobal-var-iram -gstabs -Wall -o .\Debug/main.asm
	.external __sn_func_ptr_sec

// gcc2_compiled.:

.debug
	.dw '.stabs "D:/ÐÂ½¨ÎÄ¼þ¼Ð/led1/",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
.code
.debug
	.dw '.stabs "D:/Ð/302½/250Î/304¼/376¼/320/led1/main.c",0x64,0,3,',0,0,offset Ltext0,seg Ltext0,0x0d,0x0a
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
.code
.debug
	.dw '.stabs "Delay:F19",36,0,0,',0,0,offset _Delay,seg _Delay,0x0d,0x0a
.CODE
.public _Delay
_Delay:	.proc
.debug
	.dw '.stabn 0x44,0,49,',0,0
	.dd LM1-_Delay
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
LBB2:
.debug
	.dw '.stabn 0x44,0,51,',0,0
	.dd LM2-_Delay
	.dw 0x0d,0x0a
.code
LM2:
	R2=0	// QImode move
	[BP]=R2	// QImode move
L3:
	R2=[BP]	// QImode move
	CMP R2,0	// QImode test
	NSJNL L6	//QImode GE
	PC=L4	// jump
L6:
.debug
	.dw '.stabn 0x44,0,52,',0,0
	.dd LM3-_Delay
	.dw 0x0d,0x0a
.code
LM3:
	R2=1	// QImode move
	[28690]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,51,',0,0
	.dd LM4-_Delay
	.dw 0x0d,0x0a
.code
LM4:
L5:
	R2=[BP]	// QImode move
	R3=R2+1
	[BP]=R3	// QImode move
	PC=L3	// jump
L4:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM5-_Delay
	.dw 0x0d,0x0a
.code
LM5:
LBE2:
.debug
	.dw '.stabn 0x44,0,54,',0,0
	.dd LM6-_Delay
	.dw 0x0d,0x0a
.code
LM6:
L2:

	SP+=1
	POP BP from [SP]
	RETF
	.endp	// end of Delay

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB2-_Delay
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "i:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE2-_Delay
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME1-_Delay
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
	.dw '.stabn 0x44,0,65,',0,0
	.dd LM7-_GetKey
	.dw 0x0d,0x0a
.code
LM7:
	// total=3, vars=3
	// frame_pointer_needed: 1
.debug
	.dw '.stabn 0xa6,0,0,3',0x0d, 0x0a
.code
	PUSH BP to [SP]
	SP-=3
	BP=SP+1

	R2=BP+6
.debug
	.dw '.stabn 0x44,0,66,',0,0
	.dd LM8-_GetKey
	.dw 0x0d,0x0a
.code
LM8:
LBB3:
	R1=0	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,67,',0,0
	.dd LM9-_GetKey
	.dw 0x0d,0x0a
.code
LM9:
	R1=BP	// QImode move
	R3=BP+1
	R1=0	// QImode move
	R4=R3	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,68,',0,0
	.dd LM10-_GetKey
	.dw 0x0d,0x0a
.code
LM10:
	R1=[28674]	// QImode move
	R3=R1&255
	[28674]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,69,',0,0
	.dd LM11-_GetKey
	.dw 0x0d,0x0a
.code
LM11:
	R1=[28675]	// QImode move
	R3=R1&255
	[28675]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,70,',0,0
	.dd LM12-_GetKey
	.dw 0x0d,0x0a
.code
LM12:
	R1=[28673]	// QImode move
	R3=R1|(-256)
	[28673]=R3	// QImode move
.debug
	.dw '.stabn 0x44,0,71,',0,0
	.dd LM13-_GetKey
	.dw 0x0d,0x0a
.code
LM13:
L9:
	R1=[BP]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L11	//QImode EQ
	PC=L10	// jump
L11:
.debug
	.dw '.stabn 0x44,0,73,',0,0
	.dd LM14-_GetKey
	.dw 0x0d,0x0a
.code
LM14:
	R1=BP	// QImode move
	R3=BP+1
	R4=BP	// QImode move
	R1=BP+1
	R3=BP	// QImode move
	R3=BP+1
	[BP+2]=R3	// QImode move
	R4=[BP+2]	// QImode move
	R3=[R4]	// QImode move
	R4=R3+1
	R3=R1	// QImode move
	[R3]=R4	// QImode move
.debug
	.dw '.stabn 0x44,0,74,',0,0
	.dd LM15-_GetKey
	.dw 0x0d,0x0a
.code
LM15:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,75,',0,0
	.dd LM16-_GetKey
	.dw 0x0d,0x0a
.code
LM16:
	R3=[28672]	// QImode move
	R1=R3&(-256)
	R4=R1^(-256)
	[BP]=R4	// QImode move
.debug
	.dw '.stabn 0x44,0,76,',0,0
	.dd LM17-_GetKey
	.dw 0x0d,0x0a
.code
LM17:
	R1=BP	// QImode move
	R3=BP+1
	R4=R3	// QImode move
	R1=[R4]	// QImode move
	CMP R1,4096	// QImode compare
	NSJZ L12	//QImode EQ
.debug
	.dw '.stabn 0x44,0,77,',0,0
	.dd LM18-_GetKey
	.dw 0x0d,0x0a
.code
LM18:
	PC=L10	// jump
L12:
.debug
	.dw '.stabn 0x44,0,78,',0,0
	.dd LM19-_GetKey
	.dw 0x0d,0x0a
.code
LM19:
	PC=L9	// jump
L10:
.debug
	.dw '.stabn 0x44,0,79,',0,0
	.dd LM20-_GetKey
	.dw 0x0d,0x0a
.code
LM20:
L13:
	R3=[28672]	// QImode move
	R1=R3&(-256)
	CMP R1,(-256)	// QImode compare
	NSJNZ L15	//QImode NE
	PC=L14	// jump
L15:
.debug
	.dw '.stabn 0x44,0,81,',0,0
	.dd LM21-_GetKey
	.dw 0x0d,0x0a
.code
LM21:
	R1=1	// QImode move
	[28690]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,82,',0,0
	.dd LM22-_GetKey
	.dw 0x0d,0x0a
.code
LM22:
	PC=L13	// jump
L14:
.debug
	.dw '.stabn 0x44,0,83,',0,0
	.dd LM23-_GetKey
	.dw 0x0d,0x0a
.code
LM23:
	R3=[BP]	// QImode move
	R1=R3	// QImode move
	PC=L8	// jump
.debug
	.dw '.stabn 0x44,0,84,',0,0
	.dd LM24-_GetKey
	.dw 0x0d,0x0a
.code
LM24:
LBE3:
.debug
	.dw '.stabn 0x44,0,84,',0,0
	.dd LM25-_GetKey
	.dw 0x0d,0x0a
.code
LM25:
L8:

	SP+=3
	POP BP from [SP]
	RETF
	.endp	// end of GetKey

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB3-_GetKey
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "KeyValue:4",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "KeyNumber:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE3-_GetKey
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
	.dw '.stabn 0x44,0,95,',0,0
	.dd LM26-_main
	.dw 0x0d,0x0a
.code
LM26:
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
	.dw '.stabn 0x44,0,96,',0,0
	.dd LM27-_main
	.dw 0x0d,0x0a
.code
LM27:
LBB4:
	R1=1	// QImode move
	[BP]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,97,',0,0
	.dd LM28-_main
	.dw 0x0d,0x0a
.code
LM28:
	R1=BP	// QImode move
	R2=BP+1
	R1=0	// QImode move
	R3=R2	// QImode move
	[R3]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,98,',0,0
	.dd LM29-_main
	.dw 0x0d,0x0a
.code
LM29:
	R1=BP	// QImode move
	R2=BP+2
	R1=0	// QImode move
	R4=R2	// QImode move
	[R4]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,99,',0,0
	.dd LM30-_main
	.dw 0x0d,0x0a
.code
LM30:
	R1=255	// QImode move
	[28674]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,100,',0,0
	.dd LM31-_main
	.dw 0x0d,0x0a
.code
LM31:
	R1=255	// QImode move
	[28675]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,101,',0,0
	.dd LM32-_main
	.dw 0x0d,0x0a
.code
LM32:
	R1=0	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,102,',0,0
	.dd LM33-_main
	.dw 0x0d,0x0a
.code
LM33:
	R1=64	// QImode move
	[28679]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,103,',0,0
	.dd LM34-_main
	.dw 0x0d,0x0a
.code
LM34:
	R1=64	// QImode move
	[28680]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,104,',0,0
	.dd LM35-_main
	.dw 0x0d,0x0a
.code
LM35:
	R1=64	// QImode move
	[28677]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,105,',0,0
	.dd LM36-_main
	.dw 0x0d,0x0a
.code
LM36:
L20:
	PC=L22	// jump
	PC=L21	// jump
L22:
.debug
	.dw '.stabn 0x44,0,107,',0,0
	.dd LM37-_main
	.dw 0x0d,0x0a
.code
LM37:
	CALL _GetKey	// call with return value
	R2=BP	// QImode move
	R3=BP+1
	R2=R3	// QImode move
	[R2]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,108,',0,0
	.dd LM38-_main
	.dw 0x0d,0x0a
.code
LM38:
	R1=BP	// QImode move
	R2=BP+1
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	CMP R1,0	// QImode test
	NSJZ L23	//QImode EQ
.debug
	.dw '.stabn 0x44,0,109,',0,0
	.dd LM39-_main
	.dw 0x0d,0x0a
.code
LM39:
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
L23:
.debug
	.dw '.stabn 0x44,0,110,',0,0
	.dd LM40-_main
	.dw 0x0d,0x0a
.code
LM40:
	R1=BP	// QImode move
	R2=BP+2
	R3=R2	// QImode move
	R1=[R3]	// QImode move
	R2=R1&1
	CMP R2,0	// QImode test
	NSJZ L24	//QImode EQ
.debug
	.dw '.stabn 0x44,0,112,',0,0
	.dd LM41-_main
	.dw 0x0d,0x0a
.code
LM41:
	R1=[BP]	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,113,',0,0
	.dd LM42-_main
	.dw 0x0d,0x0a
.code
LM42:
	R1=[BP]	// QImode move
	R2=R1 lsl 1
	[BP]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,114,',0,0
	.dd LM43-_main
	.dw 0x0d,0x0a
.code
LM43:
	R1=[BP]	// QImode move
	CMP R1,256	// QImode compare
	NSJNZ L25	//QImode NE
.debug
	.dw '.stabn 0x44,0,115,',0,0
	.dd LM44-_main
	.dw 0x0d,0x0a
.code
LM44:
	R1=1	// QImode move
	[BP]=R1	// QImode move
L25:
.debug
	.dw '.stabn 0x44,0,116,',0,0
	.dd LM45-_main
	.dw 0x0d,0x0a
.code
LM45:
	CALL _Delay	// call without return value
.debug
	.dw '.stabn 0x44,0,117,',0,0
	.dd LM46-_main
	.dw 0x0d,0x0a
.code
LM46:
	PC=L26	// jump
L24:
.debug
	.dw '.stabn 0x44,0,120,',0,0
	.dd LM47-_main
	.dw 0x0d,0x0a
.code
LM47:
	R1=[BP]	// QImode move
	[28672]=R1	// QImode move
.debug
	.dw '.stabn 0x44,0,121,',0,0
	.dd LM48-_main
	.dw 0x0d,0x0a
.code
LM48:
	R1=[BP]	// QImode move
	// ashrqi3_rr1 R2 R1 1
	R2=R1 asr 1
	[BP]=R2	// QImode move
.debug
	.dw '.stabn 0x44,0,122,',0,0
	.dd LM49-_main
	.dw 0x0d,0x0a
.code
LM49:
	R1=[BP]	// QImode move
	CMP R1,0	// QImode test
	NSJNZ L27	//QImode NE
.debug
	.dw '.stabn 0x44,0,123,',0,0
	.dd LM50-_main
	.dw 0x0d,0x0a
.code
LM50:
	R1=256	// QImode move
	[BP]=R1	// QImode move
L27:
.debug
	.dw '.stabn 0x44,0,124,',0,0
	.dd LM51-_main
	.dw 0x0d,0x0a
.code
LM51:
	CALL _Delay	// call without return value
L26:
.debug
	.dw '.stabn 0x44,0,127,',0,0
	.dd LM52-_main
	.dw 0x0d,0x0a
.code
LM52:
	PC=L20	// jump
L21:
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM53-_main
	.dw 0x0d,0x0a
.code
LM53:
LBE4:
.debug
	.dw '.stabn 0x44,0,128,',0,0
	.dd LM54-_main
	.dw 0x0d,0x0a
.code
LM54:
L19:

	SP+=4
	POP BP from [SP]
	RETF
	.endp	// end of main

.debug
	.dw '.stabn 0xc0,0,0,',0,0
	.dd LBB4-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabs "LedControl:1",128,0,0,0',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "Key:4",128,0,0,1',0x0d,0x0a
.CODE
.debug
	.dw '.stabs "flag:1",128,0,0,2',0x0d,0x0a
.CODE
.debug
	.dw '.stabn 0xe0,0,0,',0,0
	.dd LBE4-_main
	.dw 0x0d,0x0a
.code
.debug
	.dw '.stabf ',0,0
	.dd LME3-_main
	.dw 0x0d,0x0a
.code
LME3:
	.end
