#include <xc.h>
#include <pic16f887.h>
#include "header.h"
#define dig_ON 0
#define dig_OFF 1
 
 
#define _XTAL_FREQ 8000000
 
 
unsigned char dig[] = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0xf7f,0x6f};            
 
 
unsigned char num=00;
unsigned char i,j;
 
 
unsigned char count=0;
void __interrupt() timer(void);
void __interrupt() timer(void)
{                                                                                       
    if(INTCONbits.T0IF==1)
    {                                                                                    
     if(count==0)
            {
             PORTA=(uint8_t)((dig_OFF << 1) | (dig_ON << 0));
             PORTD=dig[i];
             }
             if(count==1)
             {
             PORTA=(uint8_t)((dig_ON << 1) | (dig_OFF << 0));
             PORTD=dig[j];
             }
    }
    
}
 
 
 
 
 
 
void main(){
            ANSEL=0;
            ANSELH=0;
            OPTION_REGbits.T0CS=0;
            OPTION_REGbits.PSA=0;
            OPTION_REGbits.PS=7;
            INTCONbits.GIE=1;
            INTCONbits.PEIE=1;
            INTCONbits.T0IE=1;
            INTCONbits.T0IF=0;
            
             OPTION_REG=0x07;                                                      
             TMR0=6;                                                                
 
 
              TRISA =0x00;                                                          
              TRISD=0x00;                                                          
    while(1){
        
        i=num/10;                                                                   
        j=num%10;
        num++;
        if(num==100)
        {
            num=0;
        }
        __delay_ms(1000);       
     
    }
