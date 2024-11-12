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
	FNCALL	_main,_Serial_Init
	FNCALL	_Serial_Init,_Baudrate
	FNROOT	_main
	global	main@F1127
	global	_b
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\pic controller,PIC16F877A\serial data\main.c"
	line	15

;initializer for main@F1127
	retlw	057h
	retlw	06Fh
	retlw	072h
	retlw	06Bh
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	020h
	retlw	02Eh
	retlw	02Eh
	retlw	02Eh
	retlw	0
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	line	5

;initializer for _b
	retlw	01h
	global	_a
	global	_PORTC
_PORTC	set	7
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
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
	file	"function.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\pic controller,PIC16F877A\serial data\main.c"
_b:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\pic controller,PIC16F877A\serial data\main.c"
	line	15
main@F1127:
       ds      12

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
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
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+12)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Baudrate
?_Baudrate:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	Baudrate@baud
Baudrate@baud:	; 4 bytes @ 0x0
	ds	4
	global	??_Baudrate
??_Baudrate:	; 0 bytes @ 0x4
	global	?_Serial_Init
?_Serial_Init:	; 0 bytes @ 0x4
	global	Serial_Init@baud
Serial_Init@baud:	; 4 bytes @ 0x4
	ds	4
	global	??_Serial_Init
??_Serial_Init:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@dat
main@dat:	; 12 bytes @ 0x0
	ds	12
;;Data sizes: Strings 0, constant 0, data 13, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      13
;; BANK0           80     12      25
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Serial_Init
;;   _Serial_Init->_Baudrate
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                16    16      0     223
;;                                              8 COMMON     4     4      0
;;                                              0 BANK0     12    12      0
;;                        _Serial_Init
;; ---------------------------------------------------------------------------------
;; (1) _Serial_Init                                          4     0      4     176
;;                                              4 COMMON     4     0      4
;;                           _Baudrate
;; ---------------------------------------------------------------------------------
;; (2) _Baudrate                                             4     0      4     154
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Serial_Init
;;     _Baudrate
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
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      28      12        0.0%
;;ABS                  0      0      26       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      C      19       5       31.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      C       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 8 in file "D:\pic controller,PIC16F877A\serial data\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dat            12    0[BANK0 ] unsigned char [12]
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
;;      Locals:         0      12       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      12       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Serial_Init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic controller,PIC16F877A\serial data\main.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	9
	
