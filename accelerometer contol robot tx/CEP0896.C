
#include<pic.h>
#include"pic_lcd8.h"
#include"pic_serial.h"
#include "pic_adc.h"

#define rf1 RB0
#define rf2 RB1
#define rf3 RB2
#define rf4 RB3


unsigned int count,sec,b,temp,pres,hb,st,shb,sp,a=0,n1=0,n2=0,n3=0,x,y,z;
unsigned char cu=0xc0,kc,val1[12],s=0,j=0,u=0,qq=1;
unsigned char c[5]={'1','2','3','4'};

unsigned int aa,add=0xc0,ss=0,f[5],i;

void Gsm_Send();
void Gsm();
void number_entering();
void keypad();
void keypadd();
void main()
{	
	TRISC=0xC0;
	TRISD=0x00;
	TRISB=0x00;
	TRISA=0x0f;


	Lcd8_Init();
	Delay(6500);
	Lcd8_Display(0x80,"--HAND MOVEMENT-",16);
	Lcd8_Display(0xC0,"BSD ROBOT CONTRL",16);
	Delay(65000);Delay(65000);
	//Lcd8_Command(1);
	Serial_Init(9600);
	Receive(0);rf1=1;rf2=1;rf3=1;rf4=1;
	Lcd8_Command(1);
	Lcd8_Display(0x80,"X:    Y:   Z:   ",16);
	Lcd8_Display(0xC0,"                ",16);
	while(1)
	{	
		
x=Adc8_Cha(0);
 y=Adc8_Cha(1);
 z=Adc8_Cha(2);
       
Lcd8_Decimal3(0x82,x);
Lcd8_Decimal3(0x88,y);
Lcd8_Decimal3(0x8D,z);

if((x>=80&&x<=85)&& (z>76&& z<=82))
{ Lcd8_Display(0xC6,"STOP      ",10);
rf1=1;rf2=1;rf3=1;rf4=1;
}
if((x>=96&&x<=100)&& (z>75&& z<=82))
{ Lcd8_Display(0xC6,"LEFT      ",10);
rf1=1;rf2=1;rf3=1;rf4=0;
}

if((x>=64&&x<=70)&& (z>79&& z<=84))
{ Lcd8_Display(0xC6,"RIGHT     ",10);
rf1=1;rf2=1;rf3=0;rf4=1;
}

if((z>=65&&z<=75)&& (x>79&& x<=85))
{ Lcd8_Display(0xC6,"START     ",10);
rf1=0;rf2=1;rf3=1;rf4=1;
}

if((z>=95&&z<=101)&& (x>80&& x<=89))
{Lcd8_Display(0xC6,"REVERSE   ",10);
rf1=1;rf2=0;rf3=1;rf4=1;
}
	
}
}