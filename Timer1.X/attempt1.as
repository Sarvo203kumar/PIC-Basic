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
	FNCALL	_main,_seq
	FNCALL	_seq,_timer1delay
	FNROOT	_main
	global	_PORTD
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RC0
_RC0	set	56
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISD
_TRISD	set	136
	global	_TRISC0
_TRISC0	set	1080
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
	file	"attempt1.as"
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
	global	?_timer1delay
?_timer1delay:	; 0 bytes @ 0x0
	global	??_timer1delay
??_timer1delay:	; 0 bytes @ 0x0
	global	?_seq
?_seq:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	timer1delay@i
timer1delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_seq
??_seq:	; 0 bytes @ 0x2
	ds	1
	global	seq@get
seq@get:	; 1 bytes @ 0x3
	ds	1
	global	seq@j
seq@j:	; 2 bytes @ 0x4
	ds	2
	global	seq@j_1233
seq@j_1233:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_seq
;;   _seq->_timer1delay
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
;; (0) _main                                                 0     0      0     150
;;                                _seq
;; ---------------------------------------------------------------------------------
;; (1) _seq                                                  6     6      0     150
;;                                              2 COMMON     6     6      0
;;                        _timer1delay
;; ---------------------------------------------------------------------------------
;; (2) _timer1delay                                          2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _seq
;;     _timer1delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "D:\pic program\Timer1.X\Untitled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_seq
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic program\Timer1.X\Untitled.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l2658:	
;Untitled.c: 24: TRISC0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1080/8)^080h,(1080)&7
	line	25
	
l2660:	
;Untitled.c: 25: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	26
;Untitled.c: 26: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l2662
	line	27
;Untitled.c: 27: while(1)
	
l694:	
	line	29
	
