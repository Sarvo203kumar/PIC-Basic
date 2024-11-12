#include <16f877.h>
#include <lcd_4bit.c>
#include <keypad.c>
#include <string.h>
#use delay(clock=4000000)
char u1[]="1234",U2[]="9876",p[10],k,v1[10];
int i=0,d1,d2,z1=1,z2=1;
void main()
{
char m[30];
lcd_init();
 lcd_str("Password Based");
    gotoxy(0,1);
    lcd_str("Circuit Breaker");
    delay_ms(1500);
   
l1:    
    

    lcd_clear();
    
    lcd_str("Enter Password:");
    gotoxy(0,1);
   while(TRUE)
   {
    k=key();
    if(k=='c')
    {
    lcd_clear();
    gotoxy(0,0);
    lcd_str("Enter Password:");
    gotoxy(0,1);
    i=0;
    }
    else if(k=='=')
    {
    p[i]='\0';
    goto l;
    }
    else
    {
    lcd_str(k);
    p[i]=k;
    i++;
    }
    
   }
   l:
   gotoxy(0,1);
   d1=strcmp(u1,p);
   d2=strcmp(u2,p);
    
   if(d1==0)
   {

   gotoxy(0,0);
   lcd_str("Correct Password");
   gotoxy(0,1);
   
   if(z1==1)
   {
   output_bit(PIN_C0,1);
   lcd_str("Load 1 Active");
   delay_ms(300);
   z1==0;
   goto l1;
   }
   else if(z1==0)
   {
   output_bit(PIN_C0,0);
   lcd_str("Load 1 Inactive");
   delay_ms(300);
   z1==1;
   goto l1;
   }
   }
  

   
  else if(d2==0)
   {

   gotoxy(0,0);
  lcd_str("Correct Password");
   gotoxy(0,1);

  
  if(z2==1)
   {
   output_bit(PIN_C1,1);
   lcd_str("Load 2 Active");
   delay_ms(300);
   z2==0;
   goto l1;
   }
   else if(z2==0)
   {
   output_bit(PIN_C1,0);
   lcd_str("Load 2 Inactive");
   delay_ms(300);
   z2==1;
   goto l1;
   }
   }
 else
 {
 lcd_clear();
 lcd_str("Wrong Pass");
 delay_ms(300);
 goto l1;
 }
   



}
