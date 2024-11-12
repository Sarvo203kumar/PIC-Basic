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
	FNCALL	_main,_delay
	FNROOT	_main
	global	_CCP1CON
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_PR2
_PR2	set	146
	global	_TRISC
_TRISC	set	135
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

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@k
delay@k:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	global	main@k
main@k:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      60
;;                                              4 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                4     0      4      15
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "D:\pic controller,PIC16F877A\stepper motor\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic controller,PIC16F877A\stepper motor\main.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	6
	
l2607:	
;main.c: 6: TRISC=0xfb;
	movlw	(0FBh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	7
;main.c: 7: CCP1CON=0X0f;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	8
;main.c: 8: PR2=250;
	movlw	(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	9
	
l2609:	
;main.c: 9: CCPR1L=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	10
	
l2611:	
;main.c: 10: T2CON=0X07;
	movlw	(07h)
	movwf	(18)	;volatile
	goto	l2613
	line	11
;main.c: 11: while(1)
	
l687:	
	line	13
	
l2613:	
;main.c: 12: {
;main.c: 13: for(int k=15;k<90;k++){CCPR1L = k;delay(3000);}
	movlw	low(0Fh)
	movwf	(main@k)
	movlw	high(0Fh)
	movwf	((main@k))+1
	
l2615:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(05Ah)
	subwf	(main@k),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2619
u2230:
	goto	l692
	
l2617:	
	goto	l692
	
l688:	
	
l2619:	
	movf	(main@k),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l2621:	
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0Bh
	movwf	(?_delay+1)
	movlw	0B8h
	movwf	(?_delay)

	fcall	_delay
	
l2623:	
	movlw	low(01h)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l2625:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(05Ah)
	subwf	(main@k),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l2619
u2240:
	goto	l692
	
l689:	
	line	14
;main.c: 14: break;
	goto	l692
	line	16
	
l691:	
	line	11
	goto	l2613
	
l690:	
	line	19
	
l692:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:

;; *************** function _delay *****************
;; Defined at:
;;		line 22 in file "D:\pic controller,PIC16F877A\stepper motor\main.c"
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
psect	text71
	file	"D:\pic controller,PIC16F877A\stepper motor\main.c"
	line	22
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	23
	
l1745:	
;main.c: 23: while(k--);
	goto	l1747
	
l696:	
	goto	l1747
	
l695:	
	
l1747:	
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
	goto	l1747
u10:
	goto	l698
	
l697:	
	line	24
	
l698:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
