
#include <pic.h>

#define _XTAL_FREQ 20000000 //define crystal frequency to 20MHz
void timer1delay(void);
void seq(char get)
{
{
for (int j=0; j<=7; j++) 
{
PORTD = get << j; //LED move Left Sequence 
timer1delay();
}
for (int j=7; j>=0; j--)
{
PORTD = get << j; //LED move Left Sequence 
timer1delay();
} 
}
}

void main(void) 
{
TRISC0 = 1; //Define PORTC pin 0 is used as input for push button.
TRISD = 0x00; //Instruct the MCU that all pins are output 
PORTD=0x00; //Define PORT D as output
while(1) //define While loop for continuous operation
{
    if (RC0==0)//if PORTC pin 0 = 1
    {
    
        seq(1); //call function 1 with parameter 1 
        seq(3); //call function 3 with parameter 3
        seq(7); //call function 7 with parameter 7
        seq(15); //call function 4 with parameter 15
        
        while(RC0==1) //If button is still pressed
        {
            PORTD=0xFF; //Turn ON all LEDs
        }
    }
}
}

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
