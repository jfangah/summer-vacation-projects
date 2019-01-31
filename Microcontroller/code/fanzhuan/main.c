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
int num2[6];
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
	unsigned KeyValue,time;
	int i;
	// ��ʼ�� IOA ����Ӧ�˿�Ϊ��������
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
	//�ȴ��м����£����ж˿ڱ�Ϊ 0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL))
	{
		time++;
		*P_Watchdog_Clear=1;
		for(i=1;i<=6;i++)
		LedDispDig(i,num[i-1]);
		if(time>10000)
			break;
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
// ������
//========================================================//
int main()
{
	unsigned KeyValue,Time,temp1,temp2,temp;
	unsigned flag=0;
	int i;
	while(1)
	{
		KeyValue=GetKey(num); // �õ� 16 λ��ֵ
		if(KeyValue==0x8000)//��λ��6�������ȫ����0
		{
			num[0]=0;
			num[1]=0;
			num[2]=0;
			num[3]=0;
			num[4]=0;
			num[5]=0;
			num2[0]=0;
			num2[1]=0;
			num2[2]=0;
			num2[3]=0;
			num2[4]=0;
			num2[5]=0;
			temp1=0;
			temp2=0;
		}
		if(KeyValue==0x1000)//����5λ����һ�������
		{
			num2[0]=3;
			num2[1]=3;
			num2[2]=3;
			num2[3]=3;
			num[4]=1;
			num[5]=0;
			temp1=0;
			temp=0;
		}
		if(KeyValue==0x2000)//����6λ���ڶ��������
		{
			num2[0]=3;
			num2[1]=3;
			num2[2]=3;
			num2[3]=3;
			num[4]=0;
			num[5]=2;
			temp1=temp;
			temp=0;
		}
		if(KeyValue==0x0100)//����1,234��ת
		{
			num2[1]=num2[1]*(-1);
			num2[2]=num2[2]*(-1);
			num2[3]=num2[3]*(-1);
			temp++;
		}
		if(KeyValue==0x0200)//����2,134��ת
		{
			num2[0]=num2[0]*(-1);
			num2[2]=num2[2]*(-1);
			num2[3]=num2[3]*(-1);
			temp++;
		}
		if(KeyValue==0x0400)//����3,124��ת
		{
			num2[0]=num2[0]*(-1);
			num2[1]=num2[1]*(-1);
			num2[3]=num2[3]*(-1);
			temp++;
		}
		if(KeyValue==0x0800)//����4,123��ת
		{
			num2[0]=num2[0]*(-1);
			num2[1]=num2[1]*(-1);
			num2[2]=num2[2]*(-1);
			temp++;
		}
		if(KeyValue==0x4000)//����7����ʾ˫���ɼ�
		{
			temp1=temp1;
			temp2=temp;
			num[0]=temp1/10;
			num[1]=temp1%10;
			num[2]=temp/10;
			num[3]=temp%10;
			num2[0]=0;
			num2[1]=0;
			num2[2]=0;
			num2[3]=0;
			num[4]=1;
			num[5]=2;
		}
		while(1)
		{
			for(i=1;i<=6;i++)
			{
				if(num2[i-1]==3)
					num[i-1]=6;
				if(num2[i-1]==(-3))
					num[i-1]=9;
				LedDispDig(i,num[i-1]); //�ڵ��������������ʾ���Ĵ������ֵ��1~8��
			}
			if((*P_IOA_Data&KEY_ALL)^KEY_ALL)
			break;
		}
	}
}