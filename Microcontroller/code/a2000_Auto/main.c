  //======================================================
//  The information contained herein is the exclusive property of
//  Sunnnorth Technology Co. And shall not be distributed, reproduced,
//  or disclosed in whole in part without prior written permission.
//          (C) COPYRIGHT 2003  SUNNORTH TECHNOLOGY CO.
//                       ALL RIGHTS RESERVED
//  The entire notice above must be reproduced on all authorized copies.
//========================================================

//============================================================
//  �������ƣ�A2000_key.scs
//  ��������:����A2000�������ŷ�ʽ���Զ��������ź��ֶ��������֣��˷���Ϊ�Զ������������š�
//       
//  �ļ���Դ�����Ӿ���ר��---A2000�Զ���������
//     
//  IDE������   SUNPLUS u'nSPTM  IDE 1.8.0
//
//  �漰�Ŀ⣺
//         SACMV25.lib
//  ����ļ�:
//          hardware.asm//          
//    	    isr.asm       
//          A2000.inc
//          A2000.h       
//          
//  ����:          2003-7-7
//===============================================
//============================================================
// �ļ����ƣ�main.c
// ʵ�ֹ��ܣ�����A2000��ʽ�Զ�����ѭ������
// ���ڣ�    2003/7/7
//============================================================
#include "a2000.h"
#include "a2000.h"

#define		DAC1			1
#define		DAC2			2
#define		Ramp_UpDn_Off	0
#define		Ramp_UpDn_On	3
#define		Manual			0
#define		Auto			1
#define		Full			1
#define		Empty			2

#define P_IOA_Data (volatile unsigned int *)0x7000
#define P_IOA_Buffer (volatile unsigned int *)0x7001
#define P_IOA_Dir (volatile unsigned int *)0x7002
#define P_IOA_Attrib (volatile unsigned int *)0x7003
#define P_IOB_Data (volatile unsigned int *)0x7005
#define P_IOB_Buffer (volatile unsigned int *)0x7006
#define P_IOB_Dir (volatile unsigned int *)0x7007
#define P_IOB_Attrib (volatile unsigned int *)0x7008
#define LED_SEG 0x00ff // IOB0~IOB7 ��������ܻ�Ƶ�״̬
#define LED_DIG 0x3f00 // IOB8~IOB13 �ֱ����6 �������
#define P_Watchdog_Clear (volatile unsigned int *)0x7012
#define KEY_ALL 0xff00 // ʹ��IOA8~IOA15 ��Ϊ���������
int num[6];
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 ʮ�����ֵ�LED ����
void LedDispDig(int Pos,int Dig)
{
	*P_Watchdog_Clear=1;
// ��ʼ��IOB Ϊͬ�����
	*P_IOB_Dir|=LED_SEG+LED_DIG;
	*P_IOB_Attrib|=LED_SEG+LED_DIG;
	*P_IOB_Data=(unsigned)0x0100<<(Pos-1); // �����ֵ�λ��ת��ΪIOB ��8 λֵ��ѡ����Ӧ��
// �����
	*P_IOB_Data|=DigCode[Dig]; // ������ת��Ϊ���룬��ΪIOB ��8 λ���
}

unsigned GetKey(void)
{
	unsigned KeyValue,i,temp=0;
// ��ʼ��IOA ����Ӧ�˿�Ϊ��������
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
//�ȴ��м����£����ж˿ڱ�Ϊ0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL)) //�����ȴ�ֱ���м�����
	{
		*P_Watchdog_Clear=1;
		temp++;
		for(i=1;i<=6;i++)
	    {
	     	LedDispDig(i,num[i-1]);
    	}
		if(temp>2000)
			break;
	}
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
//�ȴ�����̧��
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL)
	{
		*P_Watchdog_Clear=1;
		for(i=1;i<=6;i++)
	    {
	     	LedDispDig(i,num[i-1]);
    	}
	}
	return KeyValue;
}

