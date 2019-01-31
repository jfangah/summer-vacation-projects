#define P_IOA_Data (volatile unsigned int *)0x7000
#define P_IOA_Buffer (volatile unsigned int *)0x7001
#define P_IOA_Dir (volatile unsigned int *)0x7002
#define P_IOA_Attrib (volatile unsigned int *)0x7003
#define P_IOB_Data (volatile unsigned int *)0x7005
#define P_IOB_Buffer (volatile unsigned int *)0x7006
#define P_IOB_Dir (volatile unsigned int *)0x7007
#define P_IOB_Attrib (volatile unsigned int *)0x7008
#define P_Watchdog_Clear (volatile unsigned int *)0x7012
#define KEY_ALL 0xff00 // 使用 IOA8~IOA15 作为键盘输入口
#define LED_SEG 0x00ff //IOB0~IOB7
#define LED_DIG 0x3f00 //IOB8~IOB13
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 十个数字的 LED 编码
//===========================================//
// 函数名称： LedDispDig
// 功能描述 在指定的数码管上显示数字
// 语法： void LedDispDig(int Pos,int Dig)
// 输入： Pos: 要显示数字的数码管位置，取值范围 1~6
// Dig: 要显示的数字，取值范围 0~9
// 输出： 无
//===========================================//
void LedDispDig(int Pos,int Dig)
{
	*P_Watchdog_Clear=1;
	// 初始化 IOB 为同相输出
	*P_IOB_Dir|=LED_SEG+LED_DIG;
	*P_IOB_Attrib|=LED_SEG+LED_DIG;
	*P_IOB_Data=(unsigned)0x0100<<(Pos-1); // 将数字的位置转换为 IOB 高 8 位值，选中相应的
	*P_IOB_Data=*P_IOB_Data+(unsigned)0x8000;
	// 数码管
	*P_IOB_Data|=DigCode[Dig]; // 将数字转换为编码，作为 IOB 低 8 位输出
}
//============================================//
// GetKey
//============================================//
unsigned GetKey(void)
{
	unsigned KeyValue = 0x0000;
	unsigned KeyNumber = 0x0000;
	*P_IOA_Dir&=~KEY_ALL; //初始化IOA 的相应端口为上拉输入
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
	while(KeyValue==0) //等待有键按下，即有端口变为0
	{
	KeyNumber++;
	*P_Watchdog_Clear=1; //清看门狗
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
	if(KeyNumber==0x2000)
	break;
	}
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL) //等待按键抬起
	{
	*P_Watchdog_Clear=1;
	}
	return KeyValue;
}
//============================================//
// 主函数
//============================================//
int main()
{
	int Dig=0,TimerCnt,Key,temp=0;
	int flag1=0,flag2=0,flag3=0; // 设置循环的起始数字
	*P_IOA_Dir=0x0040;
	*P_IOA_Attrib=0x0040;
	*P_IOA_Data=0xff40;
	while(1)
	{
		Key=GetKey();
		if(Key)
			temp++;
		if(temp%2)
		{
			for(TimerCnt=0;TimerCnt<1600;TimerCnt++)
			{
				LedDispDig(6,Dig);
				LedDispDig(5,flag1);
				LedDispDig(4,flag2);
				LedDispDig(3,flag3);
			}
			Dig++;
			if(Dig>9)
			{
			Dig=0;
			flag1++;
			}
			if(flag1>5)
			{
			flag1=0;
			flag2++;
			}
			if(flag2>9)
			{
			flag2=0;
			flag3++;
			}
			if(flag3>9)
			{
			flag3=0;
			}
		}
		else
		{
			for(TimerCnt=0;TimerCnt<1600;TimerCnt++)
			{
				LedDispDig(6,Dig);
				LedDispDig(5,flag1);
				LedDispDig(4,flag2);
				LedDispDig(3,flag3);
			}
		}
			
	
	
	
	}
}