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
	FNCALL	_main,_Delay
	FNCALL	_main,_Lcd8_Display
	FNCALL	_main,_Serial_Init
	FNCALL	_main,_Receive
	FNCALL	_main,_Lcd8_Command
	FNCALL	_main,_Adc8_Cha
	FNCALL	_main,_Lcd8_Decimal3
	FNCALL	_Lcd8_Decimal3,___awdiv
	FNCALL	_Lcd8_Decimal3,___awmod
	FNCALL	_Lcd8_Decimal3,___lwdiv
	FNCALL	_Lcd8_Decimal3,___lwmod
	FNCALL	_Lcd8_Decimal3,_Lcd8_Write
	FNCALL	_Lcd8_Display,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Delay
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_Adc8_Cha,___lwdiv
	FNCALL	_Serial_Init,_Baudrate
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_c
	global	_add
	global	_cu
	global	_qq
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
	line	15

;initializer for _c
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	0
	line	17

;initializer for _add
	retlw	0C0h
	retlw	0

	line	14

;initializer for _cu
	retlw	0C0h

;initializer for _qq
	retlw	01h
	global	_a
	global	_aa
	global	_adc_hbit
	global	_adc_lbit
	global	_adc_temp
	global	_adc_temp0
	global	_adc_val1
	global	_b
	global	_count
	global	_hb
	global	_i
	global	_n1
	global	_n2
	global	_n3
	global	_pres
	global	_sec
	global	_shb
	global	_sp
	global	_ss
	global	_st
	global	_temp
	global	_x
	global	_y
	global	_z
	global	_adc_del
	global	_adc_j
	global	_adc_val
	global	_j
	global	_kc
	global	_s
	global	_u
	global	_val1
	global	_f
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
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
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_PEIE
_PEIE	set	94
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
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
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_4:	
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
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	88	;'X'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	90	;'Z'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_2:	
	retlw	66	;'B'
	retlw	83	;'S'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	66	;'B'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	76	;'L'
	retlw	0
psect	strings
	
STR_5:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	71	;'G'
	retlw	72	;'H'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_9:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	file	"CEP0896.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_aa:
       ds      2

_adc_hbit:
       ds      2

_adc_lbit:
       ds      2

_adc_temp:
       ds      2

_adc_temp0:
       ds      2

_adc_val1:
       ds      2

_b:
       ds      2

_count:
       ds      2

_hb:
       ds      2

_i:
       ds      2

_n1:
       ds      2

_n2:
       ds      2

_n3:
       ds      2

_pres:
       ds      2

_sec:
       ds      2

_shb:
       ds      2

_sp:
       ds      2

_ss:
       ds      2

_st:
       ds      2

_temp:
       ds      2

_x:
       ds      2

_y:
       ds      2

_z:
       ds      2

_adc_del:
       ds      1

_adc_j:
       ds      1

_adc_val:
       ds      1

_j:
       ds      1

_kc:
       ds      1

_s:
       ds      1

_u:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
	line	15
_c:
       ds      5

psect	dataBANK0
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
	line	17
_add:
       ds      2

psect	dataBANK0
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
	line	14
_cu:
       ds      1

psect	dataBANK0
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
_qq:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_val1:
       ds      12

_f:
       ds      10

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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+037h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+016h)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+9)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd8_Command
?_Lcd8_Command:	; 0 bytes @ 0x0
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_Baudrate
?_Baudrate:	; 0 bytes @ 0x0
	global	?_Lcd8_Init
?_Lcd8_Init:	; 0 bytes @ 0x0
	global	?_Receive
?_Receive:	; 0 bytes @ 0x0
	global	??_Receive
??_Receive:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	Receive@rece
Receive@rece:	; 1 bytes @ 0x0
	global	Delay@del
Delay@del:	; 2 bytes @ 0x0
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
	ds	2
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	Lcd8_Command@com
Lcd8_Command@com:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_Lcd8_Init
??_Lcd8_Init:	; 0 bytes @ 0x3
	global	?_Lcd8_Write
?_Lcd8_Write:	; 0 bytes @ 0x3
	global	Lcd8_Write@lr
Lcd8_Write@lr:	; 1 bytes @ 0x3
	ds	1
	global	??_Baudrate
??_Baudrate:	; 0 bytes @ 0x4
	global	??_Lcd8_Write
??_Lcd8_Write:	; 0 bytes @ 0x4
	global	?_Serial_Init
?_Serial_Init:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	Lcd8_Write@com
Lcd8_Write@com:	; 1 bytes @ 0x4
	global	Serial_Init@baud
Serial_Init@baud:	; 4 bytes @ 0x4
	ds	1
	global	?_Lcd8_Display
?_Lcd8_Display:	; 0 bytes @ 0x5
	global	Lcd8_Display@word
Lcd8_Display@word:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	Lcd8_Display@n
Lcd8_Display@n:	; 2 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_Lcd8_Display
??_Lcd8_Display:	; 0 bytes @ 0x8
	global	??_Serial_Init
??_Serial_Init:	; 0 bytes @ 0x8
	global	?_Adc8_Cha
?_Adc8_Cha:	; 2 bytes @ 0x8
	ds	1
	global	?_Lcd8_Decimal3
?_Lcd8_Decimal3:	; 0 bytes @ 0x9
	global	Lcd8_Decimal3@val
Lcd8_Decimal3@val:	; 1 bytes @ 0x9
	ds	1
	global	??_Lcd8_Decimal3
??_Lcd8_Decimal3:	; 0 bytes @ 0xA
	global	??_Adc8_Cha
??_Adc8_Cha:	; 0 bytes @ 0xA
	global	Lcd8_Display@com
Lcd8_Display@com:	; 1 bytes @ 0xA
	ds	1
	global	Lcd8_Display@Lcd_i
Lcd8_Display@Lcd_i:	; 1 bytes @ 0xB
	ds	1
	global	Adc8_Cha@val
Adc8_Cha@val:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	Lcd8_Decimal3@Lcd_h
Lcd8_Decimal3@Lcd_h:	; 2 bytes @ 0x0
	ds	2
	global	Lcd8_Decimal3@Lcd_t
Lcd8_Decimal3@Lcd_t:	; 2 bytes @ 0x2
	ds	2
	global	Lcd8_Decimal3@Lcd_o
Lcd8_Decimal3@Lcd_o:	; 2 bytes @ 0x4
	ds	2
	global	Lcd8_Decimal3@Lcd_hr
Lcd8_Decimal3@Lcd_hr:	; 2 bytes @ 0x6
	ds	2
	global	Lcd8_Decimal3@com
Lcd8_Decimal3@com:	; 1 bytes @ 0x8
	ds	1
