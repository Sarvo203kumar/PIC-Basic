#include<pic.h>
#include"pic_lcd4.h"
#include"pic_adc.h"
//#include"adc_pic.h"
//#include "pic_adc.h"
#include"pic_serial.h"
#include"Delay_us.h"




#define Alarm RD0
#define relay RD1

#define Trig RD5
#define Echo RD4

#define ir RC0
/*
#define low RD2
#define mdm RD3
#define high RD4
*/

unsigned int dis;
unsigned char gear=0,old_gear=0,I1,a[6],len,aa,set;
unsigned int spd[3],level1,level2,level3,level4,level5,level6,ct,pt,f,oiltemp,windtemp;
unsigned char temp,pressure,sec1,sec2,sec3;

int q,w,k,i=0,m[3],n[3],o[3],l[3],x,y,set1,set2,set3,set4,one=0,cc,t,v,two,three;
char s1,s2,s3,s4,s5,s6;
/****************************************************************************/
void http_send();
void gprs_init();
void http_init();
void distance();

void interrupt ISR()
		{

		if(TMR0IF==1)
		{
		 sec1++;
		 TMR0IF=0;
		 if(sec1>=15)
			{
			sec1=0;sec2++;
			}
		}
	}
void Serial_Decimal3(unsigned char val)
{
	unsigned char Lcd_h,Lcd_hr,Lcd_t,Lcd_o;

	Lcd_h=val/100;
	Lcd_hr=val%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;
	
	Serial_Out(Lcd_h+0x30);
	Serial_Out(Lcd_t+0x30);
	Serial_Out(Lcd_o+0x30);
}




/****************************************************************************/
void main()
	{
	TRISA=0xFF;
	TRISB=0x00;//0b1111 1110
	TRISC=0xFF;
	TRISD=0x90;//1001 0000
	//ADCON1=0x80;
	GIE=1;PEIE=1;
	//OPTION_REG=0x07;	
	TMR0IE=1;
	TMR0=1;

//	TMR0IE=1;
//	TMR0=1;
/****************************************************************************/
	Alarm=0;relay=1;

	Lcd8_Init();
	Lcd8_Display(0x80," CONDUCTOR SAG  ",16);
	Lcd8_Display(0xc0,"DETECT USING GSM",16);
	Delay(65000);Delay(65000);Delay(65000);
	Serial_Init(9600);
	Delay(1000);
	Receive(0);
	Lcd8_Command(0x01);Lcd8_Display(0x80,"Modem initialise",16);	
	Delay(65535);Delay(65535);Delay(65535);
	Delay(65535);Delay(65535);Delay(65535);
	Delay(65535);Delay(65535);Delay(65535);
	Lcd8_Display(0x80,"Modem initialise",16);
	Serial_Conout("AT",2);
	Serial_Out(0x0d);Serial_Out(0x0a);Delay(65000);
	Serial_Conout("AT+CMGF=1",9);
	Serial_Out(0x0d);Serial_Out(0x0a);Delay(65000);
	Serial_Conout("AT+CNMI=2,2,0,0,0",17);
	Serial_Out(0x0d);Serial_Out(0x0a);
	Delay(65000);Delay(65000);
	Lcd8_Display(0x80,"Modem inti..over",16);
	Receive(0);
	dis=20;
	//****************************************************////****************************************************//
	level1=eeprom_read(100);
	level2=eeprom_read(105);
	level3=eeprom_read(110);
	level4=eeprom_read(115);
	level5=eeprom_read(120);
	level6=eeprom_read(125);
	//****************************************************////****************************************************//
/****************************************************************************/
		Lcd8_Display(0x80,"DIS:            ",16);
		Lcd8_Display(0xC0,"SET:            ",16);
	
	while(1)
	{	
		set=Adc8_Cha(0);
	
		Lcd8_Decimal3(0Xc4,set);
		distance();
		if(dis<set){s1=2;relay=0;Alarm=1;Lcd8_Display(0xC8,"Sag Det ",8);Delay(65000);http_init();Alarm=0;}	
	
		if(dis>=set)
			{
			relay=1;Alarm=0;Lcd8_Display(0xc8," Normal ",8);
			}
	
		
		Delay(100);
	
		

	}
}


void gprs_init()
{ 

}

void http_init()
{
	Lcd8_Display(0xc0,"MSG SENDING...1.",16);Delay(5000);
	Serial_Conout("AT+CMGS=",8);Delay(5000);      		                     		
	Serial_Out('"');
	Serial_Conout("9344995345",10);
	Serial_Out('"');
	Delay(50000);
	Serial_Out(0x0d);Serial_Out(0x0a);	
   	Delay(65000);
	Serial_Conout("SAG DETECT",10);Delay(65000);Serial_Out(0x0d);Serial_Out(0x0a);
	Serial_Conout("LOCATION:N.R STREET",19);Delay(65000);
	Serial_Out(0x0d);Serial_Out(0x0a);Delay(65000);
	Serial_Out(0x1a);Delay(50000);Delay(50000);Delay(50000);Delay(50000);
	Delay(65000);Delay(65000);
	Lcd8_Display(0x80,"sending over....",16);Lcd8_Command(0x01);
	Lcd8_Display(0x80,"DIS:            ",16);
		Lcd8_Display(0xC0,"SET:            ",16);

}

void distance()
{
/****************************************************************************/		
		TMR1L=0x00;TMR1H=0x00;
		Trig=0; // trig off
		Delay_us(20);
		Trig=1; // trig on
		Delay_us(20);
		Trig=0;
		while(!Echo); // wait till echo occur
		TMR1ON=1; // timer_1 ON after echo 
		while(Echo);
		TMR1ON=0;
		dis=TMR1L+(TMR1H*256);
		dis=(dis/58);
		TMR1L=0x00;TMR1H=0x00;
		Lcd8_Display(0x80,"DIS:",4);
		Lcd8_Decimal3(0x84,dis);
/****************************************************************************/

}