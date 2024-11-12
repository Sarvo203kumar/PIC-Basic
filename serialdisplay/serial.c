#include<pic.h>
#include "piclcd4.h"


//__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_OFF & CP_OFF & BOREN_ON & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);
#ifdef _XTAL_FREQ
#define _XTAL_FREQ 20000000UL
#endif

void ser_int();
void tx(unsigned char);
unsigned char rx();
void txstr(unsigned char *);
unsigned char val;
void main()
{
    TRISC4=0;
    TRISC5=0;
	TRISD=0x00;
    Lcd8_Init();
	Delay(6500);
	Lcd8_Display(0x80,"--serial  test--",16);
    Lcd8_Display(0xC0,"                ",16);
    Delay(6500);
    Lcd8_Command(1);
    
    
    TRISC6=0;   //Output (TX)
   
        TRISC7=1;   //Input (RX)
    ser_int();
    txstr("PIC16F877A SERIAL TEST\n\r\r");

    while(1) 
{
        
        tx(rx());
       Lcd8_Command(0x0c);
       Lcd8_Write(0X80,rx());
       // Lcd8_Decimal2(0x80,rx);
        
    }   
}   

void ser_int()
{
    TXSTA=0x20; //BRGH=0, TXEN = 1, Asynchronous Mode, 8-bit mode
    RCSTA=0b10010000; //Serial Port enabled,8-bit reception
    SPBRG=17;           //9600 baudrate for 11.0592Mhz
    TXIF=RCIF=0;
}
    
void tx(unsigned char a)
{
    TXREG=a;
    while(!TXIF);
    TXIF = 0;
}

unsigned char rx()
{
    while(!RCIF);
    RCIF=0;
    return RCREG;
}

void txstr(unsigned char *s)
{
    while(*s) {
        tx(*s++);
    }
}


