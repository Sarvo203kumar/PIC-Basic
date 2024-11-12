#include<pic.h>

__CONFIG(HS & WDTDIS & PWRTEN & LVPDIS & BORDIS);
#include"pic_lcd8.h"
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif
void main()
{
TRISC=0xC0;
TRISD=0x00;

Lcd8_Init();
Delay(6500);
Lcd8_Display(0x80,"    WELCOME     ",16);
Lcd8_Display(0xC0,"LCD DISPLAY TEST",16);
Delay(6500);Delay(6500);
	}
