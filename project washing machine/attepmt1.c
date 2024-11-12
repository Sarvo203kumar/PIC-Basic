+-+-#include<pic.h>
#define water RD0
#define m1 RD1
#define m2 RD2
#define release RD3
#define min RB0
#define sw RB1
#define sm RB2
#define sens RB3
int i=0;

void delay()
{
	unsigned int a;
	for (a=0;a<10000;a++);
	}

void main()
{
min=sens=sw=sm=water=release=m1=m2=0;
TRISB=0xff;
TRISD =0;

while(1)
{
water =0;
if(sw ==1 && sm ==0)  //turbo mode on
{
	if(sens == 0)
	{
 	water =1;
	delay(10);
	}
	else if(sens ==1)
	{
	water =0;
		for (i=0;i<100;i++)
		{
		m2=0;m1 =1;
		delay(100);
		m1=0;m2=1;
		delay(100);
		}
	m1=0;m2=0;
	release = 1;
	delay(150000);
	release =0;
	m1=1;
	delay(150000000);
	m1=0;
}
}
if(sw ==0 && sm ==1) //normal mode on
{
	if(sens == 0)
	{
	 water =1;
	delay(10);
	}
	else if(sens ==1)
	{
	water =0;
	for (i=0;i<80;i++)
	{
	m2=0;m1 =1;
	delay(100);
	m1=0;m2=1;
	delay(100);
	}
	m1=0;m2=0;
	release = 1;
	delay(10000000);
	release =0;

m1=1;
delay(1500);
m1=0;
}
}
else
{
m1=0;
delay(1500);
m1=0;
}	
}
}