unsigned GetKey1(void)
{
	unsigned KeyValue,i,temp=0;
// ��ʼ��IOA ����Ӧ�˿�Ϊ��������
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
//�ȴ��м����£����ж˿ڱ�Ϊ0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL)) //�����ȴ�ֱ���м�����
	{
		*P_Watchdog_Clear=1;
		for(i=1;i<=6;i++)
	    {
	     	LedDispDig(i,num[i-1]);
    	}
	}
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
//�ȴ�����̧��
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL)
	{
		*P_Watchdog_Clear=1;
		for(i=1;i<=6;i++)
	    {
	     	LedDispDig(i,num[i-1]);
    	}
	}
	return KeyValue;
}


int main()
{
    int iSpeech_index = 0,i,value=7,t,m=0,Key1=0;
    int   iMode,flag=0,Key;
    num[5]=1;
    iMode = Auto;
  	*P_IOA_Dir = 0x00ff; //����A �ڵ�8 λΪͬ����������8 λΪͬ����������
	*P_IOA_Attrib = 0x00ff;
	*P_IOA_Data = 0xff00;
    if(iMode == Auto)								        //�����Զ���ʽ����
    {							
	    SACM_A2000_Initial(iMode);	                        //�Զ���ʽ���ų�ʼ��
	   	SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);   //�������������š�����ͨ��������������/������
		//Key1=GetKey1();
		//if(Key1!=0)
        while(1){
            while(SACM_A2000_Status()&0x01) 
            {
	    	    SACM_A2000_ServiceLoop();                   //��ȡ�������ݲ���������������
	    	    if((*P_IOA_Data&KEY_ALL)^KEY_ALL) //8��������ͣ  
	    	     {
	    	     	SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     	for(i=0;i<2000;i++)
	    	     		*P_Watchdog_Clear=1;;
	    	     	Key=GetKey();
	    	     	if(Key==0x0100)
	    			{
	    				SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    				num[5]=1;
	    				flag=0; //һ�����ƣ��б�ѭ��
	    			}
	    			else if(Key==0x0200)
	    			{
	    				SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    				num[5]=2;
	    				flag=1; //�������ƣ�����ѭ��
	    			}	
	    	     	else if(Key==0x0800)  //�ļ����ƣ�����ѭ����ʱ�����²��ţ��б�ѭ����ʱ�򲥷���һ��
	    	     	{
	    	     		SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     		SACM_A2000_Resume();
	    	     		break;
	    	     	}
	    	     	else if(Key==0x1000)  //������ƣ���������
	    	     	{
	    	     		SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     		if(value<15)
	    	     		value++;
	    	     		else continue;SACM_A2000_Volume(value);
	    	     	}
	    	     	else if(Key==0x2000) //�������ƣ�������С
	    	     	{
	    	     		SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     		if(value>0)
	    	     		
	    	     		value--;
	    	     		 
	    	     		else continue;
	    	     		SACM_A2000_Volume(value);
	    	     	}
	    	     	else if(Key==0x8000)
	    	     	{
	    	     		SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     		if(m==0)
	    	     		SACM_A2000_Pause();
	    	     		else
	    	     		SACM_A2000_Resume();
	    	     		
	    	     		m^=1;
	    	     	}
	    	     	else if(Key=0x0400);
	    	     	else if(Key=0x4000);
	    	     	else if(Key=0x0001);
	    	     	else if(Key=0x0002);
	    	     	else if(Key=0x0004);
	    	     	else if(Key=0x0008);
	    	     	else if(Key=0x0010);
	    	     	else if(Key=0x0020);
	    	     	else if(Key=0x0040);
	    	     	else if(Key=0x0080);
	    	     	
	    	     	
	    	     }
      
	    	     	num[3]=iSpeech_index+1;
	    	     	num[1]=value%10;
	    	     	num[0]=value/10;
	    	     	for(i=1;i<=6;i++)
	    	     	{
	    	     	LedDispDig(i,num[i-1]);
	    	     	}
            }
            if(flag==0)
            	iSpeech_index^=1;
           
	      	SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);//�������������š�����ͨ��������������/������
        } 
    } 
 }   