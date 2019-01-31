  //======================================================
//  The information contained herein is the exclusive property of
//  Sunnnorth Technology Co. And shall not be distributed, reproduced,
//  or disclosed in whole in part without prior written permission.
//          (C) COPYRIGHT 2003  SUNNORTH TECHNOLOGY CO.
//                       ALL RIGHTS RESERVED
//  The entire notice above must be reproduced on all authorized copies.
//========================================================

//============================================================
//  工程名称：A2000_key.scs
//  功能描述:凌阳A2000语音播放方式有自动语音播放和手动播放两种，此范例为自动键控语音播放。
//       
//  文件来源：电子竞赛专集---A2000自动语音播放
//     
//  IDE环境：   SUNPLUS u'nSPTM  IDE 1.8.0
//
//  涉及的库：
//         SACMV25.lib
//  组成文件:
//          hardware.asm//          
//    	    isr.asm       
//          A2000.inc
//          A2000.h       
//          
//  日期:          2003-7-7
//===============================================
//============================================================
// 文件名称：main.c
// 实现功能：利用A2000格式自动语音循环播放
// 日期：    2003/7/7
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
#define LED_SEG 0x00ff // IOB0~IOB7 控制数码管或灯的状态
#define LED_DIG 0x3f00 // IOB8~IOB13 分别控制6 个数码管
#define P_Watchdog_Clear (volatile unsigned int *)0x7012
#define KEY_ALL 0xff00 // 使用IOA8~IOA15 作为键盘输入口
int num[6];
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 十个数字的LED 编码
void LedDispDig(int Pos,int Dig)
{
	*P_Watchdog_Clear=1;
// 初始化IOB 为同相输出
	*P_IOB_Dir|=LED_SEG+LED_DIG;
	*P_IOB_Attrib|=LED_SEG+LED_DIG;
	*P_IOB_Data=(unsigned)0x0100<<(Pos-1); // 将数字的位置转换为IOB 高8 位值，选中相应的
// 数码管
	*P_IOB_Data|=DigCode[Dig]; // 将数字转换为编码，作为IOB 低8 位输出
}

unsigned GetKey(void)
{
	unsigned KeyValue,i,temp=0;
// 初始化IOA 的相应端口为上拉输入
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
//等待有键按下，即有端口变为0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL)) //按键等待直到有键按下
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
//等待按键抬起
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
// 初始化IOA 的相应端口为上拉输入
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
//等待有键按下，即有端口变为0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL)) //按键等待直到有键按下
	{
		*P_Watchdog_Clear=1;
		for(i=1;i<=6;i++)
	    {
	     	LedDispDig(i,num[i-1]);
    	}
	}
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
//等待按键抬起
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
  	*P_IOA_Dir = 0x00ff; //设置A 口低8 位为同向低输出，高8 位为同向上拉输入
	*P_IOA_Attrib = 0x00ff;
	*P_IOA_Data = 0xff00;
    if(iMode == Auto)								        //采用自动方式播放
    {							
	    SACM_A2000_Initial(iMode);	                        //自动方式播放初始化
	   	SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);   //定义语音索引号、播放通道、允许音量增/减调节
		//Key1=GetKey1();
		//if(Key1!=0)
        while(1){
            while(SACM_A2000_Status()&0x01) 
            {
	    	    SACM_A2000_ServiceLoop();                   //获取语音数据并将其填入解码队列
	    	    if((*P_IOA_Data&KEY_ALL)^KEY_ALL) //8键控制暂停  
	    	     {
	    	     	SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     	for(i=0;i<2000;i++)
	    	     		*P_Watchdog_Clear=1;;
	    	     	Key=GetKey();
	    	     	if(Key==0x0100)
	    			{
	    				SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    				num[5]=1;
	    				flag=0; //一键控制：列表循环
	    			}
	    			else if(Key==0x0200)
	    			{
	    				SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    				num[5]=2;
	    				flag=1; //二键控制：单曲循环
	    			}	
	    	     	else if(Key==0x0800)  //四键控制：单曲循环的时候重新播放，列表循环的时候播放下一首
	    	     	{
	    	     		SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     		SACM_A2000_Resume();
	    	     		break;
	    	     	}
	    	     	else if(Key==0x1000)  //五键控制：音量增加
	    	     	{
	    	     		SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);
	    	     		if(value<15)
	    	     		value++;
	    	     		else continue;SACM_A2000_Volume(value);
	    	     	}
	    	     	else if(Key==0x2000) //六键控制：音量减小
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
           
	      	SACM_A2000_Play(iSpeech_index,DAC1,Ramp_UpDn_On);//定义语音索引号、播放通道、允许音量增/减调节
        } 
    } 
 }   