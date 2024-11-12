#include<pic.h>
#include "pic_adc.h"
#include "pic_lcd8.h"
#define m1  RB0
#define m2  RB1


void main()
{
TRISB=0x00;
TRISA=0xff;
TRISC=0xc0;
TRISD=0x00;
unsigned int tep;
unsigned int volt;
Lcd8_Init();
Delay(6500);
Lcd8_Display(0x80,"    WELCOME     ",16);
Delay(6500);
m1=m2=0;

while(1)
{
	tep=Adc8_Cha(0);
	volt=Adc8_Cha(1);
	if(volt>240 ) {
		m1=m2=0;
		Lcd8_Decimal3(0xc8,volt);}
	else if(volt<190){
		m1=m2=0;
		Lcd8_Decimal3(0xc8,volt);
		}
	else
	{
		if(tep>=40)
		{
		m1=1;
		Lcd8_Display(0x80,"    value       ",16);
		Lcd8_Decimal3(0xc0,tep);
		Lcd8_Decimal3(0xc8,volt);
		Delay(5);
		}
		else
		{
		m1=0;
		Lcd8_Display(0x80,"    value       ",16);
		Lcd8_Decimal3(0xc0,tep);
		Lcd8_Decimal3(0xc8,volt);
		Delay(5);
		}
   	 Delay(65000);
}
}
}
