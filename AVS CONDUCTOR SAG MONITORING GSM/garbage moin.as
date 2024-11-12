opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_Delay
	FNCALL	_main,_Serial_Init
	FNCALL	_main,_Receive
	FNCALL	_main,_Lcd8_Command
	FNCALL	_main,_Serial_Conout
	FNCALL	_main,_Serial_Out
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_Adc8_Cha
	FNCALL	_main,_Lcd8_Decimal3
	FNCALL	_main,_distance
	FNCALL	_main,_http_init
	FNCALL	_http_init,_Lcd8_Display
	FNCALL	_http_init,_Delay
	FNCALL	_http_init,_Serial_Conout
	FNCALL	_http_init,_Serial_Out
	FNCALL	_http_init,_Lcd8_Command
	FNCALL	_distance,_Delay_us
	FNCALL	_distance,___lwdiv
	FNCALL	_distance,_Lcd8_Display
	FNCALL	_distance,_Lcd8_Decimal3
	FNCALL	_Lcd8_Decimal3,___awdiv
	FNCALL	_Lcd8_Decimal3,___awmod
	FNCALL	_Lcd8_Decimal3,___lwdiv
	FNCALL	_Lcd8_Decimal3,___lwmod
	FNCALL	_Lcd8_Decimal3,_Lcd8_Write
	FNCALL	_Lcd8_Display,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Data_write
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_Serial_Conout,_Serial_Out
	FNCALL	_Serial_Init,_Baudrate
	FNCALL	_Adc8_Cha,___lwdiv
	FNCALL	_Data_write,_Delay
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_adc_temp
	global	_adc_temp0
	global	_adc_val1
	global	_ct
	global	_dis
	global	_f
	global	_i
	global	_k
	global	_level1
	global	_level2
	global	_level3
	global	_level4
	global	_level5
	global	_level6
	global	_oiltemp
	global	_pt
	global	_q
	global	_w
	global	_windtemp
	global	_I1
	global	_aa
	global	_adc_del
	global	_adc_j
	global	_adc_val
	global	_gear
	global	_len
	global	_old_gear
	global	_pressure
	global	_s1
	global	_s2
	global	_s3
	global	_s4
	global	_s5
	global	_s6
	global	_sec2
	global	_sec3
	global	_set
	global	_temp
	global	_adc_hbit
	global	_adc_lbit
	global	_sec1
	global	_a
	global	_l
	global	_m
	global	_n
	global	_o
	global	_spd
	global	_cc
	global	_one
	global	_set1
	global	_set2
	global	_set3
	global	_set4
	global	_t
	global	_three
	global	_two
	global	_v
	global	_x
	global	_y
	global	_ADCON0
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_SPEN
_SPEN	set	199
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ADFM
_ADFM	set	1279
	global	_BRGH
_BRGH	set	1218
	global	_RCIE
_RCIE	set	1125
	global	_SYNC
_SYNC	set	1220
	global	_TXEN
_TXEN	set	1221
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	
STR_17:	
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	58	;':'
	retlw	78	;'N'
	retlw	46	;'.'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	78	;'N'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	61	;'='
	retlw	50	;'2'
	retlw	44	;','
	retlw	50	;'2'
	retlw	44	;','
	retlw	48	;'0'
	retlw	44	;','
	retlw	48	;'0'
	retlw	44	;','
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	85	;'U'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	77	;'M'
	retlw	83	;'S'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	57	;'9'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	52	;'4'
	retlw	57	;'9'
	retlw	57	;'9'
	retlw	53	;'5'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	71	;'G'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	70	;'F'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	32	;' '
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	83	;'S'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	stringtext
STR_4	equ	STR_3+0
STR_20	equ	STR_10+0
STR_19	equ	STR_9+0
	file	"garbage moin.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_adc_hbit:
       ds      2

_adc_lbit:
       ds      2

_sec1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adc_temp:
       ds      2

_adc_temp0:
       ds      2

_adc_val1:
       ds      2

_ct:
       ds      2

_dis:
       ds      2

_f:
       ds      2

_i:
       ds      2

_k:
       ds      2

_level1:
       ds      2

_level2:
       ds      2

_level3:
       ds      2

_level4:
       ds      2

_level5:
       ds      2

_level6:
       ds      2

_oiltemp:
       ds      2

_pt:
       ds      2

_q:
       ds      2

_w:
       ds      2

_windtemp:
       ds      2

_I1:
       ds      1

_aa:
       ds      1

_adc_del:
       ds      1

_adc_j:
       ds      1

_adc_val:
       ds      1

_gear:
       ds      1

_len:
       ds      1

_old_gear:
       ds      1

_pressure:
       ds      1

_s1:
       ds      1

_s2:
       ds      1

_s3:
       ds      1

_s4:
       ds      1

_s5:
       ds      1

_s6:
       ds      1

_sec2:
       ds      1

_sec3:
       ds      1

_set:
       ds      1

_temp:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_a:
       ds      6

_l:
       ds      6

_m:
       ds      6

_n:
       ds      6

_o:
       ds      6

_spd:
       ds      6

_cc:
       ds      2

_one:
       ds      2

_set1:
       ds      2

_set2:
       ds      2

_set3:
       ds      2

_set4:
       ds      2

_t:
       ds      2

_three:
       ds      2

_two:
       ds      2

_v:
       ds      2

_x:
       ds      2

_y:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+039h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+03Ch)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_distance
??_distance:	; 0 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd8_Command
?_Lcd8_Command:	; 0 bytes @ 0x0
	global	?_distance
?_distance:	; 0 bytes @ 0x0
	global	?_http_init
?_http_init:	; 0 bytes @ 0x0
	global	?_Lcd8_Init
?_Lcd8_Init:	; 0 bytes @ 0x0
	global	?_Data_write
?_Data_write:	; 0 bytes @ 0x0
	global	?_Serial_Out
?_Serial_Out:	; 0 bytes @ 0x0
	global	?_Receive
?_Receive:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_Baudrate
?_Baudrate:	; 0 bytes @ 0x0
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x0
	global	??_Serial_Out
??_Serial_Out:	; 0 bytes @ 0x0
	global	??_Receive
??_Receive:	; 0 bytes @ 0x0
	global	?_Delay_us
?_Delay_us:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	Serial_Out@val
Serial_Out@val:	; 1 bytes @ 0x0
	global	Receive@rece
Receive@rece:	; 1 bytes @ 0x0
	global	Delay@del
Delay@del:	; 2 bytes @ 0x0
	global	Delay_us@del
Delay_us@del:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	Baudrate@baud
Baudrate@baud:	; 4 bytes @ 0x0
	ds	1
	global	?_Serial_Conout
?_Serial_Conout:	; 0 bytes @ 0x1
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x1
	global	Serial_Conout@data
Serial_Conout@data:	; 2 bytes @ 0x1
	ds	1
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	??_Data_write
??_Data_write:	; 0 bytes @ 0x2
	global	??_Delay_us
??_Delay_us:	; 0 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Serial_Conout@n
Serial_Conout@n:	; 1 bytes @ 0x3
	ds	1
	global	??_Baudrate
??_Baudrate:	; 0 bytes @ 0x4
	global	?_Serial_Init
?_Serial_Init:	; 0 bytes @ 0x4
	global	??_Serial_Conout
??_Serial_Conout:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	Lcd8_Command@t
Lcd8_Command@t:	; 1 bytes @ 0x4
	global	Data_write@t
Data_write@t:	; 1 bytes @ 0x4
	global	Serial_Init@baud
Serial_Init@baud:	; 4 bytes @ 0x4
	ds	1
	global	Lcd8_Command@com
Lcd8_Command@com:	; 1 bytes @ 0x5
	global	Data_write@com
Data_write@com:	; 1 bytes @ 0x5
	global	Serial_Conout@ser_j
Serial_Conout@ser_j:	; 1 bytes @ 0x5
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	Lcd8_Command@a
Lcd8_Command@a:	; 1 bytes @ 0x6
	global	Data_write@a
Data_write@a:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	Lcd8_Command@b
Lcd8_Command@b:	; 1 bytes @ 0x7
	global	Data_write@b
Data_write@b:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_Lcd8_Init
??_Lcd8_Init:	; 0 bytes @ 0x8
	global	?_Lcd8_Write
?_Lcd8_Write:	; 0 bytes @ 0x8
	global	??_Serial_Init
??_Serial_Init:	; 0 bytes @ 0x8
	global	?_Adc8_Cha
?_Adc8_Cha:	; 2 bytes @ 0x8
	global	Lcd8_Write@lr
Lcd8_Write@lr:	; 1 bytes @ 0x8
	ds	1
	global	??_Lcd8_Write
??_Lcd8_Write:	; 0 bytes @ 0x9
	global	Lcd8_Write@com
Lcd8_Write@com:	; 1 bytes @ 0x9
	ds	1
	global	?_Lcd8_Display
?_Lcd8_Display:	; 0 bytes @ 0xA
	global	?_Lcd8_Decimal3
?_Lcd8_Decimal3:	; 0 bytes @ 0xA
	global	??_Adc8_Cha
??_Adc8_Cha:	; 0 bytes @ 0xA
	global	Lcd8_Decimal3@val
Lcd8_Decimal3@val:	; 1 bytes @ 0xA
	global	Lcd8_Display@word
Lcd8_Display@word:	; 2 bytes @ 0xA
	ds	1
	global	??_Lcd8_Decimal3
??_Lcd8_Decimal3:	; 0 bytes @ 0xB
	ds	1
	global	Adc8_Cha@val
Adc8_Cha@val:	; 1 bytes @ 0xC
	global	Lcd8_Display@n
Lcd8_Display@n:	; 2 bytes @ 0xC
	ds	1
	global	Lcd8_Decimal3@Lcd_h
Lcd8_Decimal3@Lcd_h:	; 2 bytes @ 0xD
	ds	1
	global	??_Lcd8_Display
??_Lcd8_Display:	; 0 bytes @ 0xE
	ds	1
	global	Lcd8_Decimal3@Lcd_t
Lcd8_Decimal3@Lcd_t:	; 2 bytes @ 0xF
	ds	1
	global	Lcd8_Display@com
Lcd8_Display@com:	; 1 bytes @ 0x10
	ds	1
	global	Lcd8_Display@Lcd_i
Lcd8_Display@Lcd_i:	; 1 bytes @ 0x11
	global	Lcd8_Decimal3@Lcd_o
Lcd8_Decimal3@Lcd_o:	; 2 bytes @ 0x11
	ds	1
	global	??_http_init
??_http_init:	; 0 bytes @ 0x12
	ds	1
	global	Lcd8_Decimal3@Lcd_hr
Lcd8_Decimal3@Lcd_hr:	; 2 bytes @ 0x13
	ds	2
	global	Lcd8_Decimal3@com
Lcd8_Decimal3@com:	; 1 bytes @ 0x15
	ds	1
