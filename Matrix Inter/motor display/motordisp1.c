#include<pic.h>
#include "pic_lcd8.h"
#define m1 RB1
#define m2 RB2
#define m3 RB3
#define m4 RB4
#define c1 RC0
#define c2 RC1
#define c3 RC2
#define c4 RC3


void main()
{
	TRISC=0xC0;
	TRISD=0x00;
	TRISB=0x00;
m1=0,m2=0,m3=0,m4=0,c1=0,c2=0,c3=0,c4=0;
Lcd8_Init();
Lcd8_Display(0x80," Robot          ",16);
Lcd8_Display(0xC0," controlling    ",16);
Delay(6500);	
while(1){
	if( c1 == 1 && c2 ==0 && c3 ==0 && c4 ==0 )
		{
			m1=0;
			m2=1;
			m3=0;
			m4=1;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," fordwarding    ",16);
		}
	else if(c2 == 1 && c1 ==0 && c3 ==0 && c4 ==0 )
		{	m1=1;
			m2=0;
			m3=1;
			m4=0;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," Reversing      ",16);

		}
	else if(c3 == 1 && c1 ==0 && c2 ==0 && c4 ==0 )
		{
			m1=0;
			m2=0;
			m3=0;
			m4=1;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," rightward      ",16);
		}
	else if(c4 == 1 && c1 ==0 && c3 ==0 && c2 ==0 )
		{	
		    m1=1;
			m2=0;
			m3=0;
			m4=0;
			Lcd8_Display(0x80," Robot          ",16);
			Lcd8_Display(0xC0," leftward       ",16);
		}
	else 
		{
			m1=0;
			m2=0;
			m3=0;
			m4=0;
Lcd8_Display(0x80," Robot          ",16);
Lcd8_Display(0xC0," controlling    ",16);
		}
}

}
