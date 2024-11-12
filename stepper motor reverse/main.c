#include <pic.h>

void delay(long int);

//unsigned char a,m;

void main()
{
TRISC = 0xfb;
CCP1CON = 0x0f;
PR2 = 250;
CCPR1L = 0;
T2CON = 0x07; //Prescale 1:16 and timer2 enable
while(1)
{
 CCPR1L =  250+125;               
 T2CON |= (1<<2)|(1<<1);
 delay(30000);          
CCPR1L =  250-245;               
T2CON |= (1<<2)|(1<<1);
 delay(30000);             
}
}

void delay(long int k)
{
while(k--);
}
