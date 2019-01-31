#define P_IOA_Data 			(volatile unsigned int *)0x7000
#define P_IOA_Buffer 		(volatile unsigned int *)0x7001
#define P_IOA_Dir 			(volatile unsigned int *)0x7002
#define P_IOA_Attrib		(volatile unsigned int *)0x7003
#define P_IOB_Data 			(volatile unsigned int *)0x7005
#define P_IOB_Buffer 		(volatile unsigned int *)0x7006
#define P_IOB_Dir 			(volatile unsigned int *)0x7007
#define P_IOB_Attrib 		(volatile unsigned int *)0x7008
#define P_Watchdog_Clear 	(volatile unsigned int *)0x7012
#define LED_SEG 0x00ff // IOB0~IOB7 ��������ܻ�Ƶ�״̬
#define LED_DIG 0x3f00 // IOB8~IOB13 �ֱ���� 6 �������
#define LED_LIGHTS 0x4000 // IOB14 ���� LED ��
#define KEY_ALL 0xff00 // ʹ�� IOA8~IOA15 ��Ϊ���������
int num[6];
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
	0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 ʮ�����ֵ� LED ����
//======================================================//
// �������ƣ� LedDispDig
// ���������� ��ָ�������������ʾ����
// �� ���� void LedDispDig(int Pos,int Dig)
// �� �룺 Pos: Ҫ��ʾ���ֵ������λ�ã�ȡֵ��Χ 1~6
// Dig: Ҫ��ʾ�����֣�ȡֵ��Χ 0~9
// �� ���� ��
//======================================================//
void LedDispDig(int Pos,int Dig)
{
	*P_Watchdog_Clear=1;
	// ��ʼ�� IOB Ϊͬ�����
	*P_IOB_Dir|=LED_SEG+LED_DIG;
	*P_IOB_Attrib|=LED_SEG+LED_DIG;
	*P_IOB_Data=(unsigned)0x0100<<(Pos-1); // �����ֵ�λ��ת��Ϊ IOB �� 8 λֵ��ѡ����Ӧ��
	// �����
	*P_IOB_Data|=DigCode[Dig]; // ������ת��Ϊ���룬��Ϊ IOB �� 8 λ���
}
//======================================================//
// �������ƣ� GetKey
// ���������� �ȴ�ֱ���м����²�̧�𣬷��ؼ�ֵ��û��ȥ������
// �� ���� unsigned GetKey(void)
// �� �룺 ��
// �� ���� 16 λ��ֵ
//======================================================//
unsigned GetKey(int num[6])
{
	unsigned KeyValue,time=0;
	int i;
	// ��ʼ�� IOA ����Ӧ�˿�Ϊ��������
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
	//�ȴ��м����£����ж˿ڱ�Ϊ 0
	
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
	//�ȴ�����̧��
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL)
	{
		for(i=1;i<=6;i++)
		LedDispDig(i,num[i-1]);
		*P_Watchdog_Clear=1;
	}
	return KeyValue;
}
//========================================================//
// ������  60��
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
		KeyValue=GetKey(num); // �õ� 16 λ��ֵ
		// �� 16 λ��ֵת��Ϊ 1~8 ��ֵ
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
			if(KeyValue==0x0100)//���1��
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
			if(KeyValue==0x0200)//���2��
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
			if(KeyValue==0x0400)//���3��
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
			if(KeyValue==0x2000)//�ұ�1��
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
			if(KeyValue==0x4000)//�ұ�2��
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
			if(KeyValue==0x8000)//�ұ�3��
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
			if(KeyValue==0x0100)//���-1��
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
			if(KeyValue==0x0200)//���-2��
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
			if(KeyValue==0x0400)//���-3��
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
			if(KeyValue==0x2000)//�ұ�-1��
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
			if(KeyValue==0x4000)//�ұ�-2��
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
			if(KeyValue==0x8000)//�ұ�-3��
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
		LedDispDig(i,num[i-1]); //�ڵ��������������ʾ���Ĵ������ֵ��1~8��
		if((*P_IOA_Data&KEY_ALL)^KEY_ALL)
		{
			//for(i=0;i<2000;i++)
			//	temp++;
			break;
		}
	}	
}
}