l2662:	
;Untitled.c: 28: {
;Untitled.c: 29: if (RC0==0)
	btfsc	(56/8),(56)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2662
u2310:
	line	32
	
l2664:	
;Untitled.c: 30: {
;Untitled.c: 32: seq(1);
	movlw	(01h)
	fcall	_seq
	line	33
;Untitled.c: 33: seq(3);
	movlw	(03h)
	fcall	_seq
	line	34
;Untitled.c: 34: seq(7);
	movlw	(07h)
	fcall	_seq
	line	35
;Untitled.c: 35: seq(15);
	movlw	(0Fh)
	fcall	_seq
	line	37
;Untitled.c: 37: while(RC0==1)
	goto	l2668
	
l697:	
	line	39
	
l2666:	
;Untitled.c: 38: {
;Untitled.c: 39: PORTD=0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l2668
	line	40
	
l696:	
	line	37
	
l2668:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l2666
u2320:
	goto	l2662
	
l698:	
	goto	l2662
	line	41
	
l695:	
	goto	l2662
	line	42
	
l699:	
	line	27
	goto	l2662
	
l700:	
	line	43
	
l701:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_seq
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _seq *****************
;; Defined at:
;;		line 7 in file "D:\pic program\Timer1.X\Untitled.c"
;; Parameters:    Size  Location     Type
;;  get             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  get             1    3[COMMON] unsigned char 
;;  j               2    6[COMMON] int 
;;  j               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer1delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text89
	file	"D:\pic program\Timer1.X\Untitled.c"
	line	7
	global	__size_of_seq
	__size_of_seq	equ	__end_of_seq-_seq
	
_seq:	
	opt	stack 6
; Regs used in _seq: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;seq@get stored from wreg
	line	9
	movwf	(seq@get)
	
l2630:	
;Untitled.c: 8: {
;Untitled.c: 9: for (int j=0; j<=7; j++)
	clrf	(seq@j)
	clrf	(seq@j+1)
	
l2632:	
	movf	(seq@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(08h)
	subwf	(seq@j),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2636
u2250:
	goto	l2644
	
l2634:	
	goto	l2644
	line	10
	
l687:	
	line	11
	
l2636:	
;Untitled.c: 10: {
;Untitled.c: 11: PORTD = get << j;
	movf	(seq@get),w
	movwf	(??_seq+0)+0
	incf	(seq@j),w
	goto	u2264
u2265:
	clrc
	rlf	(??_seq+0)+0,f
u2264:
	addlw	-1
	skipz
	goto	u2265
	movf	0+(??_seq+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	12
	
l2638:	
;Untitled.c: 12: timer1delay();
	fcall	_timer1delay
	line	9
	
l2640:	
	movlw	low(01h)
	addwf	(seq@j),f
	skipnc
	incf	(seq@j+1),f
	movlw	high(01h)
	addwf	(seq@j+1),f
	
l2642:	
	movf	(seq@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(08h)
	subwf	(seq@j),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2636
u2270:
	goto	l2644
	
l688:	
	line	14
	
l2644:	
;Untitled.c: 13: }
;Untitled.c: 14: for (int j=7; j>=0; j--)
	movlw	low(07h)
	movwf	(seq@j_1233)
	movlw	high(07h)
	movwf	((seq@j_1233))+1
	
l2646:	
	btfss	(seq@j_1233+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l2650
u2280:
	goto	l691
	
l2648:	
	goto	l691
	line	15
	
l689:	
	line	16
	
l2650:	
;Untitled.c: 15: {
;Untitled.c: 16: PORTD = get << j;
	movf	(seq@get),w
	movwf	(??_seq+0)+0
	incf	(seq@j_1233),w
	goto	u2294
u2295:
	clrc
	rlf	(??_seq+0)+0,f
u2294:
	addlw	-1
	skipz
	goto	u2295
	movf	0+(??_seq+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
	
l2652:	
;Untitled.c: 17: timer1delay();
	fcall	_timer1delay
	line	14
	
l2654:	
	movlw	low(-1)
	addwf	(seq@j_1233),f
	skipnc
	incf	(seq@j_1233+1),f
	movlw	high(-1)
	addwf	(seq@j_1233+1),f
	
l2656:	
	btfss	(seq@j_1233+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2650
u2300:
	goto	l691
	
l690:	
	line	20
	
l691:	
	return
	opt stack 0
GLOBAL	__end_of_seq
	__end_of_seq:
;; =============== function _seq ends ============

	signat	_seq,4216
	global	_timer1delay
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _timer1delay *****************
;; Defined at:
;;		line 45 in file "D:\pic program\Timer1.X\Untitled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_seq
;; This function uses a non-reentrant model
;;
psect	text90
	file	"D:\pic program\Timer1.X\Untitled.c"
	line	45
	global	__size_of_timer1delay
	__size_of_timer1delay	equ	__end_of_timer1delay-_timer1delay
	
_timer1delay:	
	opt	stack 6
; Regs used in _timer1delay: [wreg+btemp+1]
	line	46
	
l1756:	
;Untitled.c: 46: T1CON=0x31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	47
;Untitled.c: 47: TMR1H=0x0B;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	48
;Untitled.c: 48: TMR1L=0xDB;
	movlw	(0DBh)
	movwf	(14)	;volatile
	line	49
	
l1758:	
;Untitled.c: 49: GIE=1;
	bsf	(95/8),(95)&7
	line	50
	
l1760:	
;Untitled.c: 50: PEIE=1;
	bsf	(94/8),(94)&7
	line	51
	
l1762:	
;Untitled.c: 51: TMR1ON =1;
	bsf	(128/8),(128)&7
	line	52
;Untitled.c: 52: for(int i=1; i<=5;i++){
	movlw	low(01h)
	movwf	(timer1delay@i)
	movlw	high(01h)
	movwf	((timer1delay@i))+1
	
l1764:	
	movf	(timer1delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(06h)
	subwf	(timer1delay@i),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l706
u10:
	goto	l709
	
l1766:	
	goto	l709
	
l704:	
	line	53
;Untitled.c: 53: while(!TMR1IF);
	goto	l706
	
l707:	
	
l706:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u21
	goto	u20
u21:
	goto	l706
u20:
	
l708:	
	line	54
;Untitled.c: 54: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	52
	
l1768:	
	movlw	low(01h)
	addwf	(timer1delay@i),f
	skipnc
	incf	(timer1delay@i+1),f
	movlw	high(01h)
	addwf	(timer1delay@i+1),f
	
l1770:	
	movf	(timer1delay@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(06h)
	subwf	(timer1delay@i),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l706
u30:
	goto	l709
	
l705:	
	line	56
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_timer1delay
	__end_of_timer1delay:
;; =============== function _timer1delay ends ============

	signat	_timer1delay,88
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
