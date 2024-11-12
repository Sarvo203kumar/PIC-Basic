#include <pic.h>

#define _XTAL_FREQ 4000000

#define dp PORTD
#define rs RD0
#define en RD1

void init();
void disp(unsigned char,const unsigned char*,unsigned char);
void cmd(unsigned char);
void write(unsigned char);
void delay(long int);

unsigned char m;
unsigned char digit[]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90}; //0,1,2.....9

void main()
{
TRISD = 0x00;
TRISC = 0xf9;
init();
CCP1CON = CCP2CON = 0x0f;
CCPR1L = CCPR2L = 0x00;
PR2 = 255;
disp(0x80,"PWM TESTING...",14);
while(1)
{
for(int k=0,j=255; k<255,j>0; k++,j--)
{
TMR2ON = 1; CCPR1L = k; TMR2ON = 0;
TMR2ON = 1; CCPR2L = j; TMR2ON = 0;
delay(5000); 
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

void delay(long int k)
{
while(k--);
}

