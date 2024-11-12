#include <pic.h>
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

#include "clock.h"
#include "header.h"
#include "keypad.h"
#include "lcd.h"

#ifndef MatrixConfig
#define MatrixConfig
#define R1 RA0
#define R2 RA1
#define R3 RA3
#define R4 RA4
#define C1 RC0
#define C2 RC1
#define C3 RC2
#endif

#ifndef AlarmConfig
#define AlarmConfig
#define AlarmPort PORTD
#define AlarmDirection TRISD
#define AlarmPin 0
#endif

#ifndef ServoConfig
#define ServoConfig
#define RelayPort PORTD
#define RelayDirection TRISD
#define RelayPin 1
#endif

#ifndef MasterKey
#define MasterKey 2205
#endif 

volatile unsigned char Position;
unsigned char LocalArray[5], LocalCount;
unsigned int LastPassWord, DetectedPassWord;
unsigned int LastDetectedKey;
unsigned int KeyDebounceTime;

void ChangePassWord();

void main()
{
	ADCON1 = CMCON = 0x07;
	RelayDirection &=~ (1 << RelayPin);
	RelayPort &=~ (1 << RelayPin);
	AlarmDirection &=~ (1 << AlarmPin);
	AlarmPort &=~ (1 << AlarmPin);
	
	for(char k = 0; k < 4; k++)
	LocalArray[k] = (eeprom_read(0x00 + k) == 0xFF ?0 :eeprom_read(0x00 + k));
	LastPassWord = atoi((char*)LocalArray);
	
	memset(LocalArray, '\0', sizeof(LocalArray));
	LocalCount = 0;
	
	LCD_Initialize(); Keypad_Initialize();
	LCD_Disp(0x80,"PASWRD BASE POWE");
	LCD_Disp(0xC0,"     SYSTEM     ");
	DelayMS(3000); LCDClear(); 
	
	LCD_Disp(0x80,"ENTER PASSWORD");
	
	while(1)
	{
		LastDetectedKey = FetchKey(&KeyDebounceTime);
		
		if(LastDetectedKey == '#')
		{
			ChangePassWord();
			LCDClear();
			LCD_Disp(0x80,"ENTER PASSWORD ");
		}
		if(LastDetectedKey == '*')
		{
			if(KeyDebounceTime < 300)
			{
				if(--LocalCount > 4) LocalCount = 0;
				LocalArray[LocalCount] = 0;
				LCD_Write(0xC0 + LocalCount, ' ');
			}
			else 
			{
				LCD_Disp(0xC0,"                ");
				memset(LocalArray, '\0', sizeof(LocalArray));
				LocalCount = 0;
			}
		}			
		if(isdigit(LastDetectedKey))
		{
			LocalArray[LocalCount] = LastDetectedKey;
			LCD_Write(0xC0 + LocalCount, LocalArray[LocalCount]);
			LocalCount++;
		}
		if(LocalCount > 3)
		{
			DetectedPassWord = atoi((char*)LocalArray);
			if(LastPassWord == DetectedPassWord)
			{
				LCD_Disp(0xC0,"PASSWORD MATCHED");
				RelayPort ^= (1 << RelayPin); DelayMS(1000);
				memset(LocalArray, '\0', sizeof(LocalArray));
				LocalCount = 0; LCD_Disp(0xC0,"                ");
			}
			else
			{
				LCD_Disp(0xC0,"PASSWORD NT MATC");
				AlarmPort |= (1 << AlarmPin);
				DelayMS(500); DelayMS(500);
				AlarmPort &=~(1 << AlarmPin);
				memset(LocalArray, '\0', sizeof(LocalArray));
				LocalCount = 0; LCD_Disp(0xC0,"                ");
			}
		}
	}
}

void ChangePassWord()
{
	LCDClear(); LCD_Command(0x0E);
	memset(LocalArray, '\0', sizeof(LocalArray));
	LocalCount = 0; LCD_Disp(0x80,"ENTER OLD PASWRD");
	
	do
	{
		LastDetectedKey = FetchKey(&KeyDebounceTime);
		if(isdigit(LastDetectedKey))
		{
			LocalArray[LocalCount] = LastDetectedKey;
			LCD_Write(0xC0 + LocalCount, LastDetectedKey);
			LocalCount++;
		}
	}
	while(LocalCount != 4); LocalCount = 0;
	DetectedPassWord = atoi((char*)LocalArray);
	memset(LocalArray, '\0', sizeof(LocalArray) - 1);	
	
	if(DetectedPassWord == LastPassWord || DetectedPassWord == MasterKey)
	{
		LCD_Disp(0x80,"ENTER NEW PASWRD");
		LCD_Disp(0xC0,"                ");
		do
		{
			LastDetectedKey = FetchKey(&KeyDebounceTime);
			if(isdigit(LastDetectedKey))
			{
				LocalArray[LocalCount] = LastDetectedKey;
				LCD_Write(0xC0 + LocalCount, LastDetectedKey);
				LocalCount++;
			}
		}
		while(LocalCount != 4); LocalCount = 0;
		
		for(char k = 0; k < 4; k++)
		eeprom_write(0x00 + k, LocalArray[k]);
		LastPassWord = atoi((char*)LocalArray);
		memset(LocalArray, '\0', sizeof(LocalArray));
		LCD_Disp(0xC0,"                ");
	}
}
		
							
					
					
				
		
		
	