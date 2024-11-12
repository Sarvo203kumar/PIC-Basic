opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

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
	FNCALL	_main,_ser_int
	FNCALL	_main,_txstr
	FNCALL	_main,_rx
	FNCALL	_main,_tx
	FNCALL	_main,_Lcd8_Decimal3
	FNCALL	_Lcd8_Decimal3,___awdiv
	FNCALL	_Lcd8_Decimal3,___awmod
	FNCALL	_Lcd8_Decimal3,___lwdiv
	FNCALL	_Lcd8_Decimal3,___lwmod
	FNCALL	_Lcd8_Decimal3,_Lcd8_Write
	FNCALL	_Lcd8_Write,_Lcd8_Command
	FNCALL	_Lcd8_Write,_Delay
	FNCALL	_Lcd8_Init,_Lcd8_Command
	FNCALL	_txstr,_tx
	FNCALL	_Lcd8_Command,_Delay
	FNROOT	_main
	global	_PORTD
psect	text299,local,class=CODE,delta=2
global __ptext299
__ptext299:
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_Lcd_en
_Lcd_en	set	61
	global	_Lcd_rs
_Lcd_rs	set	60
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
	
STR_1:	
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	70	;'F'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	10
	retlw	13
	retlw	13
	retlw	0
psect	strings
	file	"function.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_ser_int
?_ser_int:	; 0 bytes @ 0x0
	global	??_ser_int
??_ser_int:	; 0 bytes @ 0x0
	global	?_txstr
?_txstr:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	??_rx
??_rx:	; 0 bytes @ 0x0
	global	?_Lcd8_Init
?_Lcd8_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	tx@a
tx@a:	; 1 bytes @ 0x0
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
	ds	1
	global	??_txstr
??_txstr:	; 0 bytes @ 0x1
	ds	1
	global	??_Lcd8_Command
??_Lcd8_Command:	; 0 bytes @ 0x2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	Lcd8_Command@com
Lcd8_Command@com:	; 1 bytes @ 0x2
	global	txstr@s
txstr@s:	; 1 bytes @ 0x2
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
	global	??_Lcd8_Write
??_Lcd8_Write:	; 0 bytes @ 0x4
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
	ds	1
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
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_Lcd8_Decimal3
?_Lcd8_Decimal3:	; 0 bytes @ 0x9
	global	Lcd8_Decimal3@val
Lcd8_Decimal3@val:	; 1 bytes @ 0x9
	ds	1
	global	??_Lcd8_Decimal3
