

#include <pic.h>

#define _XTAL_FREQ 20000000 //define crystal frequency to 20MHz
void timer2delay(void);
void seq(char get)
{
{
for (int j=0; j<=7; j++) 
{
PORTD = get << j; //LED move Left Sequence 
timer2delay();
}
for (int j=7; j>=0; j--)
{
PORTD = get << j; //LED move Left Sequence 
timer2delay();
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

void timer2delay(void){     //500ms delay
   
     unsigned int i;
  T2CON|=(1<<2);        //timer2 on
  for(i=0;i<2000;i++)   ////500us * 2000=1000000us=1sec 
  {
    while(!TMR2IF);  
    TMR2IF=0;
  }
}