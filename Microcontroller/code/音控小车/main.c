#define	P_IOA_Data 				(volatile unsigned int *)0x7000   
#define P_IOA_Buffer 			(volatile unsigned int *)0x7001
#define P_IOA_Dir 				(volatile unsigned int *)0x7002
#define P_IOA_Attrib 			(volatile unsigned int *)0x7003
#define P_IOA_Latch 			(volatile unsigned int *)0x7004
#define P_IOB_Data				(volatile unsigned int *)0x7005  
#define P_IOB_Buffer			(volatile unsigned int *)0x7006   
#define P_IOB_Dir				(volatile unsigned int *)0x7007   
#define P_IOB_Attrib			(volatile unsigned int *)0x7008   

#define P_Watchdog_Clear		(volatile unsigned int *)0x7012   
#define P_SystemClock			(volatile unsigned int *)0x7013  
#include "bsrsd.h"
#include "hardware.h"

#define NAME_ID 		0x100
#define COMMAND_ONE_ID 	0x101
#define COMMAND_TWO_ID 	0x102
#define COMMAND_THREE_ID 	0x103
#define COMMAND_FORE_ID 	0x104
#define COMMAND_FIVE_ID 	0x105
#define COMMAND_SIX_ID 	0x106
#define COMMAND_SEVEN_ID 	0x107
#define RSP_INTR		0
#define RSP_NAME		1
#define RSP_FIRE		2
#define RSP_GUARD		3
#define RSP_AGAIN		4
#define RSP_NOVOICE		5
#define RSP_NAMEDIFF	6
#define RSP_CMDDIFF		7
#define RSP_STAR		8
#define RSP_MASTER		9
#define RSP_HERE		10
#define RSP_GUNSHOT		0
#define RSP_PATROL		11
#define RSP_READY		12
#define RSP_COPY		13
#define RSP_NOISY		14

#define LED_SEG 0x00ff // IOB0~IOB7 ��������ܻ�Ƶ�״̬
#define LED_DIG 0x3f00 // IOB8~IOB13 �ֱ����6 �������
#define LED_LIGHTS 0x4000 // IOB14 ����LED ��
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 ʮ�����ֵ�LED ����
int num[6],count=0;
extern  unsigned int BSR_SDModel[100];
unsigned int commandID;
unsigned int g_Ret;
//..................ȫ�̱���....................
int gActivated = 0;	//�ñ������ڼ���Ƿ��д����������ʶ������
                    //Ϊ�����������λ��1 
					 
int gTriggerRespond[] = {RSP_MASTER, RSP_HERE, RSP_MASTER};
int gComm2Respond[] = {RSP_PATROL, RSP_READY, RSP_COPY};
extern void ClearWatchDog();
int PlayFlag = 0;
unsigned  int uiSpeed=0;
//unsigned int *ClearWatchdog = 0x7012;
void PlayRespond(int Result)
{
	int i;
	BSR_StopRecognizer();
	SACM_S480_Initial(1);
	SACM_S480_Play(Result, 3, 3);
	while((SACM_S480_Status()&0x0001) != 0)
	{
		for(i=1;i<=6;i++)
		{
			LedDispDig(i,num[i-1]);
		}
		SACM_S480_ServiceLoop();
		ClearWatchDog();
	}
	SACM_S480_Stop();
	BSR_InitRecognizer(BSR_MIC);
	BSR_EnableCPUIndicator();	
}

