#define P_IOA_Data (volatile unsigned int *)0x7000
#define P_IOA_Buffer (volatile unsigned int *)0x7001
#define P_IOA_Dir (volatile unsigned int *)0x7002
#define P_IOA_Attrib (volatile unsigned int *)0x7003
#define P_IOB_Data (volatile unsigned int *)0x7005
#define P_IOB_Buffer (volatile unsigned int *)0x7006
#define P_IOB_Dir (volatile unsigned int *)0x7007
#define P_IOB_Attrib (volatile unsigned int *)0x7008
#define P_Watchdog_Clear (volatile unsigned int *)0x7012
#define LED_SEG 0x00ff // IOB0~IOB7 ��������ܻ�Ƶ�״̬
#define LED_DIG 0x3f00 // IOB8~IOB13 �ֱ���� 6 �������
#define LED_LIGHTS 0x4000 // IOB14 ���� LED ��
#define KEY_ALL 0xff00 // ʹ�� IOA8~IOA15 ��Ϊ���������
int KeyNum[4];
const unsigned char DigCode[10]={0x3F,0x06,0x5B,
0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F}; // 0~9 ʮ�����ֵ� LED ����
//==========================================//
// �������ƣ� LedDispDig
// ���������� ��ָ�������������ʾ����
// �� ���� void LedDispDig(int Pos,int Dig)
// �� �룺 Pos: Ҫ��ʾ���ֵ������λ�ã�ȡֵ��Χ 1~6
// Dig: Ҫ��ʾ�����֣�ȡֵ��Χ 0~9
// �� ���� ��
//===========================================//
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
//============================================//
// �������ƣ� GetKey
// ���������� �ȴ�ֱ���м����²�̧�𣬷��ؼ�ֵ��û��ȥ������
// �� ���� unsigned GetKey(void)
// �� �룺 ��
// �� ���� 16 λ��ֵ
//===========================================//
unsigned GetKey(void)
{
	unsigned KeyValue;
	// ��ʼ�� IOA ����Ӧ�˿�Ϊ��������
	*P_IOA_Dir&=~KEY_ALL;
	*P_IOA_Attrib&=~KEY_ALL;
	*P_IOA_Buffer|=KEY_ALL;
	//�ȴ��м����£����ж˿ڱ�Ϊ 0
	while(!((*P_IOA_Data&KEY_ALL)^KEY_ALL))
	{
		*P_Watchdog_Clear=1;
	}
	KeyValue=(*P_IOA_Data&KEY_ALL)^KEY_ALL;
	//�ȴ�����̧��
	while((*P_IOA_Data&KEY_ALL)^KEY_ALL)
	{
		*P_Watchdog_Clear=1;
	}
	return KeyValue;
}
//============================================//
// ������
//============================================//
int main()
{
	unsigned KeyValue;
	int KeyMask=3;
	int i;
	while(1)
	{
		KeyValue=GetKey(); // �õ� 16 λ��ֵ
		for(i=0;i<4000;i++)
			*P_Watchdog_Clear=1;
		if(KeyValue==0x1000)
		{
			KeyNum[0]=0;
			KeyNum[1]=0;
			KeyNum[2]=0;
			KeyNum[3]=0;
		}
		if(KeyValue==0x0200)
		{
			KeyNum[KeyMask]=KeyNum[KeyMask]+1;
			if(KeyNum[KeyMask]>9)
				KeyNum[KeyMask]=0;
		}
		if(KeyValue==0x0400)
		{
			KeyNum[KeyMask]=KeyNum[KeyMask]-1;
			if(KeyNum[KeyMask]<0)
				KeyNum[KeyMask]=9;
		}
		if(KeyValue==0x0800)
		{
			KeyMask++;
			if(KeyMask>3)
				KeyMask=0;
		}
		if(KeyValue==0x0100)
		{
			KeyMask--;
			if(KeyMask<0)
				KeyMask=3;
		}
		
		
		while(1)
		{
		for(i=3;i<=6;i++)
			LedDispDig(i,KeyNum[i-3]); //�ڵ��������������ʾ���Ĵ������ֵ
		if((*P_IOA_Data&KEY_ALL)^KEY_ALL)
			break;
		}
	}
}