??_Lcd8_Decimal3:	; 0 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
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
;;Data sizes: Strings 26, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      9       9
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 1
;;		 -> rx(), 
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 1
;;		 -> rx(), 
;;
;; txstr@s	PTR unsigned char  size(1) Largest target is 26
;;		 -> STR_1(CODE[26]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd8_Decimal3
;;   _Lcd8_Decimal3->___awdiv
;;   _Lcd8_Write->_Lcd8_Command
;;   _Lcd8_Init->_Lcd8_Command
;;   _txstr->_tx
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
;; (0) _main                                                 1     1      0    1355
;;                                             12 COMMON     1     1      0
;;                          _Lcd8_Init
;;                            _ser_int
;;                              _txstr
;;                                 _rx
;;                                 _tx
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
;; (2) _Lcd8_Write                                           2     1      1     110
;;                                              3 COMMON     2     1      1
;;                       _Lcd8_Command
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Init                                            0     0      0      44
;;                       _Lcd8_Command
;; ---------------------------------------------------------------------------------
;; (1) _txstr                                                2     2      0      45
;;                                              1 COMMON     2     2      0
;;                                 _tx
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
;; (1) _tx                                                   1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ser_int                                              0     0      0       0
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
;;   _ser_int
;;   _txstr
;;     _tx
;;   _rx
;;   _tx
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
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      9       9       5       11.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "D:\pic controller,PIC16F877A\New folder\main.c"
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
;;		_ser_int
;;		_txstr
;;		_rx
;;		_tx
;;		_Lcd8_Decimal3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l3148:	
;main.c: 15: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	line	16
	
l3150:	
;main.c: 16: TRISB=0xff;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	17
;main.c: 17: TRISC=0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	line	19
	
l3152:	
;main.c: 19: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	20
	
l3154:	
;main.c: 20: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	21
	
l3156:	
;main.c: 21: Lcd8_Init();
	fcall	_Lcd8_Init
	line	22
	
l3158:	
;main.c: 22: ser_int();
	fcall	_ser_int
	line	23
	
l3160:	
;main.c: 23: txstr("PIC16F877A SERIAL TEST\n\r\r");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_txstr
	goto	l3162
	line	25
;main.c: 25: while(1)
	
l731:	
	line	27
	
l3162:	
;main.c: 26: {
;main.c: 27: tx(rx());
	fcall	_rx
	fcall	_tx
	line	28
	
l3164:	
;main.c: 28: Lcd8_Decimal3(0x82,rx);
	movlw	((fp__rx-fpbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Lcd8_Decimal3)
	movlw	(082h)
	fcall	_Lcd8_Decimal3
	goto	l3162
	line	29
	
l732:	
	line	25
	goto	l3162
	
l733:	
	line	30
	
l734:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Decimal3
psect	text300,local,class=CODE,delta=2
global __ptext300
__ptext300:

;; *************** function _Lcd8_Decimal3 *****************
;; Defined at:
;;		line 74 in file "D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
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
psect	text300
	file	"D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
	line	74
	global	__size_of_Lcd8_Decimal3
	__size_of_Lcd8_Decimal3	equ	__end_of_Lcd8_Decimal3-_Lcd8_Decimal3
	
_Lcd8_Decimal3:	
	opt	stack 4
; Regs used in _Lcd8_Decimal3: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Decimal3@com stored from wreg
	line	77
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd8_Decimal3@com)
	
l3146:	
;pic_lcd8.h: 75: unsigned int Lcd_h,Lcd_hr,Lcd_t,Lcd_o;
;pic_lcd8.h: 77: Lcd_h=val/100;
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

	line	78
;pic_lcd8.h: 78: Lcd_hr=val%100;
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

	line	79
;pic_lcd8.h: 79: Lcd_t=Lcd_hr/10;
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

	line	80
;pic_lcd8.h: 80: Lcd_o=Lcd_hr%10;
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

	line	82
;pic_lcd8.h: 82: Lcd8_Write(com,Lcd_h+0x30);
	movf	(Lcd8_Decimal3@Lcd_h),w
	addlw	030h
	movwf	(??_Lcd8_Decimal3+0)+0
	movf	(??_Lcd8_Decimal3+0)+0,w
	movwf	(?_Lcd8_Write)
	movf	(Lcd8_Decimal3@com),w
	fcall	_Lcd8_Write
	line	83
;pic_lcd8.h: 83: Lcd8_Write(com+1,Lcd_t+0x30);
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
	line	84
;pic_lcd8.h: 84: Lcd8_Write(com+2,Lcd_o+0x30);
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
	line	85
	
l719:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Decimal3
	__end_of_Lcd8_Decimal3:
;; =============== function _Lcd8_Decimal3 ends ============

	signat	_Lcd8_Decimal3,8312
	global	_Lcd8_Write
psect	text301,local,class=CODE,delta=2
global __ptext301
__ptext301:

;; *************** function _Lcd8_Write *****************
;; Defined at:
;;		line 39 in file "D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
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
;;		_Lcd8_Decimal3
;;		_Lcd8_Display
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text301
	file	"D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
	line	39
	global	__size_of_Lcd8_Write
	__size_of_Lcd8_Write	equ	__end_of_Lcd8_Write-_Lcd8_Write
	
_Lcd8_Write:	
	opt	stack 4
; Regs used in _Lcd8_Write: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write@com stored from wreg
	movwf	(Lcd8_Write@com)
	line	40
	
l3132:	
;pic_lcd8.h: 40: Lcd8_Command(com);
	movf	(Lcd8_Write@com),w
	fcall	_Lcd8_Command
	line	42
	
l3134:	
;pic_lcd8.h: 42: PORTD=lr;
	movf	(Lcd8_Write@lr),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	43
	
l3136:	
;pic_lcd8.h: 43: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	44
	
l3138:	
;pic_lcd8.h: 44: Lcd_rs=1;
	bsf	(60/8),(60)&7
	line	45
	
l3140:	
;pic_lcd8.h: 45: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	46
	
l3142:	
;pic_lcd8.h: 46: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	47
	
l3144:	
;pic_lcd8.h: 47: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	48
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write
	__end_of_Lcd8_Write:
;; =============== function _Lcd8_Write ends ============

	signat	_Lcd8_Write,8312
	global	_Lcd8_Init
psect	text302,local,class=CODE,delta=2
global __ptext302
__ptext302:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 21 in file "D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
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
psect	text302
	file	"D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
	line	21
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l3130:	
;pic_lcd8.h: 22: Lcd8_Command(0x38);
	movlw	(038h)
	fcall	_Lcd8_Command
	line	23
;pic_lcd8.h: 23: Lcd8_Command(0x06);
	movlw	(06h)
	fcall	_Lcd8_Command
	line	24
;pic_lcd8.h: 24: Lcd8_Command(0x0c);
	movlw	(0Ch)
	fcall	_Lcd8_Command
	line	25
;pic_lcd8.h: 25: Lcd8_Command(0x01);
	movlw	(01h)
	fcall	_Lcd8_Command
	line	26
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_txstr
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

;; *************** function _txstr *****************
;; Defined at:
;;		line 55 in file "D:\pic controller,PIC16F877A\New folder\main.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR unsigned char 
;;		 -> STR_1(26), 
;; Auto vars:     Size  Location     Type
;;  s               1    2[COMMON] PTR unsigned char 
;;		 -> STR_1(26), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text303
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	55
	global	__size_of_txstr
	__size_of_txstr	equ	__end_of_txstr-_txstr
	
_txstr:	
	opt	stack 6
; Regs used in _txstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;txstr@s stored from wreg
	movwf	(txstr@s)
	line	56
	
l2908:	
;main.c: 56: while(*s) {
	goto	l2914
	
l753:	
	line	57
	
l2910:	
;main.c: 57: tx(*s++);
	movf	(txstr@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_tx
	
l2912:	
	movlw	(01h)
	movwf	(??_txstr+0)+0
	movf	(??_txstr+0)+0,w
	addwf	(txstr@s),f
	goto	l2914
	line	58
	
l752:	
	line	56
	
l2914:	
	movf	(txstr@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2910
u2260:
	goto	l755
	
l754:	
	line	59
	
l755:	
	return
	opt stack 0
GLOBAL	__end_of_txstr
	__end_of_txstr:
;; =============== function _txstr ends ============

	signat	_txstr,4216
	global	_Lcd8_Command
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _Lcd8_Command *****************
;; Defined at:
;;		line 29 in file "D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
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
;; This function uses a non-reentrant model
;;
psect	text304
	file	"D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
	line	29
	global	__size_of_Lcd8_Command
	__size_of_Lcd8_Command	equ	__end_of_Lcd8_Command-_Lcd8_Command
	
_Lcd8_Command:	
	opt	stack 4
; Regs used in _Lcd8_Command: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Command@com stored from wreg
	movwf	(Lcd8_Command@com)
	line	30
	
l3118:	
;pic_lcd8.h: 30: PORTD=com;
	movf	(Lcd8_Command@com),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	31
	
l3120:	
;pic_lcd8.h: 31: Lcd_en=1;
	bsf	(61/8),(61)&7
	line	32
	
l3122:	
;pic_lcd8.h: 32: Lcd_rs=0;
	bcf	(60/8),(60)&7
	line	33
	
l3124:	
;pic_lcd8.h: 33: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	34
	
l3126:	
;pic_lcd8.h: 34: Lcd_en=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	35
	
l3128:	
;pic_lcd8.h: 35: Delay(125);
	movlw	low(07Dh)
	movwf	(?_Delay)
	movlw	high(07Dh)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	36
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Command
	__end_of_Lcd8_Command:
;; =============== function _Lcd8_Command ends ============

	signat	_Lcd8_Command,4216
	global	___awmod
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
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
psect	text305
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3084:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2521
	goto	u2520
u2521:
	goto	l3088
u2520:
	line	10
	
l3086:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3088
	line	12
	
l1646:	
	line	13
	
l3088:	
	btfss	(___awmod@divisor+1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l3092
u2530:
	line	14
	
l3090:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3092
	
l1647:	
	line	15
	
l3092:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2541
	goto	u2540
u2541:
	goto	l3110
u2540:
	line	16
	
l3094:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3100
	
l1650:	
	line	18
	
l3096:	
	movlw	01h
	
u2555:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2555
	line	19
	
l3098:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3100
	line	20
	
l1649:	
	line	17
	
l3100:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3096
u2560:
	goto	l3102
	
l1651:	
	goto	l3102
	line	21
	
l1652:	
	line	22
	
l3102:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2575
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2575:
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l3106
u2570:
	line	23
	
l3104:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3106
	
l1653:	
	line	24
	
l3106:	
	movlw	01h
	
u2585:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2585
	line	25
	
l3108:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3102
u2590:
	goto	l3110
	
l1654:	
	goto	l3110
	line	26
	
l1648:	
	line	27
	
l3110:	
	movf	(___awmod@sign),w
	skipz
	goto	u2600
	goto	l3114
u2600:
	line	28
	
l3112:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3114
	
l1655:	
	line	29
	
l3114:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1656
	
l3116:	
	line	30
	
l1656:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text306,local,class=CODE,delta=2
global __ptext306
__ptext306:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
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
psect	text306
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3044:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2421
	goto	u2420
u2421:
	goto	l3048
u2420:
	line	11
	
l3046:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3048
	line	13
	
l1578:	
	line	14
	
l3048:	
	btfss	(___awdiv@dividend+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l3054
u2430:
	line	15
	
l3050:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3052:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3054
	line	17
	
l1579:	
	line	18
	
l3054:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3056:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l3076
u2440:
	line	20
	
l3058:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3064
	
l1582:	
	line	22
	
l3060:	
	movlw	01h
	
u2455:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2455
	line	23
	
l3062:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3064
	line	24
	
l1581:	
	line	21
	
l3064:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l3060
u2460:
	goto	l3066
	
l1583:	
	goto	l3066
	line	25
	
l1584:	
	line	26
	
l3066:	
	movlw	01h
	
u2475:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2475
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2485
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l3072
u2480:
	line	28
	
l3068:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3070:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3072
	line	30
	
l1585:	
	line	31
	
l3072:	
	movlw	01h
	
u2495:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2495
	line	32
	
l3074:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l3066
u2500:
	goto	l3076
	
l1586:	
	goto	l3076
	line	33
	
l1580:	
	line	34
	
l3076:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2510
	goto	l3080
u2510:
	line	35
	
l3078:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3080
	
l1587:	
	line	36
	
l3080:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1588
	
l3082:	
	line	37
	
l1588:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
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
psect	text307
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3022:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l3040
u2360:
	line	9
	
l3024:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l3030
	
l1456:	
	line	11
	
l3026:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	12
	
l3028:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3030
	line	13
	
l1455:	
	line	10
	
l3030:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l3026
u2380:
	goto	l3032
	
l1457:	
	goto	l3032
	line	14
	
l1458:	
	line	15
	
l3032:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l3036
u2390:
	line	16
	
l3034:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3036
	
l1459:	
	line	17
	
l3036:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	18
	
l3038:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l3032
u2410:
	goto	l3040
	
l1460:	
	goto	l3040
	line	19
	
l1454:	
	line	20
	
l3040:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1461
	
l3042:	
	line	21
	
l1461:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
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
;;		_Lcd8_Decimal2
;;		_Lcd8_Decimal4
;; This function uses a non-reentrant model
;;
psect	text308
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2996:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2998:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l3018
u2290:
	line	11
	
l3000:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3006
	
l1446:	
	line	13
	
l3002:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2305
	line	14
	
l3004:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3006
	line	15
	
l1445:	
	line	12
	
l3006:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l3002
u2310:
	goto	l3008
	
l1447:	
	goto	l3008
	line	16
	
l1448:	
	line	17
	
l3008:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2325
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2335
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l3014
u2330:
	line	19
	
l3010:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3012:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3014
	line	21
	
l1449:	
	line	22
	
l3014:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	23
	
l3016:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l3008
u2350:
	goto	l3018
	
l1450:	
	goto	l3018
	line	24
	
l1444:	
	line	25
	
l3018:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1451
	
l3020:	
	line	26
	
l1451:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_tx
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

;; *************** function _tx *****************
;; Defined at:
;;		line 41 in file "D:\pic controller,PIC16F877A\New folder\main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
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
;;		_txstr
;; This function uses a non-reentrant model
;;
psect	text309
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	41
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 7
; Regs used in _tx: [wreg]
;tx@a stored from wreg
	movwf	(tx@a)
	line	42
	
l2024:	
;main.c: 42: TXREG=a;
	movf	(tx@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	43
;main.c: 43: while(!TXIF);
	goto	l740
	
l741:	
	
l740:	
	btfss	(100/8),(100)&7
	goto	u41
	goto	u40
u41:
	goto	l740
u40:
	
l742:	
	line	44
;main.c: 44: TXIF = 0;
	bcf	(100/8),(100)&7
	line	45
	
l743:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
	global	_rx
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

;; *************** function _rx *****************
;; Defined at:
;;		line 48 in file "D:\pic controller,PIC16F877A\New folder\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text310
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	48
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 7
; Regs used in _rx: [wreg]
	line	49
	
l2018:	
;main.c: 49: while(!RCIF);
	goto	l746
	
l747:	
	
l746:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u31
	goto	u30
u31:
	goto	l746
u30:
	
l748:	
	line	50
;main.c: 50: RCIF=0;
	bcf	(101/8),(101)&7
	line	51
	
l2020:	
;main.c: 51: return RCREG;
	movf	(26),w	;volatile
	goto	l749
	
l2022:	
	line	52
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,89
	global	_ser_int
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _ser_int *****************
;; Defined at:
;;		line 33 in file "D:\pic controller,PIC16F877A\New folder\main.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text311
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	33
	global	__size_of_ser_int
	__size_of_ser_int	equ	__end_of_ser_int-_ser_int
	
_ser_int:	
	opt	stack 7
; Regs used in _ser_int: [wreg]
	line	34
	
l2014:	
;main.c: 34: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	35
;main.c: 35: RCSTA=0b10010000;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	36
;main.c: 36: SPBRG=17;
	movlw	(011h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	37
	
l2016:	
;main.c: 37: TXIF=RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	bcf	(100/8),(100)&7
	line	38
	
l737:	
	return
	opt stack 0
GLOBAL	__end_of_ser_int
	__end_of_ser_int:
;; =============== function _ser_int ends ============

	signat	_ser_int,88
	global	_Delay
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

;; *************** function _Delay *****************
;; Defined at:
;;		line 106 in file "D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
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
;; This function uses a non-reentrant model
;;
psect	text312
	file	"D:\pic controller,PIC16F877A\New folder\pic_lcd8.h"
	line	106
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 5
; Regs used in _Delay: [wreg]
	line	107
	
l2980:	
;pic_lcd8.h: 107: while(del--);
	goto	l2982
	
l726:	
	goto	l2982
	
l725:	
	
l2982:	
	movlw	low(01h)
	subwf	(Delay@del),f
	movlw	high(01h)
	skipc
	decf	(Delay@del+1),f
	subwf	(Delay@del+1),f
	movlw	high(0FFFFh)
	xorwf	((Delay@del+1)),w
	skipz
	goto	u2275
	movlw	low(0FFFFh)
	xorwf	((Delay@del)),w
u2275:

	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2982
u2270:
	goto	l728
	
l727:	
	line	108
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
	global	fptotal
fptotal equ 2
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__rx:
entry__rx:
	global	entry__rx
	ljmp	_rx
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
