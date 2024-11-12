#include<pic.h>

void delay(long int);
void main()
{
	TRISC=0xfb;
	CCP1CON=0X0f;
	PR2=250;
	CCPR1L=0;
	T2CON=0X07;
	while(1)
	{
		for(int k=15;k<90;k++){CCPR1L = k;delay(3000);}
	break;
	
	}

	
}
			
void delay(long int k)
{
	while(k--);
}