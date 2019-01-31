#define P_IOA_Data 			(volatile unsigned int *)0x7000
#define P_IOA_Buffer 		(volatile unsigned int *)0x7001
#define P_IOA_Dir 			(volatile unsigned int *)0x7002
#define P_IOA_Attrib		(volatile unsigned int *)0x7003
#define P_IOB_Data 			(volatile unsigned int *)0x7005
#define P_IOB_Buffer 		(volatile unsigned int *)0x7006
#define P_IOB_Dir 			(volatile unsigned int *)0x7007
#define P_IOB_Attrib 		(volatile unsigned int *)0x7008
#define P_Watchdog_Clear 	(volatile unsigned int *)0x7012
#define LED_SEG 0x00ff // IOB0~IOB7 控制数码管或灯的状态
#define LED_DIG 0x3f00 // IOB8~IOB13 分别控制 6 个数码管
#define LED_LIGHTS 0x4000 // IOB14 控制 LED 灯
#define KEY_ALL 0xff00 // 使用 IOA8~IOA15 作为键盘输入口
int num[6];
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
	0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 十个数字的 LED 编码
//======================================================//
// 函数名称： LedDispDig
// 功能描述： 在指定的数码管上显示数字
// 语 法： void LedDispDig(int Pos,int Dig)
// 输 入： Pos: 要显示数字的数码管位置，取值范围 1~6
// Dig: 要显示的数字，取值范围 0~9
// 输 出： 无
//======================================================//
void LedDispDig(int Pos,int Dig)
{
	*P_Watchdog_Clear=1;
	// 初始化 IOB 为同相输出
	*P_IOB_Dir|=LED_SEG+LED_DIG;
	*P_IOB_Attrib|=LED_SEG+LED_DIG;
	*P_IOB_Data=(unsigned)0x0100<<(Pos-1); // 将数字的位置转换为 IOB 高 8 位值，选中相应的
	// 数码管
	*P_IOB_Data|=DigCode[Dig]; // 将数字转换为编码，作为 IOB 低 8 位输出
}
//======================================================//
// 函数名称： GetKey
// 功能描述： 等待直到有键按下并抬起，返回键值，没有去抖处理
// 语 法： unsigned GetKey(void)
// 输 入： 无
// 输 出： 16 位键值
//======================================================//
unsigned GetKey(int num[6])
{
	unsigned KeyValue,time=0;
	int i;
	// 初始化 IOA 的相应端口为上拉输入
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
	//等待有键按下，即有端口变为 0
	
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL))
	{
		time++;
		if(time>10000)
			break;
		for(i=1;i<=6;i++)
		LedDispDig(i,num[i-1]);
		*P_Watchdog_Clear=1;
	}
	for(time=0;time<100;time++)
		for(i=1;i<=6;i++)
		LedDispDig(i,num[i-1]);
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
	//等待按键抬起
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL)
	{
		for(i=1;i<=6;i++)
		LedDispDig(i,num[i-1]);
		*P_Watchdog_Clear=1;
	}
	return KeyValue;
}
//========================================================//
// 主函数  60行
//========================================================//
int main()
{
	unsigned KeyValue,Time,Key=0x0000;
	unsigned flag=0;
	int i,temp;
	//*P_IOA_Dir=0x00ff;
	//*P_IOA_Attrib=0x00ff;
	//*P_IOA_Data=0xff00;
	//*P_IOB_Dir=0x0040;
	//*P_IOB_Attrib=0x0040;
	//*P_IOB_Data=0x0040;
	
	while(1)
	{
		temp=0;
		KeyValue=GetKey(num); // 得到 16 位键值
		// 将 16 位键值转换为 1~8 数值
		//for(Time=0;Time<5000;Time++)
		//{
		//	*P_Watchdog_Clear=1;
		//}
		if(KeyValue==0x1000)
		{
			num[0]=0;
			num[1]=0;
			num[2]=0;
			num[3]=0;
			num[4]=0;
			num[5]=0;
		}
		if(KeyValue==0x0800)
		{
			flag++;
		}
		if(!(flag%2))
		{
			//*P_IOA_Data=0xff00;
			if(KeyValue==0x0100)//左边1分
			{
				num[2]++;
				if(num[2]>9)
				{
					num[2]=num[2]-10;
					num[1]++;
				}
				if(num[1]>9)
				{
					num[1]=0;//100
					num[0]++;
				}
				if(num[0]>9)
				num[0]=0;
			}
			if(KeyValue==0x0200)//左边2分
			{
				num[2]=num[2]+2;
				if(num[2]>9)
				{
					num[2]=num[2]-10;
					num[1]++;
				}
				if(num[1]>9)
				{
					num[1]=0;
					num[0]++;
				}
				if(num[0]>9)
				num[0]=0;
			}
			if(KeyValue==0x0400)//左边3分
			{
				num[2]=num[2]+3;
				if(num[2]>9)
				{
					num[2]=num[2]-10;
					num[1]++;
				}
				if(num[1]>9)
				{
					num[1]=0;
					num[0]++;
				}
				if(num[0]>9)
				num[0]=0;
			}
			if(KeyValue==0x2000)//右边1分
			{
				num[5]=num[5]+1;
				if(num[5]>9)
				{
					num[5]=num[5]-10;
					num[4]++;
				}
				if(num[4]>9)
				{
					num[4]=0;
					num[3]++;
				}
				if(num[3]>9)
				num[3]=0;
			}
			if(KeyValue==0x4000)//右边2分
			{
				num[5]=num[5]+2;
				if(num[5]>9)
				{
					num[5]=num[5]-10;
					num[4]++;
				}
				if(num[4]>9)
				{
					num[4]=0;
					num[3]++;
				}
				if(num[3]>9)
				num[3]=0;
			}
			if(KeyValue==0x8000)//右边3分
			{
				num[5]=num[5]+3;
				if(num[5]>9)
				{
					num[5]=num[5]-10;
					num[4]++;
				}
				if(num[4]>9)
				{
					num[4]=0;
					num[3]++;
				}
				if(num[3]>9)
				num[3]=0;
			}		
		}
		else
		{
			//*P_IOA_Data=0xff00;
			if(KeyValue==0x0100)//左边-1分
			{
				num[2]--;
				if(num[2]<0)
				{
					num[2]=num[2]+10;
					num[1]--;
				}
				if(num[1]<0)
				{
					num[1]=9;
					num[0]--;
				}//200
				if(num[0]<0)
				num[0]=9;
			}
			if(KeyValue==0x0200)//左边-2分
			{
				num[2]=num[2]-2;
				if(num[2]<0)
				{
					num[2]=num[2]+10;
					num[1]--;
				}
				if(num[1]<0)
				{
					num[1]=9;
					num[0]--;
				}
				if(num[0]<0)
				num[0]=9;
			}
			if(KeyValue==0x0400)//左边-3分
			{
				num[2]=num[2]-3;
				if(num[2]<0)
				{
					num[2]=num[2]+10;
					num[1]--;
				}
				if(num[1]<0)
				{
					num[1]=9;
					num[0]--;
				}
				if(num[0]<0)
				num[0]=9;
			}
			if(KeyValue==0x2000)//右边-1分
			{
				num[5]=num[5]-1;
				if(num[5]<0)
				{
					num[5]=num[5]+10;
					num[4]--;
				}
				if(num[4]<0)
				{
					num[4]=9;
					num[3]--;
				}
				if(num[3]<0)
				num[3]=9;
			}
			if(KeyValue==0x4000)//右边-2分
			{
				num[5]=num[5]-2;
				if(num[5]<0)
				{
					num[5]=num[5]+10;
					num[4]--;
				}
				if(num[4]<0)
				{
					num[4]=9;
					num[3]++;
				}
				if(num[3]<0)
				num[3]=9;
			}
			if(KeyValue==0x8000)//右边-3分
			{
				num[5]=num[5]-3;
				if(num[5]<0)
				{
					num[5]=num[5]+10;
					num[4]--;
				}
				if(num[4]<0)
				{
					num[4]=9;
					num[3]--;
				}
				if(num[3]<0)
				num[3]=9;
			}
		}
	while(1)
	{
		for(i=1;i<=6;i++)
		LedDispDig(i,num[i-1]); //在第六个数码管上显示键的代表的数值（1~8）
		if((*P_IOA_Data&KEY_ALL)^KEY_ALL)
		{
			//for(i=0;i<2000;i++)
			//	temp++;
			break;
		}
	}	
}
}