;;Data sizes: Strings 123, constant 0, data 9, bss 77, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      9      73
;; BANK1           80      0      22
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
;; Lcd8_Display@word	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_9(CODE[11]), STR_8(CODE[11]), STR_7(CODE[11]), STR_6(CODE[11]), 
;;		 -> STR_5(CODE[11]), STR_4(CODE[17]), STR_3(CODE[17]), STR_2(CODE[17]), 
;;		 -> STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Adc8_Cha
;;   _Lcd8_Decimal3->___awdiv
;;   _Lcd8_Display->_Lcd8_Write
;;   _Lcd8_Write->_Lcd8_Command
;;   _Lcd8_Init->_Lcd8_Command
;;   _Adc8_Cha->___lwdiv
;;   _Serial_Init->_Baudrate
;;   _Lcd8_Command->_Delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Lcd8_Decimal3
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    2141
;;                                             13 COMMON     1     1      0
;;                          _Lcd8_Init
;;                              _Delay
;;                       _Lcd8_Display
;;                        _Serial_Init
;;                            _Receive
;;                       _Lcd8_Command
;;                           _Adc8_Cha
;;                      _Lcd8_Decimal3
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Decimal3                                       12    11      1    1251
;;                                              9 COMMON     3     2      1
;;                                              0 BANK0      9     9      0
;;                            ___awdiv
;;                            ___awmod
;;                            ___lwdiv
;;                            ___lwmod
;;                         _Lcd8_Write
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Display                                         7     4      3     244
;;                                              5 COMMON     7     4      3
;;                         _Lcd8_Write
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Write                                           2     1      1     110
;;                                              3 COMMON     2     1      1
;;                       _Lcd8_Command
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Init                                            0     0      0      44
;;                       _Lcd8_Command
;; ---------------------------------------------------------------------------------
;; (1) _Adc8_Cha                                             5     3      2     338
;;                                              8 COMMON     5     3      2
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Init                                          4     0      4     176
;;                                              4 COMMON     4     0      4
;;                           _Baudrate
;; ---------------------------------------------------------------------------------
;; (3) _Lcd8_Command                                         1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _Receive                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Baudrate                                             4     0      4     154
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; (3) _Delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd8_Init
;;     _Lcd8_Command
;;       _Delay
;;   _Delay
;;   _Lcd8_Display
;;     _Lcd8_Write
;;       _Lcd8_Command
;;         _Delay
;;       _Delay
;;   _Serial_Init
;;     _Baudrate
;;   _Receive
;;   _Lcd8_Command
;;     _Delay
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
;;       _Delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      16       7       27.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      71      12        0.0%
;;ABS                  0      0      6D       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      9      49       5       91.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Lcd8_Init
;;		_Delay
;;		_Lcd8_Display
;;		_Serial_Init
;;		_Receive
;;		_Lcd8_Command
;;		_Adc8_Cha
;;		_Lcd8_Decimal3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\CEP0896.C"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	26
	
l4598:	
;CEP0896.C: 26: TRISC=0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	27
	
l4600:	
;CEP0896.C: 27: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	28
	
l4602:	
;CEP0896.C: 28: TRISB=0x00;
	clrf	(134)^080h	;volatile
	line	29
;CEP0896.C: 29: TRISA=0x0f;
	movlw	(0Fh)
	movwf	(133)^080h	;volatile
	line	32
	
l4604:	
;CEP0896.C: 32: Lcd8_Init();
	fcall	_Lcd8_Init
	line	33
	
l4606:	
;CEP0896.C: 33: Delay(6500);
	movlw	low(01964h)
	movwf	(?_Delay)
	movlw	high(01964h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	34
	
l4608:	
;CEP0896.C: 34: Lcd8_Display(0x80,"--HAND MOVEMENT-",16);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	35
	
l4610:	
;CEP0896.C: 35: Lcd8_Display(0xC0,"BSD ROBOT CONTRL",16);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	line	36
	
l4612:	
;CEP0896.C: 36: Delay(65000);Delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l4614:	
	movlw	low(0FDE8h)
	movwf	(?_Delay)
	movlw	high(0FDE8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	38
	
l4616:	
;CEP0896.C: 38: Serial_Init(9600);
	movlw	0
	movwf	(?_Serial_Init+3)
	movlw	0
	movwf	(?_Serial_Init+2)
	movlw	025h
	movwf	(?_Serial_Init+1)
	movlw	080h
	movwf	(?_Serial_Init)

	fcall	_Serial_Init
	line	39
	
l4618:	
;CEP0896.C: 39: Receive(0);RB0=1;RB1=1;RB2=1;RB3=1;
	movlw	(0)
	fcall	_Receive
	
l4620:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l4622:	
	bsf	(49/8),(49)&7
	
l4624:	
	bsf	(50/8),(50)&7
	
l4626:	
	bsf	(51/8),(51)&7
	line	40
	
l4628:	
;CEP0896.C: 40: Lcd8_Command(1);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	41
	
l4630:	
;CEP0896.C: 41: Lcd8_Display(0x80,"X:    Y:   Z:   ",16);
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(080h)
	fcall	_Lcd8_Display
	line	42
	
l4632:	
;CEP0896.C: 42: Lcd8_Display(0xC0,"                ",16);
	movlw	((STR_4-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(010h)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(010h)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C0h)
	fcall	_Lcd8_Display
	goto	l4634
	line	43
;CEP0896.C: 43: while(1)
	
l999:	
	line	46
	
l4634:	
;CEP0896.C: 44: {
;CEP0896.C: 46: x=Adc8_Cha(0);
	movlw	(0)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x+1)
	addwf	(_x+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(_x)
	addwf	(_x)

	line	47
	
l4636:	
;CEP0896.C: 47: y=Adc8_Cha(1);
	movlw	(01h)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_y+1)
	addwf	(_y+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(_y)
	addwf	(_y)

	line	48
	
l4638:	
;CEP0896.C: 48: z=Adc8_Cha(2);
	movlw	(02h)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_z+1)
	addwf	(_z+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(_z)
	addwf	(_z)

	line	50
	
l4640:	
;CEP0896.C: 50: Lcd8_Decimal3(0x82,x);
	movf	(_x),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(082h)
	fcall	_Lcd8_Decimal3
	line	51
	
l4642:	
;CEP0896.C: 51: Lcd8_Decimal3(0x88,y);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(088h)
	fcall	_Lcd8_Decimal3
	line	52
	
l4644:	
;CEP0896.C: 52: Lcd8_Decimal3(0x8D,z);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_z),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(08Dh)
	fcall	_Lcd8_Decimal3
	line	54
	
l4646:	
;CEP0896.C: 54: if((x>=80&&x<=85)&& (z>76&& z<=82))
	movlw	high(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_x+1),w
	movlw	low(050h)
	skipnz
	subwf	(_x),w
	skipc
	goto	u4561
	goto	u4560
u4561:
	goto	l4664
u4560:
	
l4648:	
	movlw	high(056h)
	subwf	(_x+1),w
	movlw	low(056h)
	skipnz
	subwf	(_x),w
	skipnc
	goto	u4571
	goto	u4570
u4571:
	goto	l4664
u4570:
	
l4650:	
	movlw	high(04Dh)
	subwf	(_z+1),w
	movlw	low(04Dh)
	skipnz
	subwf	(_z),w
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l4664
u4580:
	
l4652:	
	movlw	high(053h)
	subwf	(_z+1),w
	movlw	low(053h)
	skipnz
	subwf	(_z),w
	skipnc
	goto	u4591
	goto	u4590
u4591:
	goto	l4664
u4590:
	line	55
	
l4654:	
;CEP0896.C: 55: { Lcd8_Display(0xC6,"STOP      ",10);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Ah)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Ah)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C6h)
	fcall	_Lcd8_Display
	line	56
	
l4656:	
;CEP0896.C: 56: RB0=1;RB1=1;RB2=1;RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l4658:	
	bsf	(49/8),(49)&7
	
l4660:	
	bsf	(50/8),(50)&7
	
l4662:	
	bsf	(51/8),(51)&7
	goto	l4664
	line	57
	
l1000:	
	line	58
	
l4664:	
;CEP0896.C: 57: }
;CEP0896.C: 58: if((x>=96&&x<=100)&& (z>75&& z<=82))
	movlw	high(060h)
	subwf	(_x+1),w
	movlw	low(060h)
	skipnz
	subwf	(_x),w
	skipc
	goto	u4601
	goto	u4600
u4601:
	goto	l4682
u4600:
	
l4666:	
	movlw	high(065h)
	subwf	(_x+1),w
	movlw	low(065h)
	skipnz
	subwf	(_x),w
	skipnc
	goto	u4611
	goto	u4610
u4611:
	goto	l4682
u4610:
	
l4668:	
	movlw	high(04Ch)
	subwf	(_z+1),w
	movlw	low(04Ch)
	skipnz
	subwf	(_z),w
	skipc
	goto	u4621
	goto	u4620
u4621:
	goto	l4682
u4620:
	
l4670:	
	movlw	high(053h)
	subwf	(_z+1),w
	movlw	low(053h)
	skipnz
	subwf	(_z),w
	skipnc
	goto	u4631
	goto	u4630
u4631:
	goto	l4682
u4630:
	line	59
	
l4672:	
;CEP0896.C: 59: { Lcd8_Display(0xC6,"LEFT      ",10);
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Ah)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Ah)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C6h)
	fcall	_Lcd8_Display
	line	60
	
l4674:	
;CEP0896.C: 60: RB0=1;RB1=1;RB2=1;RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l4676:	
	bsf	(49/8),(49)&7
	
l4678:	
	bsf	(50/8),(50)&7
	
l4680:	
	bcf	(51/8),(51)&7
	goto	l4682
	line	61
	
l1001:	
	line	63
	
l4682:	
;CEP0896.C: 61: }
;CEP0896.C: 63: if((x>=64&&x<=70)&& (z>79&& z<=84))
	movlw	high(040h)
	subwf	(_x+1),w
	movlw	low(040h)
	skipnz
	subwf	(_x),w
	skipc
	goto	u4641
	goto	u4640
u4641:
	goto	l4700
u4640:
	
l4684:	
	movlw	high(047h)
	subwf	(_x+1),w
	movlw	low(047h)
	skipnz
	subwf	(_x),w
	skipnc
	goto	u4651
	goto	u4650
u4651:
	goto	l4700
u4650:
	
l4686:	
	movlw	high(050h)
	subwf	(_z+1),w
	movlw	low(050h)
	skipnz
	subwf	(_z),w
	skipc
	goto	u4661
	goto	u4660
u4661:
	goto	l4700
u4660:
	
l4688:	
	movlw	high(055h)
	subwf	(_z+1),w
	movlw	low(055h)
	skipnz
	subwf	(_z),w
	skipnc
	goto	u4671
	goto	u4670
u4671:
	goto	l4700
u4670:
	line	64
	
l4690:	
;CEP0896.C: 64: { Lcd8_Display(0xC6,"RIGHT     ",10);
	movlw	((STR_7-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Ah)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Ah)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C6h)
	fcall	_Lcd8_Display
	line	65
	
l4692:	
;CEP0896.C: 65: RB0=1;RB1=1;RB2=0;RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l4694:	
	bsf	(49/8),(49)&7
	
l4696:	
	bcf	(50/8),(50)&7
	
l4698:	
	bsf	(51/8),(51)&7
	goto	l4700
	line	66
	
l1002:	
	line	68
	
l4700:	
;CEP0896.C: 66: }
;CEP0896.C: 68: if((z>=65&&z<=75)&& (x>79&& x<=85))
	movlw	high(041h)
	subwf	(_z+1),w
	movlw	low(041h)
	skipnz
	subwf	(_z),w
	skipc
	goto	u4681
	goto	u4680
u4681:
	goto	l4718
u4680:
	
l4702:	
	movlw	high(04Ch)
	subwf	(_z+1),w
	movlw	low(04Ch)
	skipnz
	subwf	(_z),w
	skipnc
	goto	u4691
	goto	u4690
u4691:
	goto	l4718
u4690:
	
l4704:	
	movlw	high(050h)
	subwf	(_x+1),w
	movlw	low(050h)
	skipnz
	subwf	(_x),w
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l4718
u4700:
	
l4706:	
	movlw	high(056h)
	subwf	(_x+1),w
	movlw	low(056h)
	skipnz
	subwf	(_x),w
	skipnc
	goto	u4711
	goto	u4710
u4711:
	goto	l4718
u4710:
	line	69
	
l4708:	
;CEP0896.C: 69: { Lcd8_Display(0xC6,"START     ",10);
	movlw	((STR_8-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Ah)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Ah)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C6h)
	fcall	_Lcd8_Display
	line	70
	
l4710:	
;CEP0896.C: 70: RB0=0;RB1=1;RB2=1;RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l4712:	
	bsf	(49/8),(49)&7
	
l4714:	
	bsf	(50/8),(50)&7
	
l4716:	
	bsf	(51/8),(51)&7
	goto	l4718
	line	71
	
l1003:	
	line	73
	
l4718:	
;CEP0896.C: 71: }
;CEP0896.C: 73: if((z>=95&&z<=101)&& (x>80&& x<=89))
	movlw	high(05Fh)
	subwf	(_z+1),w
	movlw	low(05Fh)
	skipnz
	subwf	(_z),w
	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l4634
u4720:
	
l4720:	
	movlw	high(066h)
	subwf	(_z+1),w
	movlw	low(066h)
	skipnz
	subwf	(_z),w
	skipnc
	goto	u4731
	goto	u4730
u4731:
	goto	l4634
u4730:
	
l4722:	
	movlw	high(051h)
	subwf	(_x+1),w
	movlw	low(051h)
	skipnz
	subwf	(_x),w
	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l4634
u4740:
	
l4724:	
	movlw	high(05Ah)
	subwf	(_x+1),w
	movlw	low(05Ah)
	skipnz
	subwf	(_x),w
	skipnc
	goto	u4751
	goto	u4750
u4751:
	goto	l4634
u4750:
	line	74
	
l4726:	
;CEP0896.C: 74: {Lcd8_Display(0xC6,"REVERSE   ",10);
	movlw	((STR_9-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Display)
	movlw	low(0Ah)
	movwf	0+(?_Lcd8_Display)+01h
	movlw	high(0Ah)
	movwf	(0+(?_Lcd8_Display)+01h)+1
	movlw	(0C6h)
	fcall	_Lcd8_Display
	line	75
	
l4728:	
;CEP0896.C: 75: RB0=1;RB1=0;RB2=1;RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	
l4730:	
	bcf	(49/8),(49)&7
	
l4732:	
	bsf	(50/8),(50)&7
	
l4734:	
	bsf	(51/8),(51)&7
	goto	l4634
	line	76
	
l1004:	
	goto	l4634
	line	78
	
l1005:	
	line	43
	goto	l4634
	
l1006:	
	line	79
	
l1007:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Decimal3
psect	text336,local,class=CODE,delta=2
global __ptext336
__ptext336:

;; *************** function _Lcd8_Decimal3 *****************
;; Defined at:
;;		line 75 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  val             1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    8[BANK0 ] unsigned char 
;;  Lcd_hr          2    6[BANK0 ] unsigned int 
;;  Lcd_o           2    4[BANK0 ] unsigned int 
;;  Lcd_t           2    2[BANK0 ] unsigned int 
;;  Lcd_h           2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       9       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___lwdiv
;;		___lwmod
;;		_Lcd8_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text336
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
	line	75
	global	__size_of_Lcd8_Decimal3
	__size_of_Lcd8_Decimal3	equ	__end_of_Lcd8_Decimal3-_Lcd8_Decimal3
	
_Lcd8_Decimal3:	
	opt	stack 4
; Regs used in _Lcd8_Decimal3: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Decimal3@com stored from wreg
	line	78
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Decimal3@com)
	
l4596:	
;pic_lcd8.h: 76: unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
;pic_lcd8.h: 78: Lcd_h=val/100;
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
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_h+1)
	addwf	(Lcd8_Decimal3@Lcd_h+1)
	movf	(0+(?___awdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_h)
	addwf	(Lcd8_Decimal3@Lcd_h)

	line	79
;pic_lcd8.h: 79: Lcd_hr=val%100;
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
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_hr+1)
	addwf	(Lcd8_Decimal3@Lcd_hr+1)
	movf	(0+(?___awmod)),w
	clrf	(Lcd8_Decimal3@Lcd_hr)
	addwf	(Lcd8_Decimal3@Lcd_hr)

	line	80
