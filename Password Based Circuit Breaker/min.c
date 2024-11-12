#include <pic.h>

unsigned char a=0;
unsigned char dat[]="Working...";

void main()
{
TRISC = 0xbf;
PORTC= 0xbf;
SYNC=0;
SPEN=1;
TXEN=1;
BRGH=1;
SPBRG=25;

while(1)
{
while(TXIF==0);TXIF=0;
TXREG=dat[a];
(dat[a] != '\0')? a++;a=0;
_delay(10000);
}
}