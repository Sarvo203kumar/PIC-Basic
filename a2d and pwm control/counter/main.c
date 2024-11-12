#include <pic.h>
#define dp PORTD
#define rs RD0
#define en RD1

#define inc RB0
#define dec RB1
#define res RB2

void init();
void disp(unsigned char,const unsigned char*,unsigned char);
void cmd(unsigned char);
void write(unsigned char);

unsigned char m,a;

void main()
{
TRISD = 0x00;
TRISB = 0x03;
init();
while(1)
{
disp(0x80,"COUNT:",6);
if(!inc){while(!inc);a++;}
if(!dec){while(!dec);a--;}
if(!res){while(!res);a=0;}
if(a>9){a=0;}
cmd(0x87);write(a+0x30);
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