;pic_lcd8.h: 80: Lcd_t=Lcd_hr/10;
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
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_t+1)
	addwf	(Lcd8_Decimal3@Lcd_t+1)
	movf	(0+(?___lwdiv)),w
	clrf	(Lcd8_Decimal3@Lcd_t)
	addwf	(Lcd8_Decimal3@Lcd_t)

	line	81
;pic_lcd8.h: 81: Lcd_o=Lcd_hr%10;
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
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd8_Decimal3@Lcd_o+1)
	addwf	(Lcd8_Decimal3@Lcd_o+1)
	movf	(0+(?___lwmod)),w
	clrf	(Lcd8_Decimal3@Lcd_o)
	addwf	(Lcd8_Decimal3@Lcd_o)

	line	83
;pic_lcd8.h: 83: Lcd8_Write(com,Lcd_h+0x30);
	movf	(Lcd8_Decimal3@Lcd_h),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	fcall	_Lcd8_Write
	line	84
;pic_lcd8.h: 84: Lcd8_Write(com+1,Lcd_t+0x30);
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
	line	85
;pic_lcd8.h: 85: Lcd8_Write(com+2,Lcd_o+0x30);
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
	line	86
	
l787:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Decimal3
	__end_of_Lcd8_Decimal3:
;; =============== function _Lcd8_Decimal3 ends ============

	signat	_Lcd8_Decimal3,8312
	global	_Lcd8_Display
psect	text337,local,class=CODE,delta=2
global __ptext337
__ptext337:

;; *************** function _Lcd8_Display *****************
;; Defined at:
;;		line 52 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  word            1    5[COMMON] PTR const unsigned char 
;;		 -> STR_9(11), STR_8(11), STR_7(11), STR_6(11), 
;;		 -> STR_5(11), STR_4(17), STR_3(17), STR_2(17), 
;;		 -> STR_1(17), 
;;  n               2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  com             1   10[COMMON] unsigned char 
;;  Lcd_i           1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd8_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text337
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
	line	52
	global	__size_of_Lcd8_Display
	__size_of_Lcd8_Display	equ	__end_of_Lcd8_Display-_Lcd8_Display
	
_Lcd8_Display:	
	opt	stack 4
; Regs used in _Lcd8_Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Display@com stored from wreg
	line	55
	movwf	(Lcd8_Display@com)
	
l4588:	
;pic_lcd8.h: 53: unsigned char Lcd_i;
;pic_lcd8.h: 55: for(Lcd_i=0;Lcd_i<n;Lcd_i++)
	clrf	(Lcd8_Display@Lcd_i)
	goto	l4594
	line	56
	
l779:	
	line	57
	
l4590:	
;pic_lcd8.h: 56: {
;pic_lcd8.h: 57: Lcd8_Write(com+Lcd_i,word[Lcd_i]);
	movf	(Lcd8_Display@Lcd_i),w
	addwf	(Lcd8_Display@word),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Display@Lcd_i),w
	addwf	(Lcd8_Display@com),w
	fcall	_Lcd8_Write
	line	55
	
l4592:	
	movlw	(01h)
	movwf	(??_Lcd8_Display+0)+0
	movf	(??_Lcd8_Display+0)+0,w
	addwf	(Lcd8_Display@Lcd_i),f
	goto	l4594
	
l778:	
	
l4594:	
	movf	(Lcd8_Display@Lcd_i),w
	movwf	(??_Lcd8_Display+0)+0
	clrf	(??_Lcd8_Display+0)+0+1
	movf	(Lcd8_Display@n+1),w
	subwf	1+(??_Lcd8_Display+0)+0,w
	skipz
	goto	u4555
	movf	(Lcd8_Display@n),w
	subwf	0+(??_Lcd8_Display+0)+0,w
u4555:
	skipc
	goto	u4551
	goto	u4550
u4551:
	goto	l4590
u4550:
	goto	l781
	
l780:	
	line	59
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Display
	__end_of_Lcd8_Display:
;; =============== function _Lcd8_Display ends ============

	signat	_Lcd8_Display,12408
	global	_Lcd8_Write
psect	text338,local,class=CODE,delta=2
global __ptext338
__ptext338:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 40 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;;  lr              1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd8_Command
;;		_Delay
;; This function is called by:
;;		_Lcd8_Display
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text338
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
	line	40
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	41
	
l4574:	
;pic_lcd8.h: 41: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	43
	
l4576:	
;pic_lcd8.h: 43: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
	
l4578:	
;pic_lcd8.h: 44: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	45
	
l4580:	
;pic_lcd8.h: 45: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	46
	
l4582:	
;pic_lcd8.h: 46: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	47
	
l4584:	
;pic_lcd8.h: 47: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	48
	
l4586:	
;pic_lcd8.h: 48: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	49
	
l775:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text339,local,class=CODE,delta=2
global __ptext339
__ptext339:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 22 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd8_Command
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text339
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
	line	22
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l4572:	
;pic_lcd8.h: 23: Lcd8_Command(0x38);
	movlw	(038h)
	fcall	_Lcd8_Command
	line	24
;pic_lcd8.h: 24: Lcd8_Command(0x06);
	movlw	(06h)
	fcall	_Lcd8_Command
	line	25
;pic_lcd8.h: 25: Lcd8_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd8_Command
	line	26
;pic_lcd8.h: 26: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	27
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_Adc8_Cha
psect	text340,local,class=CODE,delta=2
global __ptext340
__ptext340:

;; *************** function _Adc8_Cha *****************
;; Defined at:
;;		line 10 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_adc.h"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text340
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_adc.h"
	line	10
	global	__size_of_Adc8_Cha
	__size_of_Adc8_Cha	equ	__end_of_Adc8_Cha-_Adc8_Cha
	
_Adc8_Cha:	
	opt	stack 6
; Regs used in _Adc8_Cha: [wreg+status,2+status,0+pclath+cstack]
;Adc8_Cha@val stored from wreg
	movwf	(Adc8_Cha@val)
	line	11
	
l4354:	
;pic_adc.h: 11: ADFM=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	12
	
l4356:	
;pic_adc.h: 12: adc_del=25;
	movlw	(019h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_del)
	line	14
	
