#include<pic.h>
#include "pic_lcd8.h"
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

void ser_int();
void tx(unsigned char);
char receiveChar(void);
void txstr(unsigned char *);
unsigned char receiveData,led;
#define led1 RB1
#define led2 RB2

void main()
{
TRISC=0XC0;
TRISB1=0;
TRISB2=0;
TRISD=0X00;
TRISA=0X0f;
TRISC6=0;
TRISC7=1;
led1=led2=0;
ser_int();
txstr("PIC16F877A SERIAL TEST\n\r\r");

Lcd8_Init();
Lcd8_Display(0x80,"SERIAL TEST",11);
Delay(65000);Delay(65000);
Lcd8_Command(0x0c);
Lcd8_Command(0x01);
while(1)
{

receiveData =receiveChar();
tx(receiveData);
Lcd8_Decimal3(0xc0,receiveData);


if(receiveData==119)
{
led1=1;
led2=0;
Lcd8_Display(0x80,"LED ON",6);
Delay(6500);
}
else if(receiveData==101)
{
led1=0;
led2=1;
Lcd8_Display(0x80,"LED OFF",7);
Delay(6500);
}
else
{ 
led1=0;
led2=0;
Lcd8_Display(0x80,"ALL OFF",7);
Lcd8_Command(0x01);
}
}
}
void ser_int()
{
TXSTA=0x20;
RCSTA=0b10010000;
SPBRG=17;
TXIF=RCIF=0;
}

void tx(unsigned char a)
{
TXREG=a;
while(!TXIF);
TXIF=0;
}
char receiveChar(void)
{
while(!RCIF);
RCIF=0;
return RCREG;
}
void txstr(unsigned char *s)
{
while(*s){
tx(*s++);
}
}
							