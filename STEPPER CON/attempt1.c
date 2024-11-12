#include <pic.h>

void delay(long int);



void main()
{
TRISB = 0xf0;

while(1)
{
for(int k=0;k<4;k++)
{
PORTB = 0x01 << k; //0,90,180,270,360 (or) 0 degree
delay(10000);
} 
PORTB = 0x00; 
}
}

void delay(long int k)
{
while(k--);
}



	
