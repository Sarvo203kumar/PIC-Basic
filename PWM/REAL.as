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
	FNCALL	_main,_init
	FNCALL	_main,_disp
	FNCALL	_main,_delay
	FNCALL	_disp,_cmd
	FNCALL	_disp,_write
	FNCALL	_init,_cmd
	FNROOT	_main
	global	_digit
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	16

;initializer for _digit
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	global	_m
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_m:
       ds      1

	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TMR2ON
_TMR2ON	set	146
	global	_PR2
_PR2	set	146
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
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
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	file	"REAL.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
_digit:
       ds      10

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
	movlw low(__pdataBANK0+10)
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
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_write
?_write:	; 0 bytes @ 0x0
	global	??_write
??_write:	; 0 bytes @ 0x0
	global	delay@k
delay@k:	; 4 bytes @ 0x0
	ds	1
	global	cmd@a
cmd@a:	; 1 bytes @ 0x1
	global	write@b
write@b:	; 1 bytes @ 0x1
	ds	1
	global	??_init
??_init:	; 0 bytes @ 0x2
	global	?_disp
?_disp:	; 0 bytes @ 0x2
	global	disp@b
disp@b:	; 1 bytes @ 0x2
	ds	1
	global	disp@c
disp@c:	; 1 bytes @ 0x3
	ds	1
	global	??_disp
??_disp:	; 0 bytes @ 0x4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	disp@a
disp@a:	; 1 bytes @ 0x4
	ds	1
	global	disp@k
disp@k:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x9
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 15, constant 0, data 10, bss 0, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; disp@b	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_1(CODE[15]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_disp
;;   _disp->_cmd
;;   _disp->_write
;;   _init->_cmd
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0     240
;;                                              7 COMMON     6     6      0
;;                               _init
;;                               _disp
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _disp                                                 5     3      2     150
;;                                              2 COMMON     5     3      2
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      30
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (2) _write                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _cmd                                                  2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                4     0      4      15
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _cmd
;;   _disp
;;     _cmd
;;     _write
;;   _delay
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
;;DATA                 0      0      1A      12        0.0%
;;ABS                  0      0      18       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   11[COMMON] int 
;;  k               2    9[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_disp
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l2695:	
;basic.c: 20: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	21
	
l2697:	
;basic.c: 21: TRISC = 0xf9;
	movlw	(0F9h)
	movwf	(135)^080h	;volatile
	line	22
	
l2699:	
;basic.c: 22: init();
	fcall	_init
	line	23
	
l2701:	
;basic.c: 23: CCP1CON = CCP2CON = 0x0f;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	movwf	(23)	;volatile
	line	24
	
l2703:	
;basic.c: 24: CCPR1L = CCPR2L = 0x00;
	clrf	(27)	;volatile
	clrf	(21)	;volatile
	line	25
	
l2705:	
;basic.c: 25: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	26
	
l2707:	
;basic.c: 26: disp(0x80,"PWM TESTING...",14);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_disp)
	movlw	(0Eh)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_disp)+01h
	movlw	(080h)
	fcall	_disp
	goto	l2709
	line	27
;basic.c: 27: while(1)
	
l699:	
	line	29
	