l4358:	
;pic_adc.h: 14: if(val==0)
	movf	(Adc8_Cha@val),f
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l4384
u4150:
	line	16
	
l4360:	
;pic_adc.h: 15: {
;pic_adc.h: 16: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	17
	
l4362:	
;pic_adc.h: 17: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4364:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l4368
u4160:
	goto	l4566
	
l4366:	
	goto	l4566
	line	18
	
l836:	
	line	19
	
l4368:	
;pic_adc.h: 18: {
;pic_adc.h: 19: ADCON0=0x00;
	clrf	(31)	;volatile
	line	20
	
l4370:	
;pic_adc.h: 20: ADON=1;
	bsf	(248/8),(248)&7
	line	21
;pic_adc.h: 21: while(adc_del--);
	goto	l4372
	
l839:	
	goto	l4372
	
l838:	
	
l4372:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4171
	goto	u4170
u4171:
	goto	l4372
u4170:
	goto	l4374
	
l840:	
	line	22
	
l4374:	
;pic_adc.h: 22: ADCON0 =0x05;
	movlw	(05h)
	movwf	(31)	;volatile
	line	23
;pic_adc.h: 23: while(ADCON0!=0X01);
	goto	l4376
	
l842:	
	goto	l4376
	
l841:	
	
l4376:	
	movf	(31),w	;volatile
	xorlw	01h
	skipz
	goto	u4181
	goto	u4180
u4181:
	goto	l4376
u4180:
	goto	l4378
	
l843:	
	line	24
	
l4378:	
;pic_adc.h: 24: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	25
	
l4380:	
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
	
l4382:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l4368
u4190:
	goto	l4566
	
l837:	
	line	27
;pic_adc.h: 26: }
;pic_adc.h: 27: }
	goto	l4566
	line	28
	
l835:	
	
l4384:	
;pic_adc.h: 28: else if(val==1)
	movf	(Adc8_Cha@val),w
	xorlw	01h
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l4410
u4200:
	line	30
	
l4386:	
;pic_adc.h: 29: {
;pic_adc.h: 30: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	31
	
l4388:	
;pic_adc.h: 31: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4390:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4211
	goto	u4210
u4211:
	goto	l4394
u4210:
	goto	l4566
	
l4392:	
	goto	l4566
	line	32
	
l846:	
	line	33
	
l4394:	
;pic_adc.h: 32: {
;pic_adc.h: 33: ADCON0=0x08;
	movlw	(08h)
	movwf	(31)	;volatile
	line	34
	
l4396:	
;pic_adc.h: 34: ADON=1;
	bsf	(248/8),(248)&7
	line	35
;pic_adc.h: 35: while(adc_del--);
	goto	l4398
	
l849:	
	goto	l4398
	
l848:	
	
l4398:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l4398
u4220:
	goto	l4400
	
l850:	
	line	36
	
l4400:	
;pic_adc.h: 36: ADCON0 =0x0d;
	movlw	(0Dh)
	movwf	(31)	;volatile
	line	37
;pic_adc.h: 37: while(ADCON0!=0X09);
	goto	l4402
	
l852:	
	goto	l4402
	
l851:	
	
l4402:	
	movf	(31),w	;volatile
	xorlw	09h
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l4402
u4230:
	goto	l4404
	
l853:	
	line	38
	
l4404:	
;pic_adc.h: 38: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	39
	
l4406:	
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
	
l4408:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l4394
u4240:
	goto	l4566
	
l847:	
	line	41
;pic_adc.h: 40: }
;pic_adc.h: 41: }
	goto	l4566
	line	42
	
l845:	
	
l4410:	
;pic_adc.h: 42: else if(val==2)
	movf	(Adc8_Cha@val),w
	xorlw	02h
	skipz
	goto	u4251
	goto	u4250
u4251:
	goto	l4436
u4250:
	line	44
	
l4412:	
;pic_adc.h: 43: {
;pic_adc.h: 44: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	45
	
l4414:	
;pic_adc.h: 45: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4416:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4261
	goto	u4260
u4261:
	goto	l4420
u4260:
	goto	l4566
	
l4418:	
	goto	l4566
	line	46
	
l856:	
	line	47
	
l4420:	
;pic_adc.h: 46: {
;pic_adc.h: 47: ADCON0=0x10;
	movlw	(010h)
	movwf	(31)	;volatile
	line	48
	
l4422:	
;pic_adc.h: 48: ADON=1;
	bsf	(248/8),(248)&7
	line	49
;pic_adc.h: 49: while(adc_del--);
	goto	l4424
	
l859:	
	goto	l4424
	
l858:	
	
l4424:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l4424
u4270:
	goto	l4426
	
l860:	
	line	50
	
l4426:	
;pic_adc.h: 50: ADCON0 =0x15;
	movlw	(015h)
	movwf	(31)	;volatile
	line	51
;pic_adc.h: 51: while(ADCON0!=0x11);
	goto	l4428
	
l862:	
	goto	l4428
	
l861:	
	
l4428:	
	movf	(31),w	;volatile
	xorlw	011h
	skipz
	goto	u4281
	goto	u4280
u4281:
	goto	l4428
u4280:
	goto	l4430
	
l863:	
	line	52
	
l4430:	
;pic_adc.h: 52: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	53
	
l4432:	
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
	
l4434:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l4420
u4290:
	goto	l4566
	
l857:	
	line	55
;pic_adc.h: 54: }
;pic_adc.h: 55: }
	goto	l4566
	line	56
	
l855:	
	
l4436:	
;pic_adc.h: 56: else if(val==3)
	movf	(Adc8_Cha@val),w
	xorlw	03h
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l4462
u4300:
	line	58
	
l4438:	
;pic_adc.h: 57: {
;pic_adc.h: 58: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	59
	
l4440:	
;pic_adc.h: 59: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4442:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l4446
u4310:
	goto	l4566
	
l4444:	
	goto	l4566
	line	60
	
l866:	
	line	61
	
l4446:	
;pic_adc.h: 60: {
;pic_adc.h: 61: ADCON0=0x18;
	movlw	(018h)
	movwf	(31)	;volatile
	line	62
	
l4448:	
;pic_adc.h: 62: ADON=1;
	bsf	(248/8),(248)&7
	line	63
;pic_adc.h: 63: while(adc_del--);
	goto	l4450
	
l869:	
	goto	l4450
	
l868:	
	
l4450:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l4450
u4320:
	goto	l4452
	
l870:	
	line	64
	
l4452:	
;pic_adc.h: 64: ADCON0 =0x1d;
	movlw	(01Dh)
	movwf	(31)	;volatile
	line	65
;pic_adc.h: 65: while(ADCON0!=0x19);
	goto	l4454
	
l872:	
	goto	l4454
	
l871:	
	
l4454:	
	movf	(31),w	;volatile
	xorlw	019h
	skipz
	goto	u4331
	goto	u4330
u4331:
	goto	l4454
u4330:
	goto	l4456
	
l873:	
	line	66
	
l4456:	
;pic_adc.h: 66: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	67
	
l4458:	
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
	
l4460:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l4446
u4340:
	goto	l4566
	
l867:	
	line	69
;pic_adc.h: 68: }
;pic_adc.h: 69: }
	goto	l4566
	line	70
	
l865:	
	
l4462:	
;pic_adc.h: 70: else if(val==4)
	movf	(Adc8_Cha@val),w
	xorlw	04h
	skipz
	goto	u4351
	goto	u4350