;;Data sizes: Strings 241, constant 0, data 0, bss 122, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     22      79
;; BANK1           80      4      64
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_Adc8_Cha	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; Serial_Conout@data	PTR const unsigned char  size(2) Largest target is 20
;;		 -> STR_17(CODE[20]), STR_16(CODE[11]), STR_15(CODE[11]), STR_14(CODE[9]), 
;;		 -> STR_7(CODE[18]), STR_6(CODE[10]), STR_5(CODE[3]), 
;;
;; Lcd8_Display@word	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_21(CODE[5]), STR_20(CODE[17]), STR_19(CODE[17]), STR_18(CODE[17]), 
;;		 -> STR_13(CODE[17]), STR_12(CODE[9]), STR_11(CODE[9]), STR_10(CODE[17]), 
;;		 -> STR_9(CODE[17]), STR_8(CODE[17]), STR_4(CODE[17]), STR_3(CODE[17]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Lcd8_Decimal3
;;   _http_init->_Lcd8_Display
;;   _distance->_Lcd8_Decimal3
;;   _Lcd8_Decimal3->_Lcd8_Write
;;   _Lcd8_Display->_Lcd8_Write
;;   _Lcd8_Write->_Lcd8_Command
;;   _Lcd8_Write->_Data_write
;;   _Lcd8_Init->_Lcd8_Command
;;   _Serial_Conout->_Serial_Out
;;   _Serial_Init->_Baudrate
;;   _Adc8_Cha->___lwdiv
;;   _Data_write->_Delay
;;   _Lcd8_Command->_Delay
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_distance
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0   10377
;;                                              2 BANK1      2     2      0
;;                          _Lcd8_Init
;;                       _Lcd8_Display
;;                              _Delay
;;                        _Serial_Init
;;                            _Receive
;;                       _Lcd8_Command
;;                      _Serial_Conout
;;                         _Serial_Out
;;                        _eeprom_read
;;                           _Adc8_Cha
;;                      _Lcd8_Decimal3
;;                           _distance
;;                          _http_init
;; ---------------------------------------------------------------------------------
;; (1) _http_init                                            1     1      0    1545
;;                                             18 BANK0      1     1      0
;;                       _Lcd8_Display
;;                              _Delay
;;                      _Serial_Conout
;;                         _Serial_Out
;;                       _Lcd8_Command
;; ---------------------------------------------------------------------------------
;; (1) _distance                                             2     2      0    3685
;;                                              0 BANK1      2     2      0
;;                           _Delay_us
;;                            ___lwdiv
;;                       _Lcd8_Display
;;                      _Lcd8_Decimal3
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Decimal3                                       12    11      1    2447
;;                                             10 BANK0     12    11      1
;;                            ___awdiv
;;                            ___awmod
;;                            ___lwdiv
;;                            ___lwmod
;;                         _Lcd8_Write
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Display                                         8     4      4     966
;;                                             10 BANK0      8     4      4
;;                         _Lcd8_Write
;; ---------------------------------------------------------------------------------
;; (3) _Lcd8_Write                                           2     1      1     774
;;                                              8 BANK0      2     1      1
;;                       _Lcd8_Command
;;                         _Data_write
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Init                                            0     0      0     356
;;                       _Lcd8_Command
;; ---------------------------------------------------------------------------------
;; (2) _Serial_Conout                                        5     2      3     161
;;                                              1 BANK0      5     2      3
;;                         _Serial_Out
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Init                                          4     0      4     248
;;                                              4 BANK0      4     0      4
;;                           _Baudrate
;; ---------------------------------------------------------------------------------
;; (1) _Adc8_Cha                                             5     3      2     489
;;                                              8 BANK0      5     3      2
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (4) _Data_write                                           6     6      0     356
;;                                              2 BANK0      6     6      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Command                                         6     6      0     356
;;                                              2 BANK0      6     6      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     433
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     445
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              6     2      4     232
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     241
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_read                                          2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Delay_us                                             2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _Receive                                              1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Serial_Out                                           1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Baudrate                                             4     0      4     217
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (3) _Delay                                                2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _ISR                                                  5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd8_Init
;;     _Lcd8_Command
;;       _Delay
;;   _Lcd8_Display
;;     _Lcd8_Write
;;       _Lcd8_Command
;;         _Delay
;;       _Data_write
;;         _Delay
;;   _Delay
;;   _Serial_Init
;;     _Baudrate
;;   _Receive
;;   _Lcd8_Command
;;     _Delay
;;   _Serial_Conout
;;     _Serial_Out
;;   _Serial_Out
;;   _eeprom_read
;;   _Adc8_Cha
;;     ___lwdiv
;;   _Lcd8_Decimal3
;;     ___awdiv
;;     ___awmod
;;     ___lwdiv
;;     ___lwmod
;;     _Lcd8_Write
;;       _Lcd8_Command
;;         _Delay
;;       _Data_write
;;         _Delay
;;   _distance
;;     _Delay_us
;;     ___lwdiv
;;     _Lcd8_Display
;;       _Lcd8_Write
;;         _Lcd8_Command
;;           _Delay
;;         _Data_write
;;           _Delay
;;     _Lcd8_Decimal3
;;       ___awdiv
;;       ___awmod
;;       ___lwdiv
;;       ___lwmod
;;       _Lcd8_Write
;;         _Lcd8_Command
;;           _Delay
;;         _Data_write
;;           _Delay
;;   _http_init
;;     _Lcd8_Display
;;       _Lcd8_Write
;;         _Lcd8_Command
;;           _Delay
;;         _Data_write
;;           _Delay
;;     _Delay
;;     _Serial_Conout
;;       _Serial_Out
;;     _Serial_Out
;;     _Lcd8_Command
;;       _Delay
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      99       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     16      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      4      40       7       80.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      9E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 70 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Lcd8_Init
;;		_Lcd8_Display
;;		_Delay
;;		_Serial_Init
;;		_Receive
;;		_Lcd8_Command
;;		_Serial_Conout
;;		_Serial_Out
;;		_eeprom_read
;;		_Adc8_Cha
;;		_Lcd8_Decimal3
;;		_distance
;;		_http_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
	line	70
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	71
	
l6887:	
;garbagemointering.c: 71: TRISA=0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	72
	
l6889:	
;garbagemointering.c: 72: TRISB=0x00;
	clrf	(134)^080h	;volatile
	line	73
	
l6891:	
;garbagemointering.c: 73: TRISC=0xFF;
	movlw	(0FFh)
	movwf	(135)^080h	;volatile
	line	74
	
l6893:	
;garbagemointering.c: 74: TRISD=0x90;
	movlw	(090h)
	movwf	(136)^080h	;volatile
	line	76
	
l6895:	
;garbagemointering.c: 76: GIE=1;PEIE=1;
	bsf	(95/8),(95)&7
	
l6897:	
	bsf	(94/8),(94)&7
	line	77
	
l6899:	
;garbagemointering.c: 77: OPTION_REG=0x07;
	movlw	(07h)
	movwf	(129)^080h	;volatile
	line	78
	
l6901:	
;garbagemointering.c: 78: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	79
	
l6903:	
;garbagemointering.c: 79: TMR0=1;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	84
	
l6905:	
;garbagemointering.c: 84: RD0=0;RD1=1;
	bcf	(64/8),(64)&7
	
l6907:	
	bsf	(65/8),(65)&7
	line	86
	
l6909:	
;garbagemointering.c: 86: Lcd8_Init();
	fcall	_Lcd8_Init
	line	87
	
l6911:	
;garbagemointering.c: 87: Lcd8_Display(0x80," CONDUCTOR SAG  ",16);
	movlw	low(STR_1|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_1|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	88
	
l6913:	
;garbagemointering.c: 88: Lcd8_Display(0xc0,"DETECT USING GSM",16);
	movlw	low(STR_2|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_2|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	89
	
l6915:	
;garbagemointering.c: 89: Delay(65000);Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6917:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6919:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	90
	
l6921:	
;garbagemointering.c: 90: Serial_Init(9600);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Init+3)
	movlw	0
	movwf	(?_Serial_Init+2)
	movlw	025h
	movwf	(?_Serial_Init+1)
	movlw	080h
	movwf	(?_Serial_Init)

	fcall	_Serial_Init
	line	91
	
l6923:	
;garbagemointering.c: 91: Delay(1000);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(03E8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	92
	
l6925:	
;garbagemointering.c: 92: Receive(0);
	movlw	(0)
	fcall	_Receive
	line	93
	
l6927:	
;garbagemointering.c: 93: Lcd8_Command(0x01);Lcd8_Display(0x80,"Modem initialise",16);
	movlw	(01h)
	fcall	_Lcd8_Command
	
l6929:	
	movlw	low(STR_3|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_3|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	94
	
l6931:	
;garbagemointering.c: 94: Delay(65535);Delay(65535);Delay(65535);
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6933:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6935:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	95
	
l6937:	
;garbagemointering.c: 95: Delay(65535);Delay(65535);Delay(65535);
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6939:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6941:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	96
	
l6943:	
;garbagemointering.c: 96: Delay(65535);Delay(65535);Delay(65535);
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6945:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6947:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FFFFh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	97
	
l6949:	
;garbagemointering.c: 97: Lcd8_Display(0x80,"Modem initialise",16);
	movlw	low(STR_4|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_4|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	98
	
l6951:	
;garbagemointering.c: 98: Serial_Conout("AT",2);
	movlw	low(STR_5|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_5|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	line	99
	
l6953:	
;garbagemointering.c: 99: Serial_Out(0x0d);Serial_Out(0x0a);Delay(65000);
	movlw	(0Dh)
	fcall	_Serial_Out
	
l6955:	
	movlw	(0Ah)
	fcall	_Serial_Out
	
l6957:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	100
	
l6959:	
;garbagemointering.c: 100: Serial_Conout("AT+CMGF=1",9);
	movlw	low(STR_6|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_6|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(09h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	line	101
	
l6961:	
;garbagemointering.c: 101: Serial_Out(0x0d);Serial_Out(0x0a);Delay(65000);
	movlw	(0Dh)
	fcall	_Serial_Out
	
l6963:	
	movlw	(0Ah)
	fcall	_Serial_Out
	
l6965:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	102
	
l6967:	
;garbagemointering.c: 102: Serial_Conout("AT+CNMI=2,2,0,0,0",17);
	movlw	low(STR_7|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_7|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(011h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	line	103
	
l6969:	
;garbagemointering.c: 103: Serial_Out(0x0d);Serial_Out(0x0a);
	movlw	(0Dh)
	fcall	_Serial_Out
	
l6971:	
	movlw	(0Ah)
	fcall	_Serial_Out
	line	104
	
l6973:	
;garbagemointering.c: 104: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6975:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	105
	
l6977:	
;garbagemointering.c: 105: Lcd8_Display(0x80,"Modem inti..over",16);
	movlw	low(STR_8|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_8|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	106
	
l6979:	
;garbagemointering.c: 106: Receive(0);
	movlw	(0)
	fcall	_Receive
	line	107
	
l6981:	
;garbagemointering.c: 107: dis=20;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dis)
	movlw	high(014h)
	movwf	((_dis))+1
	line	109
	
l6983:	
;garbagemointering.c: 109: level1=eeprom_read(100);
	movlw	(064h)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level1+1)
	line	110
	
l6985:	
;garbagemointering.c: 110: level2=eeprom_read(105);
	movlw	(069h)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level2+1)
	line	111
	
l6987:	
;garbagemointering.c: 111: level3=eeprom_read(110);
	movlw	(06Eh)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level3+1)
	line	112
	
l6989:	
;garbagemointering.c: 112: level4=eeprom_read(115);
	movlw	(073h)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level4)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level4+1)
	line	113
	
l6991:	
;garbagemointering.c: 113: level5=eeprom_read(120);
	movlw	(078h)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level5)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level5+1)
	line	114
	
l6993:	
;garbagemointering.c: 114: level6=eeprom_read(125);
	movlw	(07Dh)
	fcall	_eeprom_read
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level6)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_level6+1)
	line	117
	
l6995:	
;garbagemointering.c: 117: Lcd8_Display(0x80,"DIS:            ",16);
	movlw	low(STR_9|8000h)
	movwf	(?_Lcd8_Display)
	movlw	high(STR_9|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	118
	
l6997:	
;garbagemointering.c: 118: Lcd8_Display(0xC0,"SET:            ",16);
	movlw	low(STR_10|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_10|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	goto	l6999
	line	120
;garbagemointering.c: 120: while(1)
	
l1071:	
	line	122
	
l6999:	
;garbagemointering.c: 121: {
;garbagemointering.c: 122: set=Adc8_Cha(0);
	movlw	(0)
	fcall	_Adc8_Cha
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_Adc8_Cha)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_set)
	line	124
	
l7001:	
;garbagemointering.c: 124: Lcd8_Decimal3(0Xc4,set);
	movf	(_set),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Decimal3)
	movlw	(0C4h)
	fcall	_Lcd8_Decimal3
	line	125
	
l7003:	
;garbagemointering.c: 125: distance();
	fcall	_distance
	line	126
	
l7005:	
;garbagemointering.c: 126: if(dis<set){s1=2;RD1=0;RD0=1;Lcd8_Display(0xC8,"Sag Det ",8);Delay(65000);http_init();RD0=0;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_set),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_dis+1),w
	skipz
	goto	u7205
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_dis),w
u7205:
	skipnc
	goto	u7201
	goto	u7200
