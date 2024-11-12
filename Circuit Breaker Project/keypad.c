
#use delay(clock=1000000)
int key();



int key()
{
while(TRUE)
   {
     output_low(PIN_D4);
     output_high(PIN_D5);
     output_high(PIN_D6);
     output_high(PIN_D7);
     if(input(PIN_D0)==0)
     {
     while(input(PIN_D0)==0);
     return('7');
     
     goto k;
     }
     else if(input(PIN_D1)==0)
     {
    while(input(PIN_D1)==0);
     return('4');
      
     goto k;
     }
     else if(input(PIN_D2)==0)
     {
       while(input(PIN_D2)==0);
     return('1');
   
      goto k;
     }
     else if(input(PIN_D3)==0)
     {
       while(input(PIN_D3)==0);
     return('c');
   
    goto k;
     }
     
     
     
     output_high(PIN_D4);
     output_low(PIN_D5);
     output_high(PIN_D6);
     output_high(PIN_D7);
     if(input(PIN_D0)==0)
     {
 while(input(PIN_D0)==0);
     return('8');
         
      goto k;
     }
     else if(input(PIN_D1)==0)
     {
    while(input(PIN_D1)==0);
     return('5');
      
      goto k;
     }
     else if(input(PIN_D2)==0)
     {
     while(input(PIN_D2)==0);
     return('2');
     
      goto k;
     }
     else if(input(PIN_D3)==0)
     {
     while(input(PIN_D3)==0);
     return('0');
     
      goto k;
     }     
     
     
     
     output_high(PIN_D4);
     output_high(PIN_D5);
     output_low(PIN_D6);
     output_high(PIN_D7);
     if(input(PIN_D0)==0)
     {
 while(input(PIN_D0)==0);
     return('9');
    
      goto k;
     }
     else if(input(PIN_D1)==0)
     {
     while(input(PIN_D1)==0);
     return('6');
     
      goto k;
     }
     else if(input(PIN_D2)==0)
     {
        while(input(PIN_D2)==0);
     return('3');
  
     goto k;
     }
     else if(input(PIN_D3)==0)
     {
    while(input(PIN_D3)==0);
     return('=');
      
     goto k;
     }
     
     
     
     output_high(PIN_D4);
     output_high(PIN_D5);
     output_high(PIN_D6);
     output_low(PIN_D7);
     if(input(PIN_D0)==0)
     {
     while(input(PIN_D0)==0);
     return('/');
     
    goto k;
     }
     else if(input(PIN_D1)==0)
     {
     while(input(PIN_D1)==0);
     return('*');
     
     goto k;
     }
     else if(input(PIN_D2)==0)
     {
    while(input(PIN_D2)==0);
     return('-');
      
     goto k;
     }
     else if(input(PIN_D3)==0)
     {
       while(input(PIN_D3)==0);
     return('+');
   
    goto k;
     }
   }

   k:
   delay_ms(1);
}
