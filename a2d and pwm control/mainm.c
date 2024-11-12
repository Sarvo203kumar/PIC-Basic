#include<pic.h>
#include"pic_adc.h"
void delay(int a)  
{ 
for(int i=0;i<a;i++)
{
for(int j=0;j<144;j++);
}
}

void main()
{
TRISA=0xff;
TRISC=0x00;
CCP1CON =0x0F;
T2CON=0x04;
unsigned int tep;
CCPR1L=40.5;
while(1)
{
tep=Adc8_Cha(1);
PR2=tep;
delay(1);
}
}

