#include <pic.h>

void state();

#define _XTAL_FREQ 20000000
void timer1delay(void){     //100ms delay
    T1CON=0x31;           //Timer-1 with Prescaler 1:8
    TMR1H=0x0B;             //Count Hight Byte 100ms delay @20Mhz
    TMR1L=0xDB;             //Count Low Byte
    GIE=1;          //Enable Global Interrupt
    PEIE=1;         //Enable the Peripheral Interrupt
    TMR1ON =1;     //Start Timer1   
    for(int i=1; i<=5;i++){  //running for loop 5 times to get 0.5 sec 
    while(!TMR1IF);
		TMR1IF = 0;		// Turn on Timer after overflow          //Clear Interrupt
    }
}

void main(void)
{
	
	TRISC1 =1;
	TRISC0 =1;
	PORTC=0xff;
	TRISD = 0x00; 
	PORTD=0x00;
	while(1)
	{
	state();
		}
}
void state()
{
	while (1)
	{
		if (RC0 ==1 && RC1 ==0)
		{
			for(int i =0;i<=10;i++)
			{
			RD1=1;
			timer1delay();
			}
			while(1){
			if(RC1==0){
			RD1=0;
			RD2=1;
			timer1delay();
			}
			else
			{
			RD2=0;
			break;
			}
			}
	}

		else
		{
			RD1=0;
			RD2=0;
			timer1delay();
			}


}
}