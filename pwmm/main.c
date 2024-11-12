#include<pic.h>
void delay(int a)  
{ 
for(int i=0;i<a;i++)
{
for(int j=0;j<144;j++);
}
}
void main()
{
 TRISC = 0;  
CCP1CON = 0x0F;  
T2CON = 0x04;  
PR2 = 36.5;  
while(1)
{
CCPR1L = 40.5;  
  delay(1);
}
}