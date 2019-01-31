#define P_IOA_Data (volatile unsigned int *)0x7000
#define P_IOA_Buffer (volatile unsigned int *)0x7001
#define P_IOA_Dir (volatile unsigned int *)0x7002
#define P_IOA_Attrib (volatile unsigned int *)0x7003
#define P_IOB_Data (volatile unsigned int *)0x7005
#define P_IOB_Buffer (volatile unsigned int *)0x7006
#define P_IOB_Dir (volatile unsigned int *)0x7007
#define P_IOB_Attrib (volatile unsigned int *)0x7008
#define P_Watchdog_Clear (volatile unsigned int *)0x7012
#define LED_SEG 0x00ff // IOB0~IOB7 控制数码管或灯的状态
#define LED_DIG 0x3f00 // IOB8~IOB13 分别控制6 个数码管
#define LED_LIGHTS 0x4000 // IOB14 控制LED 灯
#define KEY_ALL 0xff00 // 使用IOA8~IOA15 作为键盘输入口
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 十个数字的LED 编码
//==================================================================================//
// 函数名称： LedDispDig
// 功能描述： 在指定的数码管上显示数字
// 语 法： void LedDispDig(int Pos,int Dig)
// 输 入： Pos: 要显示数字的数码管位置，取值范围1~6
// Dig: 要显示的数字，取值范围0~9
// 输 出： 无
//==================================================================================//
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
//==================================================================================//
// 函数名称： GetKey
// 功能描述： 等待直到有键按下并抬起，返回键值，没有去抖处理
// 语 法： unsigned GetKey(void)
// 输 入： 无
// 输 出： 16 位键值
//==================================================================================//
unsigned GetKey(void)
{
	unsigned KeyValue;
	// 初始化IOA 的相应端口为上拉输入
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
	//等待有键按下，即有端口变为0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL))
	{
		*P_Watchdog_Clear=1;
	}
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
	//等待按键抬起
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL)
	{
	*P_Watchdog_Clear=1;
	}
	return KeyValue;
}
//==================================================================================//
// 主函数
//==================================================================================//
int main()
{
	unsigned KeyValue,KeyNum,KeyMask,Time;
	int flag=0,i;
	while(1)
	{
		KeyValue=GetKey(); // 得到16 位键值
		// 将16 位键值转换为1~8 数值
		if(KeyValue!=0)
			flag++;
		KeyNum=1;
		KeyMask=0x0100;
		while (KeyMask)
		{
			// 从低到高依次检查IOB8~IOB15 的每一位
			if(KeyValue==KeyMask)
			{
				break;
			}
			else
			{
				KeyMask<<=1;
				KeyNum++;
			}
		}
		if(!KeyMask)KeyNum=0; //如果没得到正确的键值则显示"0"
		if(flag>6)flag=0;
		for(Time=0;Time<2000;Time++)
		{
		for(i=0;i<flag;i++)
			{
				LedDispDig(6-i,KeyNum); //在第六个数码管上显示键的代表的数值（1~8）
			}
		}
		LedDispDig(6,0);
	}
}