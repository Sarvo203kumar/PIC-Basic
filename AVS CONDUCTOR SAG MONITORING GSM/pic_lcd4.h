
#define First_Line 0x80
#define Second_Line 0xc0
#define Curser_On  0x0f
#define Curser_Off 0x0c
#define Clear_Display 0x01
#define Data_Port PORTB

#define Lcd_rs  RB1
#define Lcd_en RB2

void Lcd8_Init();
void Lcd8_Command(unsigned char);
void Lcd8_Write(unsigned char,unsigned char);
void Lcd8_Display(unsigned char,const unsigned char*,unsigned int);
void Lcd8_Decimal2(unsigned char,unsigned char);
void Lcd8_Decimal3(unsigned char,unsigned char);
void Lcd8_Decimal3c(unsigned char,unsigned char);
void Lcd8_Decimal4(unsigned char,unsigned int);
void Delay(unsigned int);

void Lcd8_Init()
{
	Lcd8_Command(0x02);		//to select function set
	Lcd8_Command(0x28);		//entry mode set
	Lcd8_Command(0x0c);		//display on
	Lcd8_Command(0x06);		
	Lcd8_Command(0x01);	

}

void Lcd8_Command(unsigned char com)
{/*
	Data_Port=com;
	Lcd_en=1;
	Lcd_rs=0;
	Delay(125);
	Lcd_en=0;
	Delay(125);*/
	
	unsigned char a=0,b=0,t=0;
	b=  com & 0x0f;
	a= (com>>4) & 0x0f;
	
	RB4=(a&0x01)>>0;
	RB5=(a&0x02)>>1;
	RB6=(a&0x04)>>2;
	RB7=(a&0x08)>>3;
	
	Lcd_rs=0;
	Lcd_en=1;Delay(125);
	Lcd_en=0;
/*
	RD3=(b&0x01)>>0;
	RD2=(b&0x02)>>1;
	RD1=(b&0x04)>>2;
	RD0=(b&0x08)>>3;*/
	RB4=(b&0x01)>>0;
	RB5=(b&0x02)>>1;
	RB6=(b&0x04)>>2;
	RB7=(b&0x08)>>3;
	
	Lcd_rs=0;
	Lcd_en=1;Delay(125);
	Lcd_en=0;
}
void Data_write(unsigned char com)
{
	unsigned char a=0,b=0,t=0;
	b=  com & 0x0f;
	a= (com>>4) & 0x0f;
	
	/*RD3=(a&0x01)>>0;
	RD2=(a&0x02)>>1;
	RD1=(a&0x04)>>2;
	RD0=(a&0x08)>>3;*/
	RB4=(a&0x01)>>0;
	RB5=(a&0x02)>>1;
	RB6=(a&0x04)>>2;
	RB7=(a&0x08)>>3;
	
	Lcd_rs=1;
	Lcd_en=1;Delay(125);
	Lcd_en=0;


	/*RD3=(b&0x01)>>0;
	RD2=(b&0x02)>>1;
	RD1=(b&0x04)>>2;
	RD0=(b&0x08)>>3;*/
	RB4=(b&0x01)>>0;
	RB5=(b&0x02)>>1;
	RB6=(b&0x04)>>2;
	RB7=(b&0x08)>>3;
	
	Lcd_rs=1;
	Lcd_en=1;Delay(125);
	Lcd_en=0;
	
}

void Lcd8_Write(unsigned char com,unsigned char lr)
{
	Lcd8_Command(com);
	Data_write(lr);			// Data 

}

void Lcd8_Display(unsigned char com,const unsigned char *word,unsigned int n)
{
	unsigned char Lcd_i;

	for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	{ 
		Lcd8_Write(com+Lcd_i,word[Lcd_i]);
  	}
}

void Lcd8_Decimal2(unsigned char com,unsigned char val)
{
	unsigned int Lcd_hr,Lcd_t,Lcd_o;

	Lcd_hr=val%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;
	
	Lcd8_Write(com,Lcd_t+0x30);
	Lcd8_Write(com+1,Lcd_o+0x30);
}


void Lcd8_Decimal3(unsigned char com,unsigned char val)
{
	unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;

	Lcd_h=val/100;
	Lcd_hr=val%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;
	
	Lcd8_Write(com,Lcd_h+0x30);
	Lcd8_Write(com+1,Lcd_t+0x30);
	Lcd8_Write(com+2,Lcd_o+0x30);
}

void Lcd8_Decimal3c(unsigned char com,unsigned char val)
{
	unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;

	Lcd_h=val/100;
	Lcd_hr=val%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;
	
	Lcd8_Write(com,Lcd_h+0x30);
	Lcd8_Write(com+1,Lcd_t+0x30);
    Lcd8_Write(com+2,'.');
	Lcd8_Write(com+3,Lcd_o+0x30);
}

void Lcd8_Decimal4(unsigned char com,unsigned int val) 
{
	unsigned int Lcd_th,Lcd_thr,Lcd_h,Lcd_hr,Lcd_t,Lcd_o;

	val = val%10000;
	Lcd_th=val/1000;
	Lcd_thr=val%1000;
	Lcd_h=Lcd_thr/100;
	Lcd_hr=Lcd_thr%100;
	Lcd_t=Lcd_hr/10;
	Lcd_o=Lcd_hr%10;

	Lcd8_Write(com,Lcd_th+0x30);
	Lcd8_Write(com+1,Lcd_h+0x30);
	Lcd8_Write(com+2,Lcd_t+0x30);
	Lcd8_Write(com+3,Lcd_o+0x30);
}

void Delay(unsigned int del)
{
	while(del--);
}     