u7201:
	goto	l7021
u7200:
	
l7007:	
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_s1)
	
l7009:	
	bcf	(65/8),(65)&7
	
l7011:	
	bsf	(64/8),(64)&7
	
l7013:	
	movlw	low(STR_11|8000h)
	movwf	(?_Lcd8_Display)
	movlw	high(STR_11|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(08h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(08h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(0C8h)
	fcall	_Lcd8_Display
	
l7015:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l7017:	
	fcall	_http_init
	
l7019:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	goto	l7021
	
l1072:	
	line	128
	
l7021:	
;garbagemointering.c: 128: if(dis>=set)
	movf	(_set),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	1+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_dis+1),w
	skipz
	goto	u7215
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_dis),w
u7215:
	skipc
	goto	u7211
	goto	u7210
u7211:
	goto	l7027
u7210:
	line	130
	
l7023:	
;garbagemointering.c: 129: {
;garbagemointering.c: 130: RD1=1;RD0=0;Lcd8_Display(0xc8," Normal ",8);
	bsf	(65/8),(65)&7
	bcf	(64/8),(64)&7
	
l7025:	
	movlw	low(STR_12|8000h)
	movwf	(?_Lcd8_Display)
	movlw	high(STR_12|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(08h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(08h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(0C8h)
	fcall	_Lcd8_Display
	goto	l7027
	line	131
	
l1073:	
	line	134
	
l7027:	
;garbagemointering.c: 131: }
;garbagemointering.c: 134: Delay(100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(064h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l6999
	line	138
	
l1074:	
	line	120
	goto	l6999
	
l1075:	
	line	139
	
l1076:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_http_init
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

;; *************** function _http_init *****************
;; Defined at:
;;		line 148 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Lcd8_Display
;;		_Delay
;;		_Serial_Conout
;;		_Serial_Out
;;		_Lcd8_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text793
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
	line	148
	global	__size_of_http_init
	__size_of_http_init	equ	__end_of_http_init-_http_init
	
_http_init:	
	opt	stack 2
; Regs used in _http_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	149
	
l6857:	
;garbagemointering.c: 149: Lcd8_Display(0xc0,"MSG SENDING...1.",16);Delay(5000);
	movlw	low(STR_13|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_13|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	
l6859:	
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(01388h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	150
	
l6861:	
;garbagemointering.c: 150: Serial_Conout("AT+CMGS=",8);Delay(5000);
	movlw	low(STR_14|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_14|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(08h)
	movwf	(??_http_init+0)+0
	movf	(??_http_init+0)+0,w
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	movlw	low(01388h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(01388h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	151
;garbagemointering.c: 151: Serial_Out('"');
	movlw	(022h)
	fcall	_Serial_Out
	line	152
	
l6863:	
;garbagemointering.c: 152: Serial_Conout("9344995345",10);
	movlw	low(STR_15|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_15|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(0Ah)
	movwf	(??_http_init+0)+0
	movf	(??_http_init+0)+0,w
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	line	153
	
l6865:	
;garbagemointering.c: 153: Serial_Out('"');
	movlw	(022h)
	fcall	_Serial_Out
	line	154
	
l6867:	
;garbagemointering.c: 154: Delay(50000);
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0C350h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	155
	
l6869:	
;garbagemointering.c: 155: Serial_Out(0x0d);Serial_Out(0x0a);
	movlw	(0Dh)
	fcall	_Serial_Out
	
l6871:	
	movlw	(0Ah)
	fcall	_Serial_Out
	line	156
	
l6873:	
;garbagemointering.c: 156: Delay(65000);
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	157
;garbagemointering.c: 157: Serial_Conout("SAG DETECT",10);Delay(65000);Serial_Out(0x0d);Serial_Out(0x0a);
	movlw	low(STR_16|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_16|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(0Ah)
	movwf	(??_http_init+0)+0
	movf	(??_http_init+0)+0,w
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	
l6875:	
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l6877:	
	movlw	(0Dh)
	fcall	_Serial_Out
	
l6879:	
	movlw	(0Ah)
	fcall	_Serial_Out
	line	158
	
l6881:	
;garbagemointering.c: 158: Serial_Conout("LOCATION:N.R STREET",19);Delay(65000);
	movlw	low(STR_17|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Serial_Conout)
	movlw	high(STR_17|8000h)
	movwf	((?_Serial_Conout))+1
	movlw	(013h)
	movwf	(??_http_init+0)+0
	movf	(??_http_init+0)+0,w
	movwf	0+(?_Serial_Conout)+02h
	fcall	_Serial_Conout
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	159
;garbagemointering.c: 159: Serial_Out(0x0d);Serial_Out(0x0a);Delay(65000);
	movlw	(0Dh)
	fcall	_Serial_Out
	movlw	(0Ah)
	fcall	_Serial_Out
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	160
;garbagemointering.c: 160: Serial_Out(0x1a);Delay(50000);Delay(50000);Delay(50000);Delay(50000);
	movlw	(01Ah)
	fcall	_Serial_Out
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0C350h)
	movwf	((?_Delay))+1
	fcall	_Delay
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0C350h)
	movwf	((?_Delay))+1
	fcall	_Delay
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0C350h)
	movwf	((?_Delay))+1
	fcall	_Delay
	movlw	low(0C350h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0C350h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	161
;garbagemointering.c: 161: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	movlw	low(0FDE8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	162
	
l6883:	
;garbagemointering.c: 162: Lcd8_Display(0x80,"sending over....",16);Lcd8_Command(0x01);
	movlw	low(STR_18|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_18|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	
l6885:	
	movlw	(01h)
	fcall	_Lcd8_Command
	line	163
;garbagemointering.c: 163: Lcd8_Display(0x80,"DIS:            ",16);
	movlw	low(STR_19|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_19|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	164
;garbagemointering.c: 164: Lcd8_Display(0xC0,"SET:            ",16);
	movlw	low(STR_20|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Display)
	movlw	high(STR_20|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	166
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_http_init
	__end_of_http_init:
;; =============== function _http_init ends ============

	signat	_http_init,88
	global	_distance
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

;; *************** function _distance *****************
;; Defined at:
;;		line 169 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Delay_us
;;		___lwdiv
;;		_Lcd8_Display
;;		_Lcd8_Decimal3
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text794
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
	line	169
	global	__size_of_distance
	__size_of_distance	equ	__end_of_distance-_distance
	
_distance:	
	opt	stack 2
; Regs used in _distance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	171
	
l6833:	
;garbagemointering.c: 171: TMR1L=0x00;TMR1H=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	clrf	(15)	;volatile
	line	172
	
l6835:	
;garbagemointering.c: 172: RD5=0;
	bcf	(69/8),(69)&7
	line	173
	
l6837:	
;garbagemointering.c: 173: Delay_us(20);
	movlw	low(014h)
	movwf	(?_Delay_us)
	movlw	high(014h)
	movwf	((?_Delay_us))+1
	fcall	_Delay_us
	line	174
	
l6839:	
;garbagemointering.c: 174: RD5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	line	175
	
l6841:	
;garbagemointering.c: 175: Delay_us(20);
	movlw	low(014h)
	movwf	(?_Delay_us)
	movlw	high(014h)
	movwf	((?_Delay_us))+1
	fcall	_Delay_us
	line	176
	
l6843:	
;garbagemointering.c: 176: RD5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
	line	177
;garbagemointering.c: 177: while(!RD4);
	goto	l1085
	
l1086:	
	
l1085:	
	btfss	(68/8),(68)&7
	goto	u7181
	goto	u7180
u7181:
	goto	l1085
u7180:
	
l1087:	
	line	178
;garbagemointering.c: 178: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	179
;garbagemointering.c: 179: while(RD4);
	goto	l1088
	
l1089:	
	
l1088:	
	btfsc	(68/8),(68)&7
	goto	u7191
	goto	u7190
u7191:
	goto	l1088
u7190:
	
l1090:	
	line	180
;garbagemointering.c: 180: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	181
	
l6845:	
;garbagemointering.c: 181: dis=TMR1L+(TMR1H*256);
	movf	(15),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_distance+0)^080h+0
	clrf	(??_distance+0)^080h+0+1
	movf	(??_distance+0)^080h+0,w
	movwf	(??_distance+0)^080h+1
	clrf	(??_distance+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	0+(??_distance+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_dis)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_distance+0)^080h+0,w
	skipnc
	incf	1+(??_distance+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((_dis))+1
	line	182
	
l6847:	
;garbagemointering.c: 182: dis=(dis/58);
	movlw	low(03Ah)
	movwf	(?___lwdiv)
	movlw	high(03Ah)
	movwf	((?___lwdiv))+1
	movf	(_dis+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_dis),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_dis+1)
	addwf	(_dis+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_dis)
	addwf	(_dis)

	line	183
	
l6849:	
;garbagemointering.c: 183: TMR1L=0x00;TMR1H=0x00;
	clrf	(14)	;volatile
	
l6851:	
	clrf	(15)	;volatile
	line	184
	
l6853:	
;garbagemointering.c: 184: Lcd8_Display(0x80,"DIS:",4);
	movlw	low(STR_21|8000h)
	movwf	(?_Lcd8_Display)
	movlw	high(STR_21|8000h)
	movwf	((?_Lcd8_Display))+1
	movlw	low(04h)
	movwf	0+(?_Lcd8_Display)+02h
	movlw	high(04h)
	movwf	(0+(?_Lcd8_Display)+02h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	185
	
l6855:	
;garbagemointering.c: 185: Lcd8_Decimal3(0x84,dis);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dis),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_distance+0)^080h+0
	movf	(??_distance+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Lcd8_Decimal3)
	movlw	(084h)
	fcall	_Lcd8_Decimal3
	line	188
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_distance
	__end_of_distance:
;; =============== function _distance ends ============

	signat	_distance,88
	global	_Lcd8_Decimal3
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

;; *************** function _Lcd8_Decimal3 *****************
;; Defined at:
;;		line 133 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  val             1   10[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1   21[BANK0 ] unsigned char 
;;  Lcd_hr          2   19[BANK0 ] unsigned int 
;;  Lcd_o           2   17[BANK0 ] unsigned int 
;;  Lcd_t           2   15[BANK0 ] unsigned int 
;;  Lcd_h           2   13[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___lwdiv
;;		___lwmod
;;		_Lcd8_Write
;; This function is called by:
;;		_main
;;		_distance
;; This function uses a non-reentrant model
;;
psect	text795
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	133
	global	__size_of_Lcd8_Decimal3
	__size_of_Lcd8_Decimal3	equ	__end_of_Lcd8_Decimal3-_Lcd8_Decimal3
	
_Lcd8_Decimal3:	
	opt	stack 2
; Regs used in _Lcd8_Decimal3: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Decimal3@com stored from wreg
	line	136
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Decimal3@com)
	
l6831:	
;pic_lcd4.h: 134: unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
;pic_lcd4.h: 136: Lcd_h=val/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Lcd8_Decimal3@val),w
	movwf	(??_Lcd8_Decimal3+0)+0
	clrf	(??_Lcd8_Decimal3+0)+0+1
	movf	0+(??_Lcd8_Decimal3+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Lcd8_Decimal3+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_h+1)
	addwf	(Lcd8_Decimal3@Lcd_h+1)
	movf	(0+(?___awdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_h)
	addwf	(Lcd8_Decimal3@Lcd_h)

	line	137
;pic_lcd4.h: 137: Lcd_hr=val%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Lcd8_Decimal3@val),w
	movwf	(??_Lcd8_Decimal3+0)+0
	clrf	(??_Lcd8_Decimal3+0)+0+1
	movf	0+(??_Lcd8_Decimal3+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Lcd8_Decimal3+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(Lcd8_Decimal3@Lcd_hr+1)
	addwf	(Lcd8_Decimal3@Lcd_hr+1)
	movf	(0+(?___awmod)),w
	clrf	(Lcd8_Decimal3@Lcd_hr)
	addwf	(Lcd8_Decimal3@Lcd_hr)

	line	138
;pic_lcd4.h: 138: Lcd_t=Lcd_hr/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(Lcd8_Decimal3@Lcd_hr+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(Lcd8_Decimal3@Lcd_hr),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_t+1)
	addwf	(Lcd8_Decimal3@Lcd_t+1)
	movf	(0+(?___lwdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_t)
	addwf	(Lcd8_Decimal3@Lcd_t)

	line	139
;pic_lcd4.h: 139: Lcd_o=Lcd_hr%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(Lcd8_Decimal3@Lcd_hr+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(Lcd8_Decimal3@Lcd_hr),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(Lcd8_Decimal3@Lcd_o+1)
	addwf	(Lcd8_Decimal3@Lcd_o+1)
	movf	(0+(?___lwmod)),w
	clrf	(Lcd8_Decimal3@Lcd_o)
	addwf	(Lcd8_Decimal3@Lcd_o)

	line	141
;pic_lcd4.h: 141: Lcd8_Write(com,Lcd_h+0x30);
	movf	(Lcd8_Decimal3@Lcd_h),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	fcall	_Lcd8_Write
	line	142
;pic_lcd4.h: 142: Lcd8_Write(com+1,Lcd_t+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd8_Decimal3@Lcd_t),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	addlw	01h
	fcall	_Lcd8_Write
	line	143
;pic_lcd4.h: 143: Lcd8_Write(com+2,Lcd_o+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd8_Decimal3@Lcd_o),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	addlw	02h
	fcall	_Lcd8_Write
	line	144
	
l836:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Decimal3
	__end_of_Lcd8_Decimal3:
;; =============== function _Lcd8_Decimal3 ends ============

	signat	_Lcd8_Decimal3,8312
	global	_Lcd8_Display
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

;; *************** function _Lcd8_Display *****************
;; Defined at:
;;		line 110 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            2   10[BANK0 ] PTR const unsigned char 
;;		 -> STR_21(5), STR_20(17), STR_19(17), STR_18(17), 
;;		 -> STR_13(17), STR_12(9), STR_11(9), STR_10(17), 
;;		 -> STR_9(17), STR_8(17), STR_4(17), STR_3(17), 
;;		 -> STR_2(17), STR_1(17), 
;;  n               2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  com             1   16[BANK0 ] unsigned char 
;;  Lcd_i           1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Lcd8_Write
;; This function is called by:
;;		_main
;;		_http_init
;;		_distance
;; This function uses a non-reentrant model
;;
psect	text796
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	110
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 2
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	113
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Display@com)
	
l6823:	
;pic_lcd4.h: 111: unsigned char Lcd_i;
;pic_lcd4.h: 113: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l6829
	line	114
	
l828:	
	line	115
	
l6825:	
;pic_lcd4.h: 114: {
;pic_lcd4.h: 115: Lcd8_Write(com+Lcd_i,word[Lcd_i]);
	movf	(Lcd8_Display@Lcd_i),w
	addwf	(Lcd8_Display@word),w
	movwf	fsr0
	movf	(Lcd8_Display@word+1),w
	skipnc
	incf	(Lcd8_Display@word+1),w
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Display@Lcd_i),w
	addwf	(Lcd8_Display@com),w
	fcall	_Lcd8_Write
	line	113
	
l6827:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l6829
	
l827:	
	
l6829:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u7175
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u7175:
	skipc
	goto	u7171
	goto	u7170
u7171:
	goto	l6825
u7170:
	goto	l830
	
l829:	
	line	117
	
l830:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Display
	__end_of_Lcd8_Display:
;; =============== function _Lcd8_Display ends ============

	signat	_Lcd8_Display,12408
	global	_Lcd8_Write
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 103 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  lr              1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd8_Command
;;		_Data_write
;; This function is called by:
;;		_Lcd8_Display
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal3c
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text797
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	103
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 2
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Write@com)
	line	104
	
l6821:	
;pic_lcd4.h: 104: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	105
;pic_lcd4.h: 105: Data_write(lr);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Lcd8_Write@lr),w
	fcall	_Data_write
	line	107
	
l824:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text798,local,class=CODE,delta=2
global __ptext798
__ptext798:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 23 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd8_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text798
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	23
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 4
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l6819:	
;pic_lcd4.h: 24: Lcd8_Command(0x02);
	movlw	(02h)
	fcall	_Lcd8_Command
	line	25
;pic_lcd4.h: 25: Lcd8_Command(0x28);
	movlw	(028h)
	fcall	_Lcd8_Command
	line	26
;pic_lcd4.h: 26: Lcd8_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd8_Command
	line	27
;pic_lcd4.h: 27: Lcd8_Command(0x06);
	movlw	(06h)
	fcall	_Lcd8_Command
	line	28
;pic_lcd4.h: 28: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	30
	
l815:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_Serial_Conout
psect	text799,local,class=CODE,delta=2
global __ptext799
__ptext799:

;; *************** function _Serial_Conout *****************
;; Defined at:
;;		line 32 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  data            2    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_17(20), STR_16(11), STR_15(11), STR_14(9), 
;;		 -> STR_7(18), STR_6(10), STR_5(3), 
;;  n               1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ser_j           1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Serial_Out
;; This function is called by:
;;		_main
;;		_http_init
;; This function uses a non-reentrant model
;;
psect	text799
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
	line	32
	global	__size_of_Serial_Conout
	__size_of_Serial_Conout	equ	__end_of_Serial_Conout-_Serial_Conout
	
_Serial_Conout:	
	opt	stack 4
; Regs used in _Serial_Conout: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l6811:	
;pic_serial.h: 33: unsigned char ser_j;
;pic_serial.h: 34: for(ser_j=0;ser_j<n;ser_j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Serial_Conout@ser_j)
	goto	l6817
	line	35
	
l1025:	
	line	36
	
l6813:	
;pic_serial.h: 35: {
;pic_serial.h: 36: Serial_Out(data[ser_j]);
	movf	(Serial_Conout@ser_j),w
	addwf	(Serial_Conout@data),w
	movwf	fsr0
	movf	(Serial_Conout@data+1),w
	skipnc
	incf	(Serial_Conout@data+1),w
	movwf	btemp+1
	fcall	stringtab
	fcall	_Serial_Out
	line	34
	
l6815:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Serial_Conout+0)+0
	movf	(??_Serial_Conout+0)+0,w
	addwf	(Serial_Conout@ser_j),f
	goto	l6817
	
l1024:	
	
l6817:	
	movf	(Serial_Conout@n),w
	subwf	(Serial_Conout@ser_j),w
	skipc
	goto	u7161
	goto	u7160
u7161:
	goto	l6813
u7160:
	goto	l1027
	
l1026:	
	line	38
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Conout
	__end_of_Serial_Conout:
;; =============== function _Serial_Conout ends ============

	signat	_Serial_Conout,8312
	global	_Serial_Init
psect	text800,local,class=CODE,delta=2
global __ptext800
__ptext800:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 12 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  baud            4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Baudrate
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text800
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
	line	12
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 5
; Regs used in _Serial_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l6795:	
;pic_serial.h: 13: Baudrate(baud);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Init@baud+3),w
	movwf	(?_Baudrate+3)
	movf	(Serial_Init@baud+2),w
	movwf	(?_Baudrate+2)
	movf	(Serial_Init@baud+1),w
	movwf	(?_Baudrate+1)
	movf	(Serial_Init@baud),w
	movwf	(?_Baudrate)

	fcall	_Baudrate
	line	14
	
l6797:	
;pic_serial.h: 14: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	15
	
l6799:	
;pic_serial.h: 15: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	16
	
l6801:	
;pic_serial.h: 16: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	17
	
l6803:	
;pic_serial.h: 17: GIE=1;
	bsf	(95/8),(95)&7
	line	18
	
l6805:	
;pic_serial.h: 18: PEIE=1;
	bsf	(94/8),(94)&7
	line	19
	
l6807:	
;pic_serial.h: 19: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7
	line	20
	
l6809:	
;pic_serial.h: 20: CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	line	21
	
l1015:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,4216
	global	_Adc8_Cha
psect	text801,local,class=CODE,delta=2
global __ptext801
__ptext801:

;; *************** function _Adc8_Cha *****************
;; Defined at:
;;		line 10 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_adc.h"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text801
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_adc.h"
	line	10
	global	__size_of_Adc8_Cha
	__size_of_Adc8_Cha	equ	__end_of_Adc8_Cha-_Adc8_Cha
	
_Adc8_Cha:	
	opt	stack 5
; Regs used in _Adc8_Cha: [wreg+status,2+status,0+pclath+cstack]
;Adc8_Cha@val stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Adc8_Cha@val)
	line	11
	
l6577:	
;pic_adc.h: 11: ADFM=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	12
	
l6579:	
;pic_adc.h: 12: adc_del=25;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	movwf	(_adc_del)
	line	14
	
l6581:	
;pic_adc.h: 14: if(val==0)
	movf	(Adc8_Cha@val),f
	skipz
	goto	u6761
	goto	u6760
u6761:
	goto	l6607
u6760:
	line	16
	
l6583:	
;pic_adc.h: 15: {
;pic_adc.h: 16: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	17
	
l6585:	
;pic_adc.h: 17: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6587:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6771
	goto	u6770
u6771:
	goto	l6591
u6770:
	goto	l6789
	
l6589:	
	goto	l6789
	line	18
	
l852:	
	line	19
	
l6591:	
;pic_adc.h: 18: {
;pic_adc.h: 19: ADCON0=0x00;
	clrf	(31)	;volatile
	line	20
	
l6593:	
;pic_adc.h: 20: ADON=1;
	bsf	(248/8),(248)&7
	line	21
;pic_adc.h: 21: while(adc_del--);
	goto	l6595
	
l855:	
	goto	l6595
	
l854:	
	
l6595:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u6781
	goto	u6780
u6781:
	goto	l6595
u6780:
	goto	l6597
	
l856:	
	line	22
	
l6597:	
;pic_adc.h: 22: ADCON0 =0x05;
	movlw	(05h)
	movwf	(31)	;volatile
	line	23
;pic_adc.h: 23: while(ADCON0!=0X01);
	goto	l6599
	
l858:	
	goto	l6599
	
l857:	
	
l6599:	
	movf	(31),w	;volatile
	xorlw	01h
	skipz
	goto	u6791
	goto	u6790
u6791:
	goto	l6599
u6790:
	goto	l6601
	
l859:	
	line	24
	
l6601:	
;pic_adc.h: 24: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	25
	
l6603:	
;pic_adc.h: 25: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	17
	
l6605:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6801
	goto	u6800
u6801:
	goto	l6591
u6800:
	goto	l6789
	
l853:	
	line	27
;pic_adc.h: 26: }
;pic_adc.h: 27: }
	goto	l6789
	line	28
	
l851:	
	
l6607:	
;pic_adc.h: 28: else if(val==1)
	movf	(Adc8_Cha@val),w
	xorlw	01h
	skipz
	goto	u6811
	goto	u6810
u6811:
	goto	l6633
u6810:
	line	30
	
l6609:	
;pic_adc.h: 29: {
;pic_adc.h: 30: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	31
	
l6611:	
;pic_adc.h: 31: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6613:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6821
	goto	u6820
u6821:
	goto	l6617
u6820:
	goto	l6789
	
l6615:	
	goto	l6789
	line	32
	
l862:	
	line	33
	
l6617:	
;pic_adc.h: 32: {
;pic_adc.h: 33: ADCON0=0x08;
	movlw	(08h)
	movwf	(31)	;volatile
	line	34
	
l6619:	
;pic_adc.h: 34: ADON=1;
	bsf	(248/8),(248)&7
	line	35
;pic_adc.h: 35: while(adc_del--);
	goto	l6621
	
l865:	
	goto	l6621
	
l864:	
	
l6621:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u6831
	goto	u6830
u6831:
	goto	l6621
u6830:
	goto	l6623
	
l866:	
	line	36
	
l6623:	
;pic_adc.h: 36: ADCON0 =0x0d;
	movlw	(0Dh)
	movwf	(31)	;volatile
	line	37
;pic_adc.h: 37: while(ADCON0!=0X09);
	goto	l6625
	
l868:	
	goto	l6625
	
l867:	
	
l6625:	
	movf	(31),w	;volatile
	xorlw	09h
	skipz
	goto	u6841
	goto	u6840
u6841:
	goto	l6625
u6840:
	goto	l6627
	
l869:	
	line	38
	
l6627:	
;pic_adc.h: 38: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	39
	
l6629:	
;pic_adc.h: 39: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	31
	
l6631:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6851
	goto	u6850
u6851:
	goto	l6617
u6850:
	goto	l6789
	
l863:	
	line	41
;pic_adc.h: 40: }
;pic_adc.h: 41: }
	goto	l6789
	line	42
	
l861:	
	
l6633:	
;pic_adc.h: 42: else if(val==2)
	movf	(Adc8_Cha@val),w
	xorlw	02h
	skipz
	goto	u6861
	goto	u6860
u6861:
	goto	l6659
u6860:
	line	44
	
l6635:	
;pic_adc.h: 43: {
;pic_adc.h: 44: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	45
	
l6637:	
;pic_adc.h: 45: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6639:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6871
	goto	u6870
u6871:
	goto	l6643
u6870:
	goto	l6789
	
l6641:	
	goto	l6789
	line	46
	
l872:	
	line	47
	
l6643:	
;pic_adc.h: 46: {
;pic_adc.h: 47: ADCON0=0x10;
	movlw	(010h)
	movwf	(31)	;volatile
	line	48
	
l6645:	
;pic_adc.h: 48: ADON=1;
	bsf	(248/8),(248)&7
	line	49
;pic_adc.h: 49: while(adc_del--);
	goto	l6647
	
l875:	
	goto	l6647
	
l874:	
	
l6647:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u6881
	goto	u6880
u6881:
	goto	l6647
u6880:
	goto	l6649
	
l876:	
	line	50
	
l6649:	
;pic_adc.h: 50: ADCON0 =0x15;
	movlw	(015h)
	movwf	(31)	;volatile
	line	51
;pic_adc.h: 51: while(ADCON0!=0x11);
	goto	l6651
	
l878:	
	goto	l6651
	
l877:	
	
l6651:	
	movf	(31),w	;volatile
	xorlw	011h
	skipz
	goto	u6891
	goto	u6890
u6891:
	goto	l6651
u6890:
	goto	l6653
	
l879:	
	line	52
	
l6653:	
;pic_adc.h: 52: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	53
	
l6655:	
;pic_adc.h: 53: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	45
	
l6657:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6901
	goto	u6900
u6901:
	goto	l6643
u6900:
	goto	l6789
	
l873:	
	line	55
;pic_adc.h: 54: }
;pic_adc.h: 55: }
	goto	l6789
	line	56
	
l871:	
	
l6659:	
;pic_adc.h: 56: else if(val==3)
	movf	(Adc8_Cha@val),w
	xorlw	03h
	skipz
	goto	u6911
	goto	u6910
u6911:
	goto	l6685
u6910:
	line	58
	
l6661:	
;pic_adc.h: 57: {
;pic_adc.h: 58: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	59
	
l6663:	
;pic_adc.h: 59: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6665:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6921
	goto	u6920
u6921:
	goto	l6669
u6920:
	goto	l6789
	
l6667:	
	goto	l6789
	line	60
	
l882:	
	line	61
	
l6669:	
;pic_adc.h: 60: {
;pic_adc.h: 61: ADCON0=0x18;
	movlw	(018h)
	movwf	(31)	;volatile
	line	62
	
l6671:	
;pic_adc.h: 62: ADON=1;
	bsf	(248/8),(248)&7
	line	63
;pic_adc.h: 63: while(adc_del--);
	goto	l6673
	
l885:	
	goto	l6673
	
l884:	
	
l6673:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u6931
	goto	u6930
u6931:
	goto	l6673
u6930:
	goto	l6675
	
l886:	
	line	64
	
l6675:	
;pic_adc.h: 64: ADCON0 =0x1d;
	movlw	(01Dh)
	movwf	(31)	;volatile
	line	65
;pic_adc.h: 65: while(ADCON0!=0x19);
	goto	l6677
	
l888:	
	goto	l6677
	
l887:	
	
l6677:	
	movf	(31),w	;volatile
	xorlw	019h
	skipz
	goto	u6941
	goto	u6940
u6941:
	goto	l6677
u6940:
	goto	l6679
	
l889:	
	line	66
	
l6679:	
;pic_adc.h: 66: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	67
	
l6681:	
;pic_adc.h: 67: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	59
	
l6683:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6951
	goto	u6950
u6951:
	goto	l6669
u6950:
	goto	l6789
	
l883:	
	line	69
;pic_adc.h: 68: }
;pic_adc.h: 69: }
	goto	l6789
	line	70
	
l881:	
	
l6685:	
;pic_adc.h: 70: else if(val==4)
	movf	(Adc8_Cha@val),w
	xorlw	04h
	skipz
	goto	u6961
	goto	u6960
u6961:
	goto	l6711
u6960:
	line	72
	
l6687:	
;pic_adc.h: 71: {
;pic_adc.h: 72: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	73
	
l6689:	
;pic_adc.h: 73: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6691:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u6971
	goto	u6970
u6971:
	goto	l6695
u6970:
	goto	l6789
	
l6693:	
	goto	l6789
	line	74
	
l892:	
	line	75
	
l6695:	
;pic_adc.h: 74: {
;pic_adc.h: 75: ADCON0=0x20;
	movlw	(020h)
	movwf	(31)	;volatile
	line	76
	
l6697:	
;pic_adc.h: 76: ADON=1;
	bsf	(248/8),(248)&7
	line	77
;pic_adc.h: 77: while(adc_del--);
	goto	l6699
	
l895:	
	goto	l6699
	
l894:	
	
l6699:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u6981
	goto	u6980
u6981:
	goto	l6699
u6980:
	goto	l6701
	
l896:	
	line	78
	
l6701:	
;pic_adc.h: 78: ADCON0 =0x25;
	movlw	(025h)
	movwf	(31)	;volatile
	line	79
;pic_adc.h: 79: while(ADCON0!=0x21);
	goto	l6703
	
l898:	
	goto	l6703
	
l897:	
	
l6703:	
	movf	(31),w	;volatile
	xorlw	021h
	skipz
	goto	u6991
	goto	u6990
u6991:
	goto	l6703
u6990:
	goto	l6705
	
l899:	
	line	80
	
l6705:	
;pic_adc.h: 80: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	81
	
l6707:	
;pic_adc.h: 81: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	73
	
l6709:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7001
	goto	u7000
u7001:
	goto	l6695
u7000:
	goto	l6789
	
l893:	
	line	83
;pic_adc.h: 82: }
;pic_adc.h: 83: }
	goto	l6789
	line	84
	
l891:	
	
l6711:	
;pic_adc.h: 84: else if(val==5)
	movf	(Adc8_Cha@val),w
	xorlw	05h
	skipz
	goto	u7011
	goto	u7010
u7011:
	goto	l6737
u7010:
	line	86
	
l6713:	
;pic_adc.h: 85: {
;pic_adc.h: 86: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	87
	
l6715:	
;pic_adc.h: 87: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6717:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7021
	goto	u7020
u7021:
	goto	l6721
u7020:
	goto	l6789
	
l6719:	
	goto	l6789
	line	88
	
l902:	
	line	89
	
l6721:	
;pic_adc.h: 88: {
;pic_adc.h: 89: ADCON0=0x28;
	movlw	(028h)
	movwf	(31)	;volatile
	line	90
	
l6723:	
;pic_adc.h: 90: ADON=1;
	bsf	(248/8),(248)&7
	line	91
;pic_adc.h: 91: while(adc_del--);
	goto	l6725
	
l905:	
	goto	l6725
	
l904:	
	
l6725:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u7031
	goto	u7030
u7031:
	goto	l6725
u7030:
	goto	l6727
	
l906:	
	line	92
	
l6727:	
;pic_adc.h: 92: ADCON0 =0x2d;
	movlw	(02Dh)
	movwf	(31)	;volatile
	line	93
;pic_adc.h: 93: while(ADCON0!=0x29);
	goto	l6729
	
l908:	
	goto	l6729
	
l907:	
	
l6729:	
	movf	(31),w	;volatile
	xorlw	029h
	skipz
	goto	u7041
	goto	u7040
u7041:
	goto	l6729
u7040:
	goto	l6731
	
l909:	
	line	94
	
l6731:	
;pic_adc.h: 94: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	95
	
l6733:	
;pic_adc.h: 95: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	87
	
l6735:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7051
	goto	u7050
u7051:
	goto	l6721
u7050:
	goto	l6789
	
l903:	
	line	97
;pic_adc.h: 96: }
;pic_adc.h: 97: }
	goto	l6789
	line	98
	
l901:	
	
l6737:	
;pic_adc.h: 98: else if(val==6)
	movf	(Adc8_Cha@val),w
	xorlw	06h
	skipz
	goto	u7061
	goto	u7060
u7061:
	goto	l6763
u7060:
	line	100
	
l6739:	
;pic_adc.h: 99: {
;pic_adc.h: 100: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	101
	
l6741:	
;pic_adc.h: 101: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6743:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7071
	goto	u7070
u7071:
	goto	l6747
u7070:
	goto	l6789
	
l6745:	
	goto	l6789
	line	102
	
l912:	
	line	103
	
l6747:	
;pic_adc.h: 102: {
;pic_adc.h: 103: ADCON0=0x30;
	movlw	(030h)
	movwf	(31)	;volatile
	line	104
	
l6749:	
;pic_adc.h: 104: ADON=1;
	bsf	(248/8),(248)&7
	line	105
;pic_adc.h: 105: while(adc_del--);
	goto	l6751
	
l915:	
	goto	l6751
	
l914:	
	
l6751:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u7081
	goto	u7080
u7081:
	goto	l6751
u7080:
	goto	l6753
	
l916:	
	line	106
	
l6753:	
;pic_adc.h: 106: ADCON0 =0x35;
	movlw	(035h)
	movwf	(31)	;volatile
	line	107
;pic_adc.h: 107: while(ADCON0!=0x31);
	goto	l6755
	
l918:	
	goto	l6755
	
l917:	
	
l6755:	
	movf	(31),w	;volatile
	xorlw	031h
	skipz
	goto	u7091
	goto	u7090
u7091:
	goto	l6755
u7090:
	goto	l6757
	
l919:	
	line	108
	
l6757:	
;pic_adc.h: 108: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	109
	
l6759:	
;pic_adc.h: 109: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	101
	
l6761:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7101
	goto	u7100
u7101:
	goto	l6747
u7100:
	goto	l6789
	
l913:	
	line	111
;pic_adc.h: 110: }
;pic_adc.h: 111: }
	goto	l6789
	line	112
	
l911:	
	
l6763:	
;pic_adc.h: 112: else if(val==7)
	movf	(Adc8_Cha@val),w
	xorlw	07h
	skipz
	goto	u7111
	goto	u7110
u7111:
	goto	l6789
u7110:
	line	114
	
l6765:	
;pic_adc.h: 113: {
;pic_adc.h: 114: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	115
	
l6767:	
;pic_adc.h: 115: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l6769:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7121
	goto	u7120
u7121:
	goto	l6773
u7120:
	goto	l6789
	
l6771:	
	goto	l6789
	line	116
	
l922:	
	line	117
	
l6773:	
;pic_adc.h: 116: {
;pic_adc.h: 117: ADCON0=0x38;
	movlw	(038h)
	movwf	(31)	;volatile
	line	118
	
l6775:	
;pic_adc.h: 118: ADON=1;
	bsf	(248/8),(248)&7
	line	119
;pic_adc.h: 119: while(adc_del--);
	goto	l6777
	
l925:	
	goto	l6777
	
l924:	
	
l6777:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u7131
	goto	u7130
u7131:
	goto	l6777
u7130:
	goto	l6779
	
l926:	
	line	120
	
l6779:	
;pic_adc.h: 120: ADCON0 =0x3d;
	movlw	(03Dh)
	movwf	(31)	;volatile
	line	121
;pic_adc.h: 121: while(ADCON0!=0x39);
	goto	l6781
	
l928:	
	goto	l6781
	
l927:	
	
l6781:	
	movf	(31),w	;volatile
	xorlw	039h
	skipz
	goto	u7141
	goto	u7140
u7141:
	goto	l6781
u7140:
	goto	l6783
	
l929:	
	line	122
	
l6783:	
;pic_adc.h: 122: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	123
	
l6785:	
;pic_adc.h: 123: adc_temp0=adc_temp0+adc_temp;
	movf	(_adc_temp),w
	addwf	(_adc_temp0),w
	movwf	(_adc_temp0)
	movf	(_adc_temp+1),w
	skipnc
	incf	(_adc_temp+1),w
	addwf	(_adc_temp0+1),w
	movwf	1+(_adc_temp0)
	line	115
	
l6787:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u7151
	goto	u7150
u7151:
	goto	l6773
u7150:
	goto	l6789
	
l923:	
	goto	l6789
	line	125
	
l921:	
	goto	l6789
	line	126
	
l920:	
	goto	l6789
	
l910:	
	goto	l6789
	
l900:	
	goto	l6789
	
l890:	
	goto	l6789
	
l880:	
	goto	l6789
	
l870:	
	goto	l6789
	
l860:	
	
l6789:	
;pic_adc.h: 124: }
;pic_adc.h: 125: }
;pic_adc.h: 126: adc_val=adc_temp0/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_adc_temp0+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_adc_temp0),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	movwf	(_adc_val)
	line	127
	
l6791:	
;pic_adc.h: 127: return adc_val;
	movf	(_adc_val),w
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha+1)
	goto	l930
	
l6793:	
	line	128
	
l930:	
	return
	opt stack 0
GLOBAL	__end_of_Adc8_Cha
	__end_of_Adc8_Cha:
;; =============== function _Adc8_Cha ends ============

	signat	_Adc8_Cha,4218
	global	_Data_write
psect	text802,local,class=CODE,delta=2
global __ptext802
__ptext802:

;; *************** function _Data_write *****************
;; Defined at:
;;		line 68 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    5[BANK0 ] unsigned char 
;;  b               1    7[BANK0 ] unsigned char 
;;  a               1    6[BANK0 ] unsigned char 
;;  t               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_Lcd8_Write
;; This function uses a non-reentrant model
;;
psect	text802
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	68
	global	__size_of_Data_write
	__size_of_Data_write	equ	__end_of_Data_write-_Data_write
	
_Data_write:	
	opt	stack 2
; Regs used in _Data_write: [wreg+status,2+status,0+pclath+cstack]
;Data_write@com stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Data_write@com)
	line	69
	
l6539:	
;pic_lcd4.h: 69: unsigned char a=0,b=0,t=0;
	clrf	(Data_write@a)
	clrf	(Data_write@b)
	clrf	(Data_write@t)
	line	70
	
l6541:	
;pic_lcd4.h: 70: b= com & 0x0f;
	movf	(Data_write@com),w
	andlw	0Fh
	movwf	(??_Data_write+0)+0
	movf	(??_Data_write+0)+0,w
	movwf	(Data_write@b)
	line	71
	
l6543:	
;pic_lcd4.h: 71: a= (com>>4) & 0x0f;
	movf	(Data_write@com),w
	movwf	(??_Data_write+0)+0
	movlw	04h
u6535:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6535
	movf	0+(??_Data_write+0)+0,w
	andlw	0Fh
	movwf	(??_Data_write+1)+0
	movf	(??_Data_write+1)+0,w
	movwf	(Data_write@a)
	line	77
	
l6545:	
;pic_lcd4.h: 77: RB4=(a&0x01)>>0;
	btfsc	(Data_write@a),0
	goto	u6541
	goto	u6540
	
u6541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u6554
u6540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u6554:
	line	78
	
l6547:	
;pic_lcd4.h: 78: RB5=(a&0x02)>>1;
	movf	(Data_write@a),w
	movwf	(??_Data_write+0)+0
	movlw	01h
u6565:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6565
	btfsc	0+(??_Data_write+0)+0,0
	goto	u6571
	goto	u6570
	
u6571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u6584
u6570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u6584:
	line	79
	
l6549:	
;pic_lcd4.h: 79: RB6=(a&0x04)>>2;
	movf	(Data_write@a),w
	movwf	(??_Data_write+0)+0
	movlw	02h
u6595:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6595
	btfsc	0+(??_Data_write+0)+0,0
	goto	u6601
	goto	u6600
	
u6601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u6614
u6600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u6614:
	line	80
	
l6551:	
;pic_lcd4.h: 80: RB7=(a&0x08)>>3;
	movf	(Data_write@a),w
	movwf	(??_Data_write+0)+0
	movlw	03h
u6625:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6625
	btfsc	0+(??_Data_write+0)+0,0
	goto	u6631
	goto	u6630
	
u6631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u6644
u6630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u6644:
	line	82
	
l6553:	
;pic_lcd4.h: 82: RB1=1;
	bsf	(49/8),(49)&7
	line	83
	
l6555:	
;pic_lcd4.h: 83: RB2=1;Delay(125);
	bsf	(50/8),(50)&7
	
l6557:	
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	84
	
l6559:	
;pic_lcd4.h: 84: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	91
	
l6561:	
;pic_lcd4.h: 91: RB4=(b&0x01)>>0;
	btfsc	(Data_write@b),0
	goto	u6651
	goto	u6650
	
u6651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u6664
u6650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u6664:
	line	92
	
l6563:	
;pic_lcd4.h: 92: RB5=(b&0x02)>>1;
	movf	(Data_write@b),w
	movwf	(??_Data_write+0)+0
	movlw	01h
u6675:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6675
	btfsc	0+(??_Data_write+0)+0,0
	goto	u6681
	goto	u6680
	
u6681:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u6694
u6680:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u6694:
	line	93
	
l6565:	
;pic_lcd4.h: 93: RB6=(b&0x04)>>2;
	movf	(Data_write@b),w
	movwf	(??_Data_write+0)+0
	movlw	02h
u6705:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6705
	btfsc	0+(??_Data_write+0)+0,0
	goto	u6711
	goto	u6710
	
u6711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u6724
u6710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u6724:
	line	94
	
l6567:	
;pic_lcd4.h: 94: RB7=(b&0x08)>>3;
	movf	(Data_write@b),w
	movwf	(??_Data_write+0)+0
	movlw	03h
u6735:
	clrc
	rrf	(??_Data_write+0)+0,f
	addlw	-1
	skipz
	goto	u6735
	btfsc	0+(??_Data_write+0)+0,0
	goto	u6741
	goto	u6740
	
u6741:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u6754
u6740:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u6754:
	line	96
	
l6569:	
;pic_lcd4.h: 96: RB1=1;
	bsf	(49/8),(49)&7
	line	97
	
l6571:	
;pic_lcd4.h: 97: RB2=1;Delay(125);
	bsf	(50/8),(50)&7
	
l6573:	
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	98
	
l6575:	
;pic_lcd4.h: 98: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	100
	
l821:	
	return
	opt stack 0
GLOBAL	__end_of_Data_write
	__end_of_Data_write:
;; =============== function _Data_write ends ============

	signat	_Data_write,4216
	global	_Lcd8_Command
psect	text803,local,class=CODE,delta=2
global __ptext803
__ptext803:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 33 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    5[BANK0 ] unsigned char 
;;  b               1    7[BANK0 ] unsigned char 
;;  a               1    6[BANK0 ] unsigned char 
;;  t               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_Lcd8_Init
;;		_Lcd8_Write
;;		_main
;;		_http_init
;; This function uses a non-reentrant model
;;
psect	text803
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	33
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	line	41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Command@com)
	
l6501:	
;pic_lcd4.h: 41: unsigned char a=0,b=0,t=0;
	clrf	(Lcd8_Command@a)
	clrf	(Lcd8_Command@b)
	clrf	(Lcd8_Command@t)
	line	42
	
l6503:	
;pic_lcd4.h: 42: b= com & 0x0f;
	movf	(Lcd8_Command@com),w
	andlw	0Fh
	movwf	(??_Lcd8_Command+0)+0
	movf	(??_Lcd8_Command+0)+0,w
	movwf	(Lcd8_Command@b)
	line	43
	
l6505:	
;pic_lcd4.h: 43: a= (com>>4) & 0x0f;
	movf	(Lcd8_Command@com),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	04h
u6305:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6305
	movf	0+(??_Lcd8_Command+0)+0,w
	andlw	0Fh
	movwf	(??_Lcd8_Command+1)+0
	movf	(??_Lcd8_Command+1)+0,w
	movwf	(Lcd8_Command@a)
	line	45
	
l6507:	
;pic_lcd4.h: 45: RB4=(a&0x01)>>0;
	btfsc	(Lcd8_Command@a),0
	goto	u6311
	goto	u6310
	
u6311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u6324
u6310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u6324:
	line	46
	
l6509:	
;pic_lcd4.h: 46: RB5=(a&0x02)>>1;
	movf	(Lcd8_Command@a),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	01h
u6335:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6335
	btfsc	0+(??_Lcd8_Command+0)+0,0
	goto	u6341
	goto	u6340
	
u6341:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u6354
u6340:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u6354:
	line	47
	
l6511:	
;pic_lcd4.h: 47: RB6=(a&0x04)>>2;
	movf	(Lcd8_Command@a),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	02h
u6365:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6365
	btfsc	0+(??_Lcd8_Command+0)+0,0
	goto	u6371
	goto	u6370
	
u6371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u6384
u6370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u6384:
	line	48
	
l6513:	
;pic_lcd4.h: 48: RB7=(a&0x08)>>3;
	movf	(Lcd8_Command@a),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	03h
u6395:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6395
	btfsc	0+(??_Lcd8_Command+0)+0,0
	goto	u6401
	goto	u6400
	
u6401:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u6414
u6400:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u6414:
	line	50
	
l6515:	
;pic_lcd4.h: 50: RB1=0;
	bcf	(49/8),(49)&7
	line	51
	
l6517:	
;pic_lcd4.h: 51: RB2=1;Delay(125);
	bsf	(50/8),(50)&7
	
l6519:	
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	52
	
l6521:	
;pic_lcd4.h: 52: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	58
	
l6523:	
;pic_lcd4.h: 58: RB4=(b&0x01)>>0;
	btfsc	(Lcd8_Command@b),0
	goto	u6421
	goto	u6420
	
u6421:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u6434
u6420:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u6434:
	line	59
	
l6525:	
;pic_lcd4.h: 59: RB5=(b&0x02)>>1;
	movf	(Lcd8_Command@b),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	01h
u6445:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6445
	btfsc	0+(??_Lcd8_Command+0)+0,0
	goto	u6451
	goto	u6450
	
u6451:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u6464
u6450:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u6464:
	line	60
	
l6527:	
;pic_lcd4.h: 60: RB6=(b&0x04)>>2;
	movf	(Lcd8_Command@b),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	02h
u6475:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6475
	btfsc	0+(??_Lcd8_Command+0)+0,0
	goto	u6481
	goto	u6480
	
u6481:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u6494
u6480:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u6494:
	line	61
	
l6529:	
;pic_lcd4.h: 61: RB7=(b&0x08)>>3;
	movf	(Lcd8_Command@b),w
	movwf	(??_Lcd8_Command+0)+0
	movlw	03h
u6505:
	clrc
	rrf	(??_Lcd8_Command+0)+0,f
	addlw	-1
	skipz
	goto	u6505
	btfsc	0+(??_Lcd8_Command+0)+0,0
	goto	u6511
	goto	u6510
	
u6511:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u6524
u6510:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u6524:
	line	63
	
l6531:	
;pic_lcd4.h: 63: RB1=0;
	bcf	(49/8),(49)&7
	line	64
	
l6533:	
;pic_lcd4.h: 64: RB2=1;Delay(125);
	bsf	(50/8),(50)&7
	
l6535:	
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	65
	
l6537:	
;pic_lcd4.h: 65: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	66
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	___awmod
psect	text804,local,class=CODE,delta=2
global __ptext804
__ptext804:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal3c
;;		_serial_Decimal3
;;		_serial_Decimal2
;;		_Serial_Decimal3
;; This function uses a non-reentrant model
;;
psect	text804
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6467:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u6211
	goto	u6210
u6211:
	goto	l6471
u6210:
	line	10
	
l6469:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l6471
	line	12
	
l2599:	
	line	13
	
l6471:	
	btfss	(___awmod@divisor+1),7
	goto	u6221
	goto	u6220
u6221:
	goto	l6475
u6220:
	line	14
	
l6473:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l6475
	
l2600:	
	line	15
	
l6475:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u6231
	goto	u6230
u6231:
	goto	l6493
u6230:
	line	16
	
l6477:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l6483
	
l2603:	
	line	18
	
l6479:	
	movlw	01h
	
u6245:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u6245
	line	19
	
l6481:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l6483
	line	20
	
l2602:	
	line	17
	
l6483:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u6251
	goto	u6250
u6251:
	goto	l6479
u6250:
	goto	l6485
	
l2604:	
	goto	l6485
	line	21
	
l2605:	
	line	22
	
l6485:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u6265
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u6265:
	skipc
	goto	u6261
	goto	u6260
u6261:
	goto	l6489
u6260:
	line	23
	
l6487:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l6489
	
l2606:	
	line	24
	
l6489:	
	movlw	01h
	
u6275:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u6275
	line	25
	
l6491:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u6281
	goto	u6280
u6281:
	goto	l6485
u6280:
	goto	l6493
	
l2607:	
	goto	l6493
	line	26
	
l2601:	
	line	27
	
l6493:	
	movf	(___awmod@sign),w
	skipz
	goto	u6290
	goto	l6497
u6290:
	line	28
	
l6495:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l6497
	
l2608:	
	line	29
	
l6497:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2609
	
l6499:	
	line	30
	
l2609:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text805,local,class=CODE,delta=2
global __ptext805
__ptext805:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal3c
;;		_serial_Decimal3
;;		_Serial_Decimal3
;; This function uses a non-reentrant model
;;
psect	text805
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6427:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u6111
	goto	u6110
u6111:
	goto	l6431
u6110:
	line	11
	
l6429:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l6431
	line	13
	
l2531:	
	line	14
	
l6431:	
	btfss	(___awdiv@dividend+1),7
	goto	u6121
	goto	u6120
u6121:
	goto	l6437
u6120:
	line	15
	
l6433:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6435:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l6437
	line	17
	
l2532:	
	line	18
	
l6437:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6439:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u6131
	goto	u6130
u6131:
	goto	l6459
u6130:
	line	20
	
l6441:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l6447
	
l2535:	
	line	22
	
l6443:	
	movlw	01h
	
u6145:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u6145
	line	23
	
l6445:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l6447
	line	24
	
l2534:	
	line	21
	
l6447:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u6151
	goto	u6150
u6151:
	goto	l6443
u6150:
	goto	l6449
	
l2536:	
	goto	l6449
	line	25
	
l2537:	
	line	26
	
l6449:	
	movlw	01h
	
u6165:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u6165
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u6175
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u6175:
	skipc
	goto	u6171
	goto	u6170
u6171:
	goto	l6455
u6170:
	line	28
	
l6451:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6453:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l6455
	line	30
	
l2538:	
	line	31
	
l6455:	
	movlw	01h
	
u6185:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u6185
	line	32
	
l6457:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u6191
	goto	u6190
u6191:
	goto	l6449
u6190:
	goto	l6459
	
l2539:	
	goto	l6459
	line	33
	
l2533:	
	line	34
	
l6459:	
	movf	(___awdiv@sign),w
	skipz
	goto	u6200
	goto	l6463
u6200:
	line	35
	
l6461:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l6463
	
l2540:	
	line	36
	
l6463:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2541
	
l6465:	
	line	37
	
l2541:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text806,local,class=CODE,delta=2
global __ptext806
__ptext806:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal3c
;;		_Lcd8_Decimal4
;;		_serial_Decimal3
;;		_serial_Decimal2
;; This function uses a non-reentrant model
;;
psect	text806
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l6405:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u6051
	goto	u6050
u6051:
	goto	l6423
u6050:
	line	9
	
l6407:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l6413
	
l2409:	
	line	11
	
l6409:	
	movlw	01h
	
u6065:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u6065
	line	12
	
l6411:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l6413
	line	13
	
l2408:	
	line	10
	
l6413:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u6071
	goto	u6070
u6071:
	goto	l6409
u6070:
	goto	l6415
	
l2410:	
	goto	l6415
	line	14
	
l2411:	
	line	15
	
l6415:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u6085
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u6085:
	skipc
	goto	u6081
	goto	u6080
u6081:
	goto	l6419
u6080:
	line	16
	
l6417:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l6419
	
l2412:	
	line	17
	
l6419:	
	movlw	01h
	
u6095:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u6095
	line	18
	
l6421:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u6101
	goto	u6100
u6101:
	goto	l6415
u6100:
	goto	l6423
	
l2413:	
	goto	l6423
	line	19
	
l2407:	
	line	20
	
l6423:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2414
	
l6425:	
	line	21
	
l2414:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text807,local,class=CODE,delta=2
global __ptext807
__ptext807:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Adc8_Cha
;;		_distance
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal3c
;;		_Lcd8_Decimal4
;;		_Adc10_Cha
;;		_serial_Decimal3
;;		_serial_Decimal2
;; This function uses a non-reentrant model
;;
psect	text807
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l6379:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l6381:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u5981
	goto	u5980
u5981:
	goto	l6401
u5980:
	line	11
	
l6383:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l6389
	
l2399:	
	line	13
	
l6385:	
	movlw	01h
	
u5995:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5995
	line	14
	
l6387:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l6389
	line	15
	
l2398:	
	line	12
	
l6389:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u6001
	goto	u6000
u6001:
	goto	l6385
u6000:
	goto	l6391
	
l2400:	
	goto	l6391
	line	16
	
l2401:	
	line	17
	
l6391:	
	movlw	01h
	
u6015:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u6015
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u6025
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u6025:
	skipc
	goto	u6021
	goto	u6020
u6021:
	goto	l6397
u6020:
	line	19
	
l6393:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l6395:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l6397
	line	21
	
l2402:	
	line	22
	
l6397:	
	movlw	01h
	
u6035:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u6035
	line	23
	
l6399:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u6041
	goto	u6040
u6041:
	goto	l6391
u6040:
	goto	l6401
	
l2403:	
	goto	l6401
	line	24
	
l2397:	
	line	25
	
l6401:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2404
	
l6403:	
	line	26
	
l2404:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_eeprom_read
psect	text808,local,class=CODE,delta=2
global __ptext808
__ptext808:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 7 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text808
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\eeread.c"
	line	7
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 6
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	9
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_read@addr)
	line	8
	
l1706:	
	line	9
# 9 "C:\Program Files\HI-TECH Software\PICC\9.83\sources\eeread.c"
clrwdt ;#
psect	text808
	line	10
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u5971
	goto	u5970
u5971:
	goto	l1706
u5970:
	goto	l6375
	
l1707:	
	line	11
	
l6375:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l1708
	
l6377:	
	line	12
	
l1708:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_Delay_us
psect	text809,local,class=CODE,delta=2
global __ptext809
__ptext809:

;; *************** function _Delay_us *****************
;; Defined at:
;;		line 2 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\Delay_us.h"
;; Parameters:    Size  Location     Type
;;  del             2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_distance
;; This function uses a non-reentrant model
;;
psect	text809
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\Delay_us.h"
	line	2
	global	__size_of_Delay_us
	__size_of_Delay_us	equ	__end_of_Delay_us-_Delay_us
	
_Delay_us:	
	opt	stack 5
; Regs used in _Delay_us: [wreg]
	line	3
	
l6369:	
;Delay_us.h: 3: while(del--);
	goto	l6371
	
l1058:	
	goto	l6371
	
l1057:	
	
l6371:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(Delay_us@del),f
	movlw	high(01h)
	skipc
	decf	(Delay_us@del+1),f
	subwf	(Delay_us@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay_us@del+1)),w
	skipz
	goto	u5965
	movlw	low(0FFFFh)
	xorwf	((Delay_us@del)),w
u5965:

	skipz
	goto	u5961
	goto	u5960
u5961:
	goto	l6371
u5960:
	goto	l1060
	
l1059:	
	line	4
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_us
	__end_of_Delay_us:
;; =============== function _Delay_us ends ============

	signat	_Delay_us,4216
	global	_Receive
psect	text810,local,class=CODE,delta=2
global __ptext810
__ptext810:

;; *************** function _Receive *****************
;; Defined at:
;;		line 80 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  rece            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rece            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text810
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
	line	80
	global	__size_of_Receive
	__size_of_Receive	equ	__end_of_Receive-_Receive
	
_Receive:	
	opt	stack 6
; Regs used in _Receive: [wreg]
;Receive@rece stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Receive@rece)
	line	81
	
l6361:	
;pic_serial.h: 81: if(rece==1)
	movf	(Receive@rece),w
	xorlw	01h
	skipz
	goto	u5951
	goto	u5950
u5951:
	goto	l1046
u5950:
	line	83
	
l6363:	
;pic_serial.h: 82: {
;pic_serial.h: 83: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	84
;pic_serial.h: 84: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	85
;pic_serial.h: 85: }
	goto	l1048
	line	86
	
l1046:	
	line	88
;pic_serial.h: 86: else
;pic_serial.h: 87: {
;pic_serial.h: 88: RCIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1125/8)^080h,(1125)&7
	line	89
;pic_serial.h: 89: CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	goto	l1048
	line	90
	
l1047:	
	line	91
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_Receive
	__end_of_Receive:
;; =============== function _Receive ends ============

	signat	_Receive,4216
	global	_Serial_Out
psect	text811,local,class=CODE,delta=2
global __ptext811
__ptext811:

;; *************** function _Serial_Out *****************
;; Defined at:
;;		line 24 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_Conout
;;		_main
;;		_http_init
;;		_serial_Decimal3
;;		_serial_Decimal2
;;		_Serial_Decimal3
;; This function uses a non-reentrant model
;;
psect	text811
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
	line	24
	global	__size_of_Serial_Out
	__size_of_Serial_Out	equ	__end_of_Serial_Out-_Serial_Out
	
_Serial_Out:	
	opt	stack 5
; Regs used in _Serial_Out: [wreg]
;Serial_Out@val stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_Out@val)
	line	25
	
l6359:	
;pic_serial.h: 25: TXREG =val;
	movf	(Serial_Out@val),w
	movwf	(25)	;volatile
	line	26
;pic_serial.h: 26: while(!TXIF);
	goto	l1018
	
l1019:	
	
l1018:	
	btfss	(100/8),(100)&7
	goto	u5941
	goto	u5940
u5941:
	goto	l1018
u5940:
	
l1020:	
	line	27
;pic_serial.h: 27: TXIF = 0;
	bcf	(100/8),(100)&7
	line	28
	
l1021:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Out
	__end_of_Serial_Out:
;; =============== function _Serial_Out ends ============

	signat	_Serial_Out,4216
	global	_Baudrate
psect	text812,local,class=CODE,delta=2
global __ptext812
__ptext812:

;; *************** function _Baudrate *****************
;; Defined at:
;;		line 41 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  baud            4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_Init
;; This function uses a non-reentrant model
;;
psect	text812
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_serial.h"
	line	41
	global	__size_of_Baudrate
	__size_of_Baudrate	equ	__end_of_Baudrate-_Baudrate
	
_Baudrate:	
	opt	stack 5
; Regs used in _Baudrate: [wreg]
	line	42
	
l6317:	
;pic_serial.h: 42: if(baud==110)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5875
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5875
	movlw	0
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5875
	movlw	06Eh
	xorwf	(Baudrate@baud),w
u5875:
	skipz
	goto	u5871
	goto	u5870
u5871:
	goto	l6323
u5870:
	line	44
	
l6319:	
;pic_serial.h: 43: {
;pic_serial.h: 44: SPBRG = 141;
	movlw	(08Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	45
	
l6321:	
;pic_serial.h: 45: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	46
;pic_serial.h: 46: }
	goto	l1043
	line	47
	
l1030:	
	
l6323:	
;pic_serial.h: 47: else if(baud==1200)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5885
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5885
	movlw	04h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5885
	movlw	0B0h
	xorwf	(Baudrate@baud),w
u5885:
	skipz
	goto	u5881
	goto	u5880
u5881:
	goto	l6329
u5880:
	line	49
	
l6325:	
;pic_serial.h: 48: {
;pic_serial.h: 49: SPBRG = 51;
	movlw	(033h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	50
	
l6327:	
;pic_serial.h: 50: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	51
;pic_serial.h: 51: }
	goto	l1043
	line	52
	
l1032:	
	
l6329:	
;pic_serial.h: 52: else if(baud==2400)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5895
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5895
	movlw	09h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5895
	movlw	060h
	xorwf	(Baudrate@baud),w
u5895:
	skipz
	goto	u5891
	goto	u5890
u5891:
	goto	l6335
u5890:
	line	54
	
l6331:	
;pic_serial.h: 53: {
;pic_serial.h: 54: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	55
	
l6333:	
;pic_serial.h: 55: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	56
;pic_serial.h: 56: }
	goto	l1043
	line	57
	
l1034:	
	
l6335:	
;pic_serial.h: 57: else if(baud==4800)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5905
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5905
	movlw	012h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5905
	movlw	0C0h
	xorwf	(Baudrate@baud),w
u5905:
	skipz
	goto	u5901
	goto	u5900
u5901:
	goto	l6341
u5900:
	line	59
	
l6337:	
;pic_serial.h: 58: {
;pic_serial.h: 59: SPBRG = 12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	60
	
l6339:	
;pic_serial.h: 60: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	61
;pic_serial.h: 61: }
	goto	l1043
	line	62
	
l1036:	
	
l6341:	
;pic_serial.h: 62: else if(baud==9600)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5915
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5915
	movlw	025h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5915
	movlw	080h
	xorwf	(Baudrate@baud),w
u5915:
	skipz
	goto	u5911
	goto	u5910
u5911:
	goto	l6347
u5910:
	line	64
	
l6343:	
;pic_serial.h: 63: {
;pic_serial.h: 64: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	65
	
l6345:	
;pic_serial.h: 65: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	66
;pic_serial.h: 66: }
	goto	l1043
	line	67
	
l1038:	
	
l6347:	
;pic_serial.h: 67: else if(baud==57600)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5925
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5925
	movlw	0E1h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5925
	movlw	0
	xorwf	(Baudrate@baud),w
u5925:
	skipz
	goto	u5921
	goto	u5920
u5921:
	goto	l6353
u5920:
	line	69
	
l6349:	
;pic_serial.h: 68: {
;pic_serial.h: 69: SPBRG = 20;
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	70
	
l6351:	
;pic_serial.h: 70: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	71
;pic_serial.h: 71: }
	goto	l1043
	line	72
	
l1040:	
	
l6353:	
;pic_serial.h: 72: else if(baud==115200)
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u5935
	movlw	01h
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u5935
	movlw	0C2h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u5935
	movlw	0
	xorwf	(Baudrate@baud),w
u5935:
	skipz
	goto	u5931
	goto	u5930
u5931:
	goto	l1043
u5930:
	line	74
	
l6355:	
;pic_serial.h: 73: {
;pic_serial.h: 74: SPBRG = 10;
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	75
	
l6357:	
;pic_serial.h: 75: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	goto	l1043
	line	76
	
l1042:	
	goto	l1043
	line	77
	
l1041:	
	goto	l1043
	
l1039:	
	goto	l1043
	
l1037:	
	goto	l1043
	
l1035:	
	goto	l1043
	
l1033:	
	goto	l1043
	
l1031:	
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_Baudrate
	__end_of_Baudrate:
;; =============== function _Baudrate ends ============

	signat	_Baudrate,4216
	global	_Delay
psect	text813,local,class=CODE,delta=2
global __ptext813
__ptext813:

;; *************** function _Delay *****************
;; Defined at:
;;		line 180 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
;; Parameters:    Size  Location     Type
;;  del             2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Command
;;		_Data_write
;;		_main
;;		_http_init
;; This function uses a non-reentrant model
;;
psect	text813
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\pic_lcd4.h"
	line	180
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 4
; Regs used in _Delay: [wreg]
	line	181
	
l6059:	
;pic_lcd4.h: 181: while(del--);
	goto	l6061
	
l846:	
	goto	l6061
	
l845:	
	
l6061:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u5465
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u5465:

	skipz
	goto	u5461
	goto	u5460
u5461:
	goto	l6061
u5460:
	goto	l848
	
l847:	
	line	182
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
	global	_ISR
psect	text814,local,class=CODE,delta=2
global __ptext814
__ptext814:

;; *************** function _ISR *****************
;; Defined at:
;;		line 39 in file "C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text814
	file	"C:\Users\crisp\Desktop\JAYAM RAILWAY CRACK DETECT\garbagemointering.c"
	line	39
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 2
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text814
	line	41
	
i1l5327:	
;garbagemointering.c: 41: if(TMR0IF==1)
	btfss	(90/8),(90)&7
	goto	u419_21
	goto	u419_20
u419_21:
	goto	i1l1065
u419_20:
	line	43
	
i1l5329:	
;garbagemointering.c: 42: {
;garbagemointering.c: 43: sec1++;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_sec1),f
	line	44
	
i1l5331:	
;garbagemointering.c: 44: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	45
	
i1l5333:	
;garbagemointering.c: 45: if(sec1>=15)
	movlw	(0Fh)
	subwf	(_sec1),w
	skipc
	goto	u420_21
	goto	u420_20
u420_21:
	goto	i1l1065
u420_20:
	line	47
	
i1l5335:	
;garbagemointering.c: 46: {
;garbagemointering.c: 47: sec1=0;sec2++;
	clrf	(_sec1)
	
i1l5337:	
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_sec2),f
	goto	i1l1065
	line	48
	
i1l1064:	
	goto	i1l1065
	line	49
	
i1l1063:	
	line	50
	
i1l1065:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text815,local,class=CODE,delta=2
global __ptext815
__ptext815:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