int TrainWord(int WordID, int RespondID)
{
	int res;
	PlayRespond(RespondID);
	while(1)
	{
		int t;
		res = BSR_Train(WordID,BSR_TRAIN_TWICE);
		for(t=1;t<=6;t++)
		{
			LedDispDig(t,num[t-1]);
			Delay();
		}
		if(res == 0) break;
		switch(res)
		{
		case -1: 									//û�м�������
			PlayRespond(10);
			return -1;
		case -2: 									//��Ҫ����ѵ��һ��
			PlayRespond(10);
			break;
		case -3: 									//����̫��
			PlayRespond(10);
			return -1;		
		case -4: 									//���ݿ���
		 	return -1;
		case -5: 									//����������ͬ
			if(WordID == NAME_ID)	PlayRespond(10);//�����������Ʋ�ͬ
			else					PlayRespond(10);//�����������ͬ
			return -1;
		case -6: 									//��Ŵ���
			return -1;
		}
	}
	return 0;
}
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
void Delay()
{ // ��ʱ�ӳ���
	unsigned int i;
	for (i=0; i<500	; i++)
	{
	*P_Watchdog_Clear=0x0001; // �忴�Ź�
	}
}
int main()
{
	int t,res,jk,k, timeCnt=0, random_no=0,iMoveFlag=0xffff,BS_Flag=0,iMoveFlagBS=0,iCarState=0,iCarSpeed=14;
	
	int uiIOB,i,ulAddr,Ret,free;
	unsigned int *p;
 	p=0xef00;
	BS_Flag=*p;
	BS_Flag=0xffff;
	
 	ClearWatchDog(); 
	SP_Init_IOB(0xff00,0x0000,0xff00); 
	SP_Init_IOA(0x0000,0x0000,0x0000);


    BSR_DeleteSDGroup(0);							// ��ʼ���洢��RAM
if(BS_Flag==0xffff)
{
	PlayRespond(11);				    		//���ſ�ʼѵ������ʾ��
	//..........ѵ������..............................
	while(TrainWord(NAME_ID,0) != 0) ;
	//..........ѵ����һ������.......................
	while(TrainWord(COMMAND_TWO_ID,2) != 0) ;
	//..........ѵ���ڶ�������.......................
	while(TrainWord(COMMAND_ONE_ID,1) != 0) ;
	//..........ѵ������������.......................
	while(TrainWord(COMMAND_THREE_ID,3) != 0) ;
	//..........ѵ������������.......................
	while(TrainWord(COMMAND_FORE_ID,4) != 0) ;
	BS_Flag=0xaaaa;
	F_FlashWrite1Word(0xef00,0xaaaa);
    F_FlashErase(0xe000);
    F_FlashErase(0xe100);
    F_FlashErase(0xe200);
    
	ulAddr=0xe000;//********
	for(commandID=0x100;commandID<0x105;commandID++)
	{
		g_Ret=BSR_ExportSDWord(commandID);
		while(g_Ret!=0)
		g_Ret=BSR_ExportSDWord(commandID);//		
		for(i=0;i<100;i++)
		{
		    F_FlashWrite1Word(ulAddr,BSR_SDModel[i]);
	
			ulAddr+=1;												
		}
		}	//***********************
}
if(BS_Flag==0xaaaa)	
{
BSR_DeleteSDGroup(0);
	p=0xe000;																					
	for(jk=0;jk<5;jk++)
	{
		for(k=0;k<100;k++)
		{
			Ret=*p;							
			BSR_SDModel[k]=Ret;				
			p+=1;													
		}					
		g_Ret=BSR_ImportSDWord();
		while(g_Ret!=0)
		g_Ret=BSR_ImportSDWord();							
	}
}
	//..........��ʼʶ������.........................
	BSR_InitRecognizer(BSR_MIC);		    		//��ʶ����ʼ��
	//BSR_EnableCPUIndicator();

	PlayRespond(12);			    			// ���ſ�ʼ��ʶ����ʾ��
	//Interrupt();
	iMoveFlag=0;
	while(1)
	{
	  
	
//	    ClearWatchdog = 0x0001; 
	   
        random_no ++;
		if(random_no >= 3) random_no = 0;
		res = BSR_GetResult();
		
		if(res > 0)							//ʶ�������
		{
			  
			if(gActivated)
			{
				timeCnt = 0;
				switch(res)
				{
				case NAME_ID:
					num[0]=0;
					PlayFlag = 0;
					PlayRespond(5);
			
					ClearWatchDog();
					iMoveFlag=1;
					iMoveFlagBS=0;
					break;
				case COMMAND_ONE_ID:
					num[0]=1;
					count=count+5;
				    PlayRespond(6);
					ClearWatchDog();
					//gActivated = 0;
					PlayFlag = 0;
				    iMoveFlag=0;
				    iCarState=0x1400;
					iMoveFlagBS=0;
					break;
				case COMMAND_TWO_ID:
					num[0]=1;
					count=count+10;
					PlayRespond(7);
					ClearWatchDog();
					//gActivated = 0;
					PlayFlag = 0;
				    iMoveFlag=0;
				    iCarState=0x1400;
					iMoveFlagBS=0;
					break;
				case COMMAND_THREE_ID:
					num[0]=1;
					count=count+15;
				 	PlayRespond(8);
					iMoveFlag=0;
					iMoveFlagBS=0;
					
					ClearWatchDog();
				    //gActivated = 0;
				    break;
				case COMMAND_FORE_ID:
					count=0;
					num[0]=0;
					PlayRespond(9);
					iMoveFlag=0; 
					iMoveFlagBS=0;
					iCarState=0;
					ClearWatchDog();
				    //gActivated = 0;
				
				    break; 
			   }				
			}
			else
			{
			//	gActivated = 1;
				if(res == NAME_ID)
				{
					ClearWatchDog(); 
					PlayRespond(5);
					iMoveFlag=1;
					iMoveFlagBS=0;
					gActivated = 1;
					timeCnt = 0;
				}
		
			}	
		}
		else if (gActivated)
		{
		
			if (++timeCnt > 450)			//������ʱ
			{
				ClearWatchDog(); 
								
				gActivated = 0;
				timeCnt = 0;
			}
		}
		num[5]=count%10;
		num[4]=(count/10)%10;
		num[3]=(count/100)%10;
		num[2]=(count/1000)%10;
		num[1]=(count/10000)%10;
		for(t=1;t<=6;t++)
		{
			LedDispDig(t,num[t-1]);
			Delay();
		}
}
}