l2914:	
;main.c: 9: TRISC =0xbf;
	movlw	(0BFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	10
;main.c: 10: PORTC=0xbf;
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	11
	
l2916:	
;main.c: 11: Serial_Init(9600);
	movlw	0
	movwf	(?_Serial_Init+3)
	movlw	0
	movwf	(?_Serial_Init+2)
	movlw	025h
	movwf	(?_Serial_Init+1)
	movlw	080h
	movwf	(?_Serial_Init)

	fcall	_Serial_Init
	goto	l2918
	line	13
;main.c: 13: while(1)
	
l733:	
	line	15
	
l2918:	
;main.c: 14: {
;main.c: 15: unsigned char dat[]="Working ...";
	movlw	(main@dat)&0ffh
	movwf	fsr0
	movlw	low(main@F1127)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	12
	movwf	((??_main+0)+0+2)
u2420:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2420
	line	16
;main.c: 16: while(TXIF==0);TXIF=0;
	goto	l736
	
l737:	
	
l736:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l736
u2430:
	
l738:	
	bcf	(100/8),(100)&7
	line	17
	
l2920:	
;main.c: 17: TXREG=dat[a];
	movf	(_a),w
	addlw	main@dat&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	18
;main.c: 18: if(dat[a]!='\0')
	movf	(_a),w
	addlw	main@dat&0ffh
	movwf	fsr0
	movf	indf
	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l739
u2440:
	line	19
	
l2922:	
;main.c: 19: { a++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_a),f
	line	20
;main.c: 20: break;
	goto	l743
	line	21
	
l2924:	
;main.c: 21: }
	goto	l2918
	line	22
	
l739:	
	line	23
;main.c: 22: else
;main.c: 23: {a=0;
	clrf	(_a)
	goto	l2918
	line	24
	
l741:	
	goto	l2918
	line	25
	
l742:	
	line	13
	goto	l2918
	
l740:	
	line	26
	
l743:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Serial_Init
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _Serial_Init *****************
;; Defined at:
;;		line 12 in file "D:\pic controller,PIC16F877A\serial data\pic_serial.h"
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
psect	text132
	file	"D:\pic controller,PIC16F877A\serial data\pic_serial.h"
	line	12
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
	
_Serial_Init:	
	opt	stack 6
; Regs used in _Serial_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l2898:	
;pic_serial.h: 13: Baudrate(baud);
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
	
l2900:	
;pic_serial.h: 14: SYNC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1220/8)^080h,(1220)&7
	line	15
	
l2902:	
;pic_serial.h: 15: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	16
	
l2904:	
;pic_serial.h: 16: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	17
	
l2906:	
;pic_serial.h: 17: GIE=1;
	bsf	(95/8),(95)&7
	line	18
	
l2908:	
;pic_serial.h: 18: PEIE=1;
	bsf	(94/8),(94)&7
	line	19
	
l2910:	
;pic_serial.h: 19: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7
	line	20
	
l2912:	
;pic_serial.h: 20: CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	line	21
	
l691:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
;; =============== function _Serial_Init ends ============

	signat	_Serial_Init,4216
	global	_Baudrate
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _Baudrate *****************
;; Defined at:
;;		line 41 in file "D:\pic controller,PIC16F877A\serial data\pic_serial.h"
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
psect	text133
	file	"D:\pic controller,PIC16F877A\serial data\pic_serial.h"
	line	41
	global	__size_of_Baudrate
	__size_of_Baudrate	equ	__end_of_Baudrate-_Baudrate
	
_Baudrate:	
	opt	stack 6
; Regs used in _Baudrate: [wreg]
	line	42
	
l2856:	
;pic_serial.h: 42: if(baud==110)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2355
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2355
	movlw	0
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2355
	movlw	06Eh
	xorwf	(Baudrate@baud),w
u2355:
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2862
u2350:
	line	44
	
l2858:	
;pic_serial.h: 43: {
;pic_serial.h: 44: SPBRG = 141;
	movlw	(08Dh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	45
	
l2860:	
;pic_serial.h: 45: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	46
;pic_serial.h: 46: }
	goto	l719
	line	47
	
l706:	
	
l2862:	
;pic_serial.h: 47: else if(baud==1200)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2365
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2365
	movlw	04h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2365
	movlw	0B0h
	xorwf	(Baudrate@baud),w
u2365:
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l2868
u2360:
	line	49
	
l2864:	
;pic_serial.h: 48: {
;pic_serial.h: 49: SPBRG = 51;
	movlw	(033h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	50
	
l2866:	
;pic_serial.h: 50: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	51
;pic_serial.h: 51: }
	goto	l719
	line	52
	
l708:	
	
l2868:	
;pic_serial.h: 52: else if(baud==2400)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2375
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2375
	movlw	09h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2375
	movlw	060h
	xorwf	(Baudrate@baud),w
u2375:
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2874
u2370:
	line	54
	
l2870:	
;pic_serial.h: 53: {
;pic_serial.h: 54: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	55
	
l2872:	
;pic_serial.h: 55: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	56
;pic_serial.h: 56: }
	goto	l719
	line	57
	
l710:	
	
l2874:	
;pic_serial.h: 57: else if(baud==4800)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2385
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2385
	movlw	012h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2385
	movlw	0C0h
	xorwf	(Baudrate@baud),w
u2385:
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l2880
u2380:
	line	59
	
l2876:	
;pic_serial.h: 58: {
;pic_serial.h: 59: SPBRG = 12;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	60
	
l2878:	
;pic_serial.h: 60: BRGH = 0;
	bcf	(1218/8)^080h,(1218)&7
	line	61
;pic_serial.h: 61: }
	goto	l719
	line	62
	
l712:	
	
l2880:	
;pic_serial.h: 62: else if(baud==9600)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2395
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2395
	movlw	025h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2395
	movlw	080h
	xorwf	(Baudrate@baud),w
u2395:
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2886
u2390:
	line	64
	
l2882:	
;pic_serial.h: 63: {
;pic_serial.h: 64: SPBRG = 25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	65
	
l2884:	
;pic_serial.h: 65: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	66
;pic_serial.h: 66: }
	goto	l719
	line	67
	
l714:	
	
l2886:	
;pic_serial.h: 67: else if(baud==57600)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2405
	movlw	0
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2405
	movlw	0E1h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2405
	movlw	0
	xorwf	(Baudrate@baud),w
u2405:
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2892
u2400:
	line	69
	
l2888:	
;pic_serial.h: 68: {
;pic_serial.h: 69: SPBRG = 20;
	movlw	(014h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	70
	
l2890:	
;pic_serial.h: 70: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	line	71
;pic_serial.h: 71: }
	goto	l719
	line	72
	
l716:	
	
l2892:	
;pic_serial.h: 72: else if(baud==115200)
	movlw	0
	xorwf	(Baudrate@baud+3),w
	skipz
	goto	u2415
	movlw	01h
	xorwf	(Baudrate@baud+2),w
	skipz
	goto	u2415
	movlw	0C2h
	xorwf	(Baudrate@baud+1),w
	skipz
	goto	u2415
	movlw	0
	xorwf	(Baudrate@baud),w
u2415:
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l719
u2410:
	line	74
	
l2894:	
;pic_serial.h: 73: {
;pic_serial.h: 74: SPBRG = 10;
	movlw	(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	75
	
l2896:	
;pic_serial.h: 75: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7
	goto	l719
	line	76
	
l718:	
	goto	l719
	line	77
	
l717:	
	goto	l719
	
l715:	
	goto	l719
	
l713:	
	goto	l719
	
l711:	
	goto	l719
	
l709:	
	goto	l719
	
l707:	
	
l719:	
	return
	opt stack 0
GLOBAL	__end_of_Baudrate
	__end_of_Baudrate:
;; =============== function _Baudrate ends ============

	signat	_Baudrate,4216
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
