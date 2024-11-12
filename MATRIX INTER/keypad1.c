#include <pic.h>

#define dp PORTD
#define rs RD0
#define en RD1

void init();
void disp(unsigned char,const unsigned char*,unsigned char);
void cmd(unsigned char);
void write(unsigned char);

unsigned char a,m;

void main()
{
TRISD = 0x00;
TRISB = 0xf8;
init();
disp(0x80,"ENTERED KEY:",12);
while(1)
{
cmd(0x8c);
RB0 = 0; RB1 = 1; RB2 = 1;
if(!RB3){while(!RB3);write('1');}
if(!RB4){while(!RB4);write('4');}
if(!RB5){while(!RB5);write('7');}
if(!RB6){while(!RB6);write('*');}
RB0 = 1; RB1 = 0; RB2 = 1;
if(!RB3){while(!RB3);write('2');}
if(!RB4){while(!RB4);write('5');}
if(!RB5){while(!RB5);write('8');}
if(!RB6){while(!RB6);write('0');}
RB0 = 1; RB1 = 1; RB2 = 0;
if(!RB3){while(!RB3);write('3');}
if(!RB4){while(!RB4);write('6');}
if(!RB5){while(!RB5);write('9');}
if(!RB6){while(!RB6);write('#');}
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