u4351:
	goto	l4488
u4350:
	line	72
	
l4464:	
;pic_adc.h: 71: {
;pic_adc.h: 72: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	73
	
l4466:	
;pic_adc.h: 73: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4468:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l4472
u4360:
	goto	l4566
	
l4470:	
	goto	l4566
	line	74
	
l876:	
	line	75
	
l4472:	
;pic_adc.h: 74: {
;pic_adc.h: 75: ADCON0=0x20;
	movlw	(020h)
	movwf	(31)	;volatile
	line	76
	
l4474:	
;pic_adc.h: 76: ADON=1;
	bsf	(248/8),(248)&7
	line	77
;pic_adc.h: 77: while(adc_del--);
	goto	l4476
	
l879:	
	goto	l4476
	
l878:	
	
l4476:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4371
	goto	u4370
u4371:
	goto	l4476
u4370:
	goto	l4478
	
l880:	
	line	78
	
l4478:	
;pic_adc.h: 78: ADCON0 =0x25;
	movlw	(025h)
	movwf	(31)	;volatile
	line	79
;pic_adc.h: 79: while(ADCON0!=0x21);
	goto	l4480
	
l882:	
	goto	l4480
	
l881:	
	
l4480:	
	movf	(31),w	;volatile
	xorlw	021h
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l4480
u4380:
	goto	l4482
	
l883:	
	line	80
	
l4482:	
;pic_adc.h: 80: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	81
	
l4484:	
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
	
l4486:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4391
	goto	u4390
u4391:
	goto	l4472
u4390:
	goto	l4566
	
l877:	
	line	83
;pic_adc.h: 82: }
;pic_adc.h: 83: }
	goto	l4566
	line	84
	
l875:	
	
l4488:	
;pic_adc.h: 84: else if(val==5)
	movf	(Adc8_Cha@val),w
	xorlw	05h
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l4514
u4400:
	line	86
	
l4490:	
;pic_adc.h: 85: {
;pic_adc.h: 86: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	87
	
l4492:	
;pic_adc.h: 87: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4494:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l4498
u4410:
	goto	l4566
	
l4496:	
	goto	l4566
	line	88
	
l886:	
	line	89
	
l4498:	
;pic_adc.h: 88: {
;pic_adc.h: 89: ADCON0=0x28;
	movlw	(028h)
	movwf	(31)	;volatile
	line	90
	
l4500:	
;pic_adc.h: 90: ADON=1;
	bsf	(248/8),(248)&7
	line	91
;pic_adc.h: 91: while(adc_del--);
	goto	l4502
	
l889:	
	goto	l4502
	
l888:	
	
l4502:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l4502
u4420:
	goto	l4504
	
l890:	
	line	92
	
l4504:	
;pic_adc.h: 92: ADCON0 =0x2d;
	movlw	(02Dh)
	movwf	(31)	;volatile
	line	93
;pic_adc.h: 93: while(ADCON0!=0x29);
	goto	l4506
	
l892:	
	goto	l4506
	
l891:	
	
l4506:	
	movf	(31),w	;volatile
	xorlw	029h
	skipz
	goto	u4431
	goto	u4430
u4431:
	goto	l4506
u4430:
	goto	l4508
	
l893:	
	line	94
	
l4508:	
;pic_adc.h: 94: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	95
	
l4510:	
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
	
l4512:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l4498
u4440:
	goto	l4566
	
l887:	
	line	97
;pic_adc.h: 96: }
;pic_adc.h: 97: }
	goto	l4566
	line	98
	
l885:	
	
l4514:	
;pic_adc.h: 98: else if(val==6)
	movf	(Adc8_Cha@val),w
	xorlw	06h
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l4540
u4450:
	line	100
	
l4516:	
;pic_adc.h: 99: {
;pic_adc.h: 100: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	101
	
l4518:	
;pic_adc.h: 101: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4520:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l4524
u4460:
	goto	l4566
	
l4522:	
	goto	l4566
	line	102
	
l896:	
	line	103
	
l4524:	
;pic_adc.h: 102: {
;pic_adc.h: 103: ADCON0=0x30;
	movlw	(030h)
	movwf	(31)	;volatile
	line	104
	
l4526:	
;pic_adc.h: 104: ADON=1;
	bsf	(248/8),(248)&7
	line	105
;pic_adc.h: 105: while(adc_del--);
	goto	l4528
	
l899:	
	goto	l4528
	
l898:	
	
l4528:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l4528
u4470:
	goto	l4530
	
l900:	
	line	106
	
l4530:	
;pic_adc.h: 106: ADCON0 =0x35;
	movlw	(035h)
	movwf	(31)	;volatile
	line	107
;pic_adc.h: 107: while(ADCON0!=0x31);
	goto	l4532
	
l902:	
	goto	l4532
	
l901:	
	
l4532:	
	movf	(31),w	;volatile
	xorlw	031h
	skipz
	goto	u4481
	goto	u4480
u4481:
	goto	l4532
u4480:
	goto	l4534
	
l903:	
	line	108
	
l4534:	
;pic_adc.h: 108: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	109
	
l4536:	
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
	
l4538:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l4524
u4490:
	goto	l4566
	
l897:	
	line	111
;pic_adc.h: 110: }
;pic_adc.h: 111: }
	goto	l4566
	line	112
	
l895:	
	
l4540:	
;pic_adc.h: 112: else if(val==7)
	movf	(Adc8_Cha@val),w
	xorlw	07h
	skipz
	goto	u4501
	goto	u4500
u4501:
	goto	l4566
u4500:
	line	114
	
l4542:	
;pic_adc.h: 113: {
;pic_adc.h: 114: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	115
	
l4544:	
;pic_adc.h: 115: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l4546:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4511
	goto	u4510
u4511:
	goto	l4550
u4510:
	goto	l4566
	
l4548:	
	goto	l4566
	line	116
	
l906:	
	line	117
	
l4550:	
;pic_adc.h: 116: {
;pic_adc.h: 117: ADCON0=0x38;
	movlw	(038h)
	movwf	(31)	;volatile
	line	118
	
l4552:	
;pic_adc.h: 118: ADON=1;
	bsf	(248/8),(248)&7
	line	119
;pic_adc.h: 119: while(adc_del--);
	goto	l4554
	
l909:	
	goto	l4554
	
l908:	
	
l4554:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u4521
	goto	u4520
u4521:
	goto	l4554
u4520:
	goto	l4556
	
l910:	
	line	120
	
l4556:	
;pic_adc.h: 120: ADCON0 =0x3d;
	movlw	(03Dh)
	movwf	(31)	;volatile
	line	121
;pic_adc.h: 121: while(ADCON0!=0x39);
	goto	l4558
	
l912:	
	goto	l4558
	
l911:	
	
l4558:	
	movf	(31),w	;volatile
	xorlw	039h
	skipz
	goto	u4531
	goto	u4530
u4531:
	goto	l4558
u4530:
	goto	l4560
	
l913:	
	line	122
	
l4560:	
;pic_adc.h: 122: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	123
	
l4562:	
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
	
l4564:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u4541
	goto	u4540
u4541:
	goto	l4550
u4540:
	goto	l4566
	
l907:	
	goto	l4566
	line	125
	
l905:	
	goto	l4566
	line	126
	
l904:	
	goto	l4566
	
l894:	
	goto	l4566
	
l884:	
	goto	l4566
	
l874:	
	goto	l4566
	
l864:	
	goto	l4566
	
l854:	
	goto	l4566
	
l844:	
	
l4566:	
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
	movf	(0+(?___lwdiv)),w
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_val)
	line	127
	
l4568:	
;pic_adc.h: 127: return adc_val;
	movf	(_adc_val),w
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha+1)
	goto	l914
	
