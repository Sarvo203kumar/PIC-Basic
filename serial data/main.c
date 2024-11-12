#include <pic.h>
#include"pic_serial.h"
#define led RC1

unsigned char a=0,b=1;

void main()
{
TRISC =0xbf;
PORTC=0xbf;
Serial_Init(9600);

while(1)
{
unsigned char dat[]="Working ...";
while(TXIF==0);TXIF=0;
TXREG=dat[a];
if(dat[a]!='\0')
{ a++;
break;
}
else
{a=0;
}
}
}

