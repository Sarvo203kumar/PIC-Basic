#include<pic.h>
#define _XTAL_FREQ 20000000
void timerdelay(void);
void seq(char get)
{
{
for(int j=0;j<=7;j++)
{
PORTD=get<<j;
timerdelay();
}
for(int j=7;j>=0;j--)
{
PORTD=get<<j;
timerdelay();
}
}
}
void main(void)
{
TRISC0=1;
TRISD=0X00;
PORTD=0X00;
while(1)
{
if(RC0==0)
{
seq(1);
seq(3);
seq(7);
seq(15);
while(RC0==1)
{
PORTD=0xFF;
}
}
}
}
void timerdelay(void)
{
T1CON=0x31;
TMR1H=0x0B;
TMR1L=0xDB;
GIE=1;
PEIE=1;
 TMR1ON = 1;
for(int i=1;i<=5;i++)
{
while(!TMR1IF);
TMR1IF=0;
}
}