l4570:	
	line	128
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_Adc8_Cha
	__end_of_Adc8_Cha:
;; =============== function _Adc8_Cha ends ============

	signat	_Adc8_Cha,4218
	global	_Serial_Init
psect	text341,local,class=CODE,delta=2
global __ptext341
__ptext341:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 9 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  baud            4    4[COMMON] unsigned long 
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
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Baudrate
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text341
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_serial.h"
	line	9
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 6
; Regs used in _Serial_Init: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l4338:	
;pic_serial.h: 10: Baudrate(baud);
	movf	(Serial_Init@baud+3),w
	movwf	(?_Baudrate+3)
	movf	(Serial_Init@baud+2),w
	movwf	(?_Baudrate+2)
	movf	(Serial_Init@baud+1),w
	movwf	(?_Baudrate+1)
	movf	(Serial_Init@baud),w
	movwf	(?_Baudrate)

	fcall	_Baudrate
	line	11
	
l4340:	
;pic_serial.h: 11: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	12
	
l4342:	
;pic_serial.h: 12: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	13
	
l4344:	
;pic_serial.h: 13: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	14
	
l4346:	
;pic_serial.h: 14: GIE=1;
	bsf	(95/8),(95)&7
	line	15
	
l4348:	
;pic_serial.h: 15: PEIE=1;
	bsf	(94/8),(94)&7
	line	16
	
l4350:	
;pic_serial.h: 16: RCIE = 1;
	bsf	(1125/8)^080h,(1125)&7
	line	17
	
l4352:	
;pic_serial.h: 17: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	18
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,4216
	global	_Lcd8_Command
psect	text342,local,class=CODE,delta=2
global __ptext342
__ptext342:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 30 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  com             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  com             1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_Lcd8_Init
;;		_Lcd8_Write
;;		_main
;; This function uses a non-reentrant model
;;
psect	text342
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
	line	30
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	31
	
l4326:	
;pic_lcd8.h: 31: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	32
	
l4328:	
;pic_lcd8.h: 32: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	33
	
l4330:	
;pic_lcd8.h: 33: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	34
	
l4332:	
;pic_lcd8.h: 34: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	35
	
l4334:	
;pic_lcd8.h: 35: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	36
	
l4336:	
;pic_lcd8.h: 36: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	37
	
l772:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	___awmod
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;; This function uses a non-reentrant model
;;
psect	text343
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l4292:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u4061
	goto	u4060
u4061:
	goto	l4296
u4060:
	line	10
	
l4294:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l4296
	line	12
	
l1898:	
	line	13
	
l4296:	
	btfss	(___awmod@divisor+1),7
	goto	u4071
	goto	u4070
u4071:
	goto	l4300
u4070:
	line	14
	
l4298:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l4300
	
l1899:	
	line	15
	
l4300:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4081
	goto	u4080
u4081:
	goto	l4318
u4080:
	line	16
	
l4302:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l4308
	
l1902:	
	line	18
	
l4304:	
	movlw	01h
	
u4095:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4095
	line	19
	
l4306:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l4308
	line	20
	
l1901:	
	line	17
	
l4308:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l4304
u4100:
	goto	l4310
	
l1903:	
	goto	l4310
	line	21
	
l1904:	
	line	22
	
l4310:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4115
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4115:
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l4314
u4110:
	line	23
	
l4312:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l4314
	
l1905:	
	line	24
	
l4314:	
	movlw	01h
	
u4125:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4125
	line	25
	
l4316:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l4310
u4130:
	goto	l4318
	
l1906:	
	goto	l4318
	line	26
	
l1900:	
	line	27
	
l4318:	
	movf	(___awmod@sign),w
	skipz
	goto	u4140
	goto	l4322
u4140:
	line	28
	
l4320:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4322
	
l1907:	
	line	29
	
l4322:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1908
	
l4324:	
	line	30
	
l1908:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;; This function uses a non-reentrant model
;;
psect	text344
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4252:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3961
	goto	u3960
u3961:
	goto	l4256
u3960:
	line	11
	
l4254:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4256
	line	13
	
l1830:	
	line	14
	
l4256:	
	btfss	(___awdiv@dividend+1),7
	goto	u3971
	goto	u3970
u3971:
	goto	l4262
u3970:
	line	15
	
l4258:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4260:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l4262
	line	17
	
l1831:	
	line	18
	
l4262:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l4264:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3981
	goto	u3980
u3981:
	goto	l4284
u3980:
	line	20
	
l4266:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4272
	
l1834:	
	line	22
	
l4268:	
	movlw	01h
	
u3995:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3995
	line	23
	
l4270:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4272
	line	24
	
l1833:	
	line	21
	
l4272:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l4268
u4000:
	goto	l4274
	
l1835:	
	goto	l4274
	line	25
	
l1836:	
	line	26
	
l4274:	
	movlw	01h
	
u4015:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4015
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u4025
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u4025:
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l4280
u4020:
	line	28
	
l4276:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4278:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4280
	line	30
	
l1837:	
	line	31
	
l4280:	
	movlw	01h
	
u4035:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u4035
	line	32
	
l4282:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l4274
u4040:
	goto	l4284
	
l1838:	
	goto	l4284
	line	33
	
l1832:	
	line	34
	
l4284:	
	movf	(___awdiv@sign),w
	skipz
	goto	u4050
	goto	l4288
u4050:
	line	35
	
l4286:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4288
	
l1839:	
	line	36
	
l4288:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1840
	
l4290:	
	line	37
	
l1840:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text345
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4230:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3901
	goto	u3900
u3901:
	goto	l4248
u3900:
	line	9
	
l4232:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l4238
	
l1708:	
	line	11
	
l4234:	
	movlw	01h
	
u3915:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3915
	line	12
	
l4236:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l4238
	line	13
	
l1707:	
	line	10
	
l4238:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l4234
u3920:
	goto	l4240
	
l1709:	
	goto	l4240
	line	14
	
l1710:	
	line	15
	
l4240:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3935
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3935:
	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l4244
u3930:
	line	16
	
l4242:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l4244
	
l1711:	
	line	17
	
l4244:	
	movlw	01h
	
u3945:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3945
	line	18
	
l4246:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3951
	goto	u3950
u3951:
	goto	l4240
u3950:
	goto	l4248
	
l1712:	
	goto	l4248
	line	19
	
l1706:	
	line	20
	
l4248:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1713
	
l4250:	
	line	21
	
l1713:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text346,local,class=CODE,delta=2
global __ptext346
__ptext346:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Decimal3
;;		_Adc8_Cha
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;;		_Adc10_Cha
;; This function uses a non-reentrant model
;;
psect	text346
	file	"C:\Program Files\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4204:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l4206:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3831
	goto	u3830
u3831:
	goto	l4226
u3830:
	line	11
	
l4208:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l4214
	
l1698:	
	line	13
	
l4210:	
	movlw	01h
	
u3845:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3845
	line	14
	
l4212:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4214
	line	15
	
l1697:	
	line	12
	
l4214:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3851
	goto	u3850
u3851:
	goto	l4210
u3850:
	goto	l4216
	
