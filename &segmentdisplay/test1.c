#include <pic.h>


void delay(long int);

unsigned char value1,value2,var;
unsigned char digit[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90}; //0,1,2.....9 (COMMON ANODE)
int i=0;
void main()
{
TRISB = 0x00;
TRISC = 0xfc;
while(1)
{
value1=var/10;value2 = var%10;
for(i=0;i<10;i++)
{
RC0=1; //En 10nth digit
PORTB = digit[value1];delay(7000);
for(i=0;i<10;i++)
{
if(var>99){var=0;} else var++;
value2 = var%10;
RC1=1;
PORTB = digit[value2];delay(7000);
delay(100);
}}
}
}

void delay(long int k)
{
while(k--);
}