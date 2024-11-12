#include <pic.h>

#define dp PORTD
#define rs RD0
#define en RD1
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF);

void init();
void disp(unsigned char,const unsigned char*,unsigned char);
void cmd(unsigned char);
void write(unsigned char);

unsigned char a,m;
unsigned char b[]="1234567890";

void main()
{
TRISD = 0x00;
TRISB = 0xfC;
init();
while(1)
{
disp(0x80,"WRIT:",5);
for(a=0; b[a]!='\0'; a++)
{
while(WR);
EEADR = 0x00+a; EEDATA = b[a];
WREN = 1;
GIE = 0;
EECON2 = 0x55; EECON2 = 0xAA;
WR = 1;
WREN = 0;
cmd(0x85+a);write(b[a]);
}
disp(0xc0,"READ:",5);
for(a=0; a<10; a++)
{
while(RD);
EEADR = 0x00+a;
RD = 1;
cmd(0xc5+a);write(EEDATA);
}
}
}

void init()
{
cmd(0x02);
cmd(0x28);
cmd(0x06);
cmd(0x0C);
cmd(0x01);
}

void cmd(unsigned char a)
{
m = dp & 0x0f;
dp = (a & 0xf0)|m;
en=1;rs=0;
_delay(1000);
en=0;
dp = ((a<<4) & 0xf0)|m;
en=1;rs=0;
_delay(1000);
en=0;;
}

void write(unsigned char b)
{
m = dp & 0x0f;
dp = (b & 0xf0)|m;
en=1;rs=1;
_delay(1000);
en=0;rs=0;
dp = ((b<<4) & 0xf0)|m;
en=1;rs=1;
_delay(1000);
en=0;rs=0;
}

void disp(unsigned char a,const unsigned char *b,unsigned char c)
{
for(int k=0;k<=c;k++)
{
cmd(a+k);
write(b[k]);
}
}