l2709:	
;basic.c: 28: {
;basic.c: 29: for(int k=0,j=255; k<255,j>0; k++,j--)
	clrf	(main@k)
	clrf	(main@k+1)
	
l2711:	
	movlw	low(0FFh)
	movwf	(main@j)
	movlw	high(0FFh)
	movwf	((main@j))+1
	goto	l2727
	line	30
	
l701:	
	line	31
;basic.c: 30: {
;basic.c: 31: TMR2ON = 1; CCPR1L = k; TMR2ON = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7
	
l2713:	
	movf	(main@k),w
	movwf	(21)	;volatile
	
l2715:	
	bcf	(146/8),(146)&7
	line	32
	
l2717:	
;basic.c: 32: TMR2ON = 1; CCPR2L = j; TMR2ON = 0;
	bsf	(146/8),(146)&7
	movf	(main@j),w
	movwf	(27)	;volatile
	
l2719:	
	bcf	(146/8),(146)&7
	line	33
	
l2721:	
;basic.c: 33: delay(5000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	013h
	movwf	(?_delay+1)
	movlw	088h
	movwf	(?_delay)

	fcall	_delay
	line	29
	
l2723:	
	movlw	low(01h)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l2725:	
	movlw	low(-1)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(-1)
	addwf	(main@j+1),f
	goto	l2727
	
l700:	
	
l2727:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(01h)
	subwf	(main@j),w
u2265:

	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l701
u2260:
	goto	l2709
	
l702:	
	goto	l2709
	line	35
	
l703:	
	line	27
	goto	l2709
	
l704:	
	line	36
	
l705:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_disp
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function _disp *****************
;; Defined at:
;;		line 74 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_1(15), 
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[COMMON] unsigned char 
;;  k               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;;		_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text107
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	74
	global	__size_of_disp
	__size_of_disp	equ	__end_of_disp-_disp
	
_disp:	
	opt	stack 6
; Regs used in _disp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;disp@a stored from wreg
	movwf	(disp@a)
	line	75
	
l2685:	
;basic.c: 75: for(int k=0;k<=c;k++)
	clrf	(disp@k)
	clrf	(disp@k+1)
	goto	l2693
	line	76
	
l718:	
	line	77
	
l2687:	
;basic.c: 76: {
;basic.c: 77: cmd(a+k);
	movf	(disp@k),w
	addwf	(disp@a),w
	fcall	_cmd
	line	78
	
l2689:	
;basic.c: 78: write(b[k]);
	movf	(disp@k),w
	addwf	(disp@b),w
	movwf	fsr0
	fcall	stringdir
	fcall	_write
	line	75
	
l2691:	
	movlw	low(01h)
	addwf	(disp@k),f
	skipnc
	incf	(disp@k+1),f
	movlw	high(01h)
	addwf	(disp@k+1),f
	goto	l2693
	
l717:	
	
l2693:	
	movf	(disp@k+1),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2255
	movf	(disp@k),w
	subwf	(disp@c),w
u2255:

	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l2687
u2250:
	goto	l720
	
l719:	
	line	80
	
l720:	
	return
	opt stack 0
GLOBAL	__end_of_disp
	__end_of_disp:
;; =============== function _disp ends ============

	signat	_disp,12408
	global	_init
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:

;; *************** function _init *****************
;; Defined at:
;;		line 39 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text108
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	39
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l2683:	
;basic.c: 40: cmd(0x02);
	movlw	(02h)
	fcall	_cmd
	line	41
;basic.c: 41: cmd(0x28);
	movlw	(028h)
	fcall	_cmd
	line	42
;basic.c: 42: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	43
;basic.c: 43: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	44
;basic.c: 44: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	45
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_write
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _write *****************
;; Defined at:
;;		line 61 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    1[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_disp
;; This function uses a non-reentrant model
;;
psect	text109
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	61
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 6
; Regs used in _write: [wreg+status,2+status,0]
;write@b stored from wreg
	movwf	(write@b)
	line	62
	
l2657:	
;basic.c: 62: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_write+0)+0
	movf	(??_write+0)+0,w
	movwf	(_m)
	line	63
	
l2659:	
;basic.c: 63: PORTD = (b & 0xf0)|m;
	movf	(write@b),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	64
	
l2661:	
;basic.c: 64: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2663:	
	bsf	(64/8),(64)&7
	line	65
	
l2665:	
;basic.c: 65: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2277:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2277
	nop2	;nop
	clrwdt
opt asmopt_on

	line	66
	
l2667:	
;basic.c: 66: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2669:	
	bcf	(64/8),(64)&7
	line	67
	
l2671:	
;basic.c: 67: PORTD = ((b<<4) & 0xf0)|m;
	movf	(write@b),w
	movwf	(??_write+0)+0
	movlw	(04h)-1
u2245:
	clrc
	rlf	(??_write+0)+0,f
	addlw	-1
	skipz
	goto	u2245
	clrc
	rlf	(??_write+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	68
	
l2673:	
;basic.c: 68: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2675:	
	bsf	(64/8),(64)&7
	line	69
	
l2677:	
;basic.c: 69: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2287:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2287
	nop2	;nop
	clrwdt
opt asmopt_on

	line	70
	
l2679:	
;basic.c: 70: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2681:	
	bcf	(64/8),(64)&7
	line	71
	
l714:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,4216
	global	_cmd
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _cmd *****************
;; Defined at:
;;		line 48 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    1[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;;		_disp
;; This function uses a non-reentrant model
;;
psect	text110
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	48
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 6
; Regs used in _cmd: [wreg+status,2+status,0]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	49
	
l2635:	
;basic.c: 49: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_cmd+0)+0
	movf	(??_cmd+0)+0,w
	movwf	(_m)
	line	50
	
l2637:	
;basic.c: 50: PORTD = (a & 0xf0)|m;
	movf	(cmd@a),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	51
	
l2639:	
;basic.c: 51: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2641:	
	bcf	(64/8),(64)&7
	line	52
	
l2643:	
;basic.c: 52: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2297:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2297
	nop2	;nop
	clrwdt
opt asmopt_on

	line	53
	
l2645:	
;basic.c: 53: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	54
	
l2647:	
;basic.c: 54: PORTD = ((a<<4) & 0xf0)|m;
	movf	(cmd@a),w
	movwf	(??_cmd+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_cmd+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	55
	
l2649:	
;basic.c: 55: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2651:	
	bcf	(64/8),(64)&7
	line	56
	
l2653:	
;basic.c: 56: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2307:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2307
	nop2	;nop
	clrwdt
opt asmopt_on

	line	57
	
l2655:	
;basic.c: 57: RD1=0;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	58
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
	global	_delay
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function _delay *****************
;; Defined at:
;;		line 83 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
;; Parameters:    Size  Location     Type
;;  k               4    0[COMMON] long 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text111
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\PWM\basic.c"
	line	83
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	84
	
l1773:	
;basic.c: 84: while(k--);
	goto	l1775
	
l724:	
	goto	l1775
	
l723:	
	
l1775:	
	movlw	0FFh
	addwf	(delay@k),f
	movlw	0FFh
	skipc
	addwf	(delay@k+1),f
	movlw	0FFh
	skipc
	addwf	(delay@k+2),f
	movlw	0FFh
	skipc
	addwf	(delay@k+3),f
	movlw	0FFh
	xorwf	((delay@k+3)),w
	skipz
	goto	u15
	movlw	0FFh
	xorwf	((delay@k+2)),w
	skipz
	goto	u15
	movlw	0FFh
	xorwf	((delay@k+1)),w
	skipz
	goto	u15
	movlw	0FFh
	xorwf	((delay@k)),w
u15:
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1775
u10:
	goto	l726
	
l725:	
	line	85
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