l1699:	
	goto	l4216
	line	16
	
l1700:	
	line	17
	
l4216:	
	movlw	01h
	
u3865:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3865
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3875
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3875:
	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l4222
u3870:
	line	19
	
l4218:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4220:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4222
	line	21
	
l1701:	
	line	22
	
l4222:	
	movlw	01h
	
u3885:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3885
	line	23
	
l4224:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l4216
u3890:
	goto	l4226
	
l1702:	
	goto	l4226
	line	24
	
l1696:	
	line	25
	
l4226:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1703
	
l4228:	
	line	26
	
l1703:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_Receive
psect	text347,local,class=CODE,delta=2
global __ptext347
__ptext347:

;; *************** function _Receive *****************
;; Defined at:
;;		line 78 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  rece            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  rece            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text347
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_serial.h"
	line	78
	global	__size_of_Receive
	__size_of_Receive	equ	__end_of_Receive-_Receive
	
_Receive:	
	opt	stack 7
; Regs used in _Receive: [wreg]
;Receive@rece stored from wreg
	movwf	(Receive@rece)
	line	79
	
l3952:	
;pic_serial.h: 79: if(rece==1)
	movf	(Receive@rece),w
	xorlw	01h
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l830
u3420:
	line	81
	
l3954:	
;pic_serial.h: 80: {
;pic_serial.h: 81: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	82
;pic_serial.h: 82: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	line	83
;pic_serial.h: 83: }
	goto	l832
	line	84
	
l830:	
	line	86
;pic_serial.h: 84: else
;pic_serial.h: 85: {
;pic_serial.h: 86: RCIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1125/8)^080h,(1125)&7
	line	87
;pic_serial.h: 87: CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	goto	l832
	line	88
	
l831:	
	line	89
	
l832:	
	return
	opt stack 0
GLOBAL	__end_of_Receive
	__end_of_Receive:
;; =============== function _Receive ends ============

	signat	_Receive,4216
	global	_Baudrate
psect	text348,local,class=CODE,delta=2
global __ptext348
__ptext348:

;; *************** function _Baudrate *****************
;; Defined at:
;;		line 38 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_serial.h"
;; Parameters:    Size  Location     Type
;;  baud            4    0[COMMON] unsigned long 
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
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Serial_Init
;; This function uses a non-reentrant model
;;
psect	text348
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_serial.h"
	line	38
	global	__size_of_Baudrate
	__size_of_Baudrate	equ	__end_of_Baudrate-_Baudrate
	
_Baudrate:	
	opt	stack 6
; Regs used in _Baudrate: [wreg]
	line	39
	
l3910:	
;pic_serial.h: 39: if(baud==110)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3355
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3355
	movlw	0
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3355
	movlw	06Eh
	xorwf	(Baudrate@baud),w
u3355:
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l3916
u3350:
	line	41
	
l3912:	
;pic_serial.h: 40: {
;pic_serial.h: 41: SPBRG = 141;
	movlw	(08Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	42
	
l3914:	
;pic_serial.h: 42: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	43
;pic_serial.h: 43: }
	goto	l827
	line	44
	
l814:	
	
l3916:	
;pic_serial.h: 44: else if(baud==1200)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3365
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3365
	movlw	04h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3365
	movlw	0B0h
	xorwf	(Baudrate@baud),w
u3365:
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l3922
u3360:
	line	46
	
l3918:	
;pic_serial.h: 45: {
;pic_serial.h: 46: SPBRG = 51;
	movlw	(033h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	47
	
l3920:	
;pic_serial.h: 47: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	48
;pic_serial.h: 48: }
	goto	l827
	line	49
	
l816:	
	
l3922:	
;pic_serial.h: 49: else if(baud==2400)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3375
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3375
	movlw	09h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3375
	movlw	060h
	xorwf	(Baudrate@baud),w
u3375:
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l3928
u3370:
	line	51
	
l3924:	
;pic_serial.h: 50: {
;pic_serial.h: 51: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	52
	
l3926:	
;pic_serial.h: 52: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	53
;pic_serial.h: 53: }
	goto	l827
	line	54
	
l818:	
	
l3928:	
;pic_serial.h: 54: else if(baud==4800)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3385
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3385
	movlw	012h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3385
	movlw	0C0h
	xorwf	(Baudrate@baud),w
u3385:
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l3934
u3380:
	line	56
	
l3930:	
;pic_serial.h: 55: {
;pic_serial.h: 56: SPBRG = 12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	57
	
l3932:	
;pic_serial.h: 57: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	58
;pic_serial.h: 58: }
	goto	l827
	line	59
	
l820:	
	
l3934:	
;pic_serial.h: 59: else if(baud==9600)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3395
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3395
	movlw	025h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3395
	movlw	080h
	xorwf	(Baudrate@baud),w
u3395:
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l3940
u3390:
	line	61
	
l3936:	
;pic_serial.h: 60: {
;pic_serial.h: 61: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	62
	
l3938:	
;pic_serial.h: 62: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	63
;pic_serial.h: 63: }
	goto	l827
	line	64
	
l822:	
	
l3940:	
;pic_serial.h: 64: else if(baud==57600)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3405
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3405
	movlw	0E1h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3405
	movlw	0
	xorwf	(Baudrate@baud),w
u3405:
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l3946
u3400:
	line	66
	
l3942:	
;pic_serial.h: 65: {
;pic_serial.h: 66: SPBRG = 20;
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	67
	
l3944:	
;pic_serial.h: 67: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	68
;pic_serial.h: 68: }
	goto	l827
	line	69
	
l824:	
	
l3946:	
;pic_serial.h: 69: else if(baud==115200)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u3415
	movlw	01h
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u3415
	movlw	0C2h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u3415
	movlw	0
	xorwf	(Baudrate@baud),w
u3415:
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l827
u3410:
	line	71
	
l3948:	
;pic_serial.h: 70: {
;pic_serial.h: 71: SPBRG = 10;
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	72
	
l3950:	
;pic_serial.h: 72: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	goto	l827
	line	73
	
l826:	
	goto	l827
	line	74
	
l825:	
	goto	l827
	
l823:	
	goto	l827
	
l821:	
	goto	l827
	
l819:	
	goto	l827
	
l817:	
	goto	l827
	
l815:	
	
l827:	
	return
	opt stack 0
GLOBAL	__end_of_Baudrate
	__end_of_Baudrate:
;; =============== function _Baudrate ends ============

	signat	_Baudrate,4216
	global	_Delay
psect	text349,local,class=CODE,delta=2
global __ptext349
__ptext349:

;; *************** function _Delay *****************
;; Defined at:
;;		line 107 in file "C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
;; Parameters:    Size  Location     Type
;;  del             2    0[COMMON] unsigned int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd8_Command
;;		_Lcd8_Write
;;		_main
;; This function uses a non-reentrant model
;;
psect	text349
	file	"C:\Users\Salem Crisp 7\Desktop\New folder\accelerometer contol robot tx\pic_lcd8.h"
	line	107
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 5
; Regs used in _Delay: [wreg]
	line	108
	
l3902:	
;pic_lcd8.h: 108: while(del--);
	goto	l3904
	
l794:	
	goto	l3904
	
l793:	
	
l3904:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u3345
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u3345:

	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l3904
u3340:
	goto	l796
	
l795:	
	line	109
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
psect	text350,local,class=CODE,delta=2
global __ptext350
__ptext350:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
