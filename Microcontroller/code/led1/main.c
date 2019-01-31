//===============================================================
//
//        The information contained herein is the exclusive property of
//      Sunplus Technology Co. And shall not be distributed, reproduced,
//      or disclosed in whole in part without prior written permission.
//
//            (C) COPYRIGHT 2001   SUNPLUS TECHNOLOGY CO.
//                           ALL RIGHTS RESERVED
//
//    The entire notice above must be reproduced on all authorized copies.
//
//==============================================================
//  工程名称： led1_C.scs
//  功能描述:  用C实现发光二极管单向循环点亮
//  文件来源：《61板实验教程》"实验一 发光二极管单向循环点亮“
//  硬件连接： IOA低8位接至SEG接口控制LED的导通
//             IOB6连至DIG7通过ULN2003A控制8个LED的共阴极电平状态。
//  IDE环境：   SUNPLUS u'nSPTM  IDE 1.8.0
//
//  涉及的库：
//  组成文件:
//    	main.c
//
//  日期:  2004/8/16
//===============================================================

#define P_IOA_Data			(volatile unsigned int *)0x7000
#define P_IOA_Buffer		(volatile unsigned int *)0x7001
#define P_IOA_Dir			(volatile unsigned int *)0x7002
#define P_IOA_Attrib		(volatile unsigned int *)0x7003
#define P_IOB_Data			(volatile unsigned int *)0x7005
#define P_IOB_Buffer		(volatile unsigned int *)0x7006
#define P_IOB_Dir			(volatile unsigned int *)0x7007
#define P_IOB_Attrib		(volatile unsigned int *)0x7008

#define P_Watchdog_Clear 	(volatile unsigned int *)0x7012
#define KEY_ALL 0xff00 // 使用IOA8~IOA15 作为键盘输入口

//============================================================= 
// 函数名称:   Delay()
// 日期：		20040816 
// 功能描述:   实现延时	
// 语法格式:    void Delay(void);
//入口参数:     无
// 出口参数:    无
// 注意事项:    仅为用户模型
//=============================================================
void Delay()
{									//延时子程序
	unsigned int i;
	for(i=0; i<32768; i++){
		*P_Watchdog_Clear=0x0001;	//清WatchDog
	}	
}
//============================================================= 
// 函数名称:   GetKey()
// 日期：		20040816 
// 功能描述:   实现延时	
// 语法格式:    unsigned GetKey(void);
//入口参数:     无
// 出口参数:    无
// 注意事项:    仅为用户模型
//=============================================================
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
		if(KeyNumber!=0x1000)
		break;
	}
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL) //等待按键抬起
	{
		*P_Watchdog_Clear=1;
	}
	return KeyValue;
}
//============================================================= 
// 函数名称:    int main()  
// 日期：		20040816 		
// 功能描述:    发光二极管单向循环点亮
// 语法格式:    void main(void);
// 入口参数:     无
// 出口参数:    无
// 注意事项:    仅为用户模型
//=============================================================
int main()
{
	int LedControl = 0x0001;    
	unsigned Key = 0x0000; 
    int flag=0;
    *P_IOA_Dir = 0x00ff;         //设置A口低8位为同向低输出
	*P_IOA_Attrib = 0x00ff;
	*P_IOA_Data = 0x0000;
    *P_IOB_Dir=0x0040;           //设置B6口为高电平输出，保证LED共阴极接地
	*P_IOB_Attrib=0x0040;
	*P_IOB_Data=0x0040;
	while(1) 
	{
		Key=GetKey();
		if(Key!=0)
			flag++;
		if(flag%2)
		{
			*P_IOA_Data = LedControl;	//送数据到A口
			LedControl = LedControl << 1;
			if(LedControl == 0x0100)
    		LedControl = 0x0001;
			Delay();
		}
		else
		{
			*P_IOA_Data = LedControl;	//送数据到A口
			LedControl = LedControl >> 1;
			if(LedControl == 0x0000)
    		LedControl = 0x0100;
			Delay();
		}

	}
}

//============================================================= 
// main.c 结束
//=============================================================	