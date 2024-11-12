#include <pic.h>
__CONFIG(0X3F3A);
#define _XTAL_FREQ 10000000

#define  sdo=0x07.5 RC5
#define  sdi=0x07.4 RC4
#define  clk=0x07.3 RC3
#define  cs RB0

#define  tsdo TRISC5
#define  tsdi TRISC4
#define  tclk TRISC3
#define  tcs TRISB0

void main()
{
   tsdo=tclk=tcs=0;
   tsdi=1;
   SSPCON=0X20;
   SSPSTAT=0X00;
   cs=1;
   __delay_ms(10);
   
   cs=0;
   SSPBUF=0X06;//write enable.
   while(SSPIF==0); //DEFAULT==0 ==1
   SSPIF=0;
   cs=1;
   
   cs=0;
   SSPBUF=0X02;//write start.
   while(SSPIF==0); //DEFAULT==0 ==1
   SSPIF=0;
   
   SSPBUF=0X01;//16 bit first 8 bit.
   while(SSPIF==0); //DEFAULT==0 ==1
   SSPIF=0;
   
   SSPBUF=0X00;//16 bit second 8 bit.
   while(SSPIF==0); //DEFAULT==0 ==1
   SSPIF=0;
   
   SSPBUF='b';//16 bit second 8 bit.
   while(SSPIF==0); //DEFAULT==0 ==1
   SSPIF=0;
   cs=1;
   
   while(1)
   {
          
         __delay_ms(10);
   }    
}
 
 
  