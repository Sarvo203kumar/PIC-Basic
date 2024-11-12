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
	FNCALL	_main,_state
	FNCALL	_state,_timer1delay
	FNROOT	_main
	global	_PORTC
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
_PORTC	set	7
	global	_PORTD
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
	global	_RC1
_RC1	set	57
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISD
_TRISD	set	136
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
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
	file	"hulk.as"
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
	global	?_state
?_state:	; 0 bytes @ 0x0
	global	?_timer1delay
?_timer1delay:	; 0 bytes @ 0x0
	global	??_timer1delay
??_timer1delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	timer1delay@i
timer1delay@i:	; 2 bytes @ 0x0
	ds	2
	global	??_state
??_state:	; 0 bytes @ 0x2
	global	state@i
state@i:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_state
;;   _state->_timer1delay
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
;; (0) _main                                                 0     0      0      60
;;                              _state
;; ---------------------------------------------------------------------------------
;; (1) _state                                                2     2      0      60
;;                                              2 COMMON     2     2      0
;;                        _timer1delay
;; ---------------------------------------------------------------------------------
;; (2) _timer1delay                                          2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _state
;;     _timer1delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
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
;;		line 20 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\star delta\main.c"
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
;;		_state
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\star delta\main.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l2654:	
;main.c: 22: TRISC1 =1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1081/8)^080h,(1081)&7
	line	23
;main.c: 23: TRISC0 =1;
	bsf	(1080/8)^080h,(1080)&7
	line	24
	
l2656:	
;main.c: 24: PORTC=0xff;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	25
	
l2658:	
;main.c: 25: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	26
	
l2660:	
;main.c: 26: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l2662
	line	27
;main.c: 27: while(1)
	
l695:	
	line	29
	
l2662:	
;main.c: 28: {
;main.c: 29: state();
	fcall	_state
	goto	l2662
	line	30
	
l696:	
	line	27
	goto	l2662
	
l697:	
	line	31
	
l698:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_state
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _state *****************
;; Defined at:
;;		line 33 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\star delta\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer1delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text89
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\star delta\main.c"
	line	33
	global	__size_of_state
	__size_of_state	equ	__end_of_state-_state
	
_state:	
	opt	stack 6
; Regs used in _state: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	34
;main.c: 34: while (1)
	
l701:	
	line	36
;main.c: 35: {
;main.c: 36: if (RC0 ==1 && RC1 ==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l702
u2250:
	
l2634:	
	btfsc	(57/8),(57)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l702
u2260:
	line	38
	
l2636:	
;main.c: 37: {
;main.c: 38: for(int i =0;i<=10;i++)
	clrf	(state@i)
	clrf	(state@i+1)
	
l2638:	
	movf	(state@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(0Bh)
	subwf	(state@i),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l703
u2270:
	goto	l705
	
l2640:	
	goto	l705
	line	39
	
l703:	
	line	40
;main.c: 39: {
;main.c: 40: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	41
	
l2642:	
;main.c: 41: timer1delay();
	fcall	_timer1delay
	line	38
	
l2644:	
	movlw	low(01h)
	addwf	(state@i),f
	skipnc
	incf	(state@i+1),f
	movlw	high(01h)
	addwf	(state@i+1),f
	
l2646:	
	movf	(state@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(0Bh)
	subwf	(state@i),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l703
u2280:
	goto	l705
	
l704:	
	line	43
;main.c: 42: }
;main.c: 43: while(1){
	
l705:	
	line	44
;main.c: 44: if(RC1==0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l706
u2290:
	line	45
	
l2648:	
;main.c: 45: RD1=0;
	bcf	(65/8),(65)&7
	line	46
;main.c: 46: RD2=1;
	bsf	(66/8),(66)&7
	line	47
	
l2650:	
;main.c: 47: timer1delay();
	fcall	_timer1delay
	line	48
;main.c: 48: }
	goto	l705
	line	49
	
l706:	
	line	51
;main.c: 49: else
;main.c: 50: {
;main.c: 51: RD2=0;
	bcf	(66/8),(66)&7
	line	52
;main.c: 52: break;
	goto	l701
	line	53
	
l707:	
	goto	l705
	line	54
	
l709:	
	line	43
	goto	l705
	
l708:	
	line	55
;main.c: 53: }
;main.c: 54: }
;main.c: 55: }
	goto	l701
	line	57
	
l702:	
	line	59
;main.c: 57: else
;main.c: 58: {
;main.c: 59: RD1=0;
	bcf	(65/8),(65)&7
	line	60
;main.c: 60: RD2=0;
	bcf	(66/8),(66)&7
	line	61
	
l2652:	
;main.c: 61: timer1delay();
	fcall	_timer1delay
	goto	l701
	line	62
	
l710:	
	goto	l701
	line	65
	
l711:	
	line	34
	goto	l701
	
l712:	
	line	66
	
l713:	
	return
	opt stack 0
GLOBAL	__end_of_state
	__end_of_state:
;; =============== function _state ends ============

	signat	_state,88
	global	_timer1delay
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _timer1delay *****************
;; Defined at:
;;		line 6 in file "C:\Users\HP\Desktop\pic controller,PIC16F877A\star delta\main.c"
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
;;		_state
;; This function uses a non-reentrant model
;;
psect	text90
	file	"C:\Users\HP\Desktop\pic controller,PIC16F877A\star delta\main.c"
	line	6
	global	__size_of_timer1delay
	__size_of_timer1delay	equ	__end_of_timer1delay-_timer1delay
	
_timer1delay:	
	opt	stack 6
; Regs used in _timer1delay: [wreg+btemp+1]
	line	7
	
l1760:	
;main.c: 7: T1CON=0x31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	8
;main.c: 8: TMR1H=0x0B;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	9
;main.c: 9: TMR1L=0xDB;
	movlw	(0DBh)
	movwf	(14)	;volatile
	line	10
	
l1762:	
;main.c: 10: GIE=1;
	bsf	(95/8),(95)&7
	line	11
	
l1764:	
;main.c: 11: PEIE=1;
	bsf	(94/8),(94)&7
	line	12
	
l1766:	
;main.c: 12: TMR1ON =1;
	bsf	(128/8),(128)&7
	line	13
;main.c: 13: for(int i=1; i<=5;i++){
	movlw	low(01h)
	movwf	(timer1delay@i)
	movlw	high(01h)
	movwf	((timer1delay@i))+1
	
l1768:	
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
	goto	l689
u10:
	goto	l692
	
l1770:	
	goto	l692
	
l687:	
	line	14
;main.c: 14: while(!TMR1IF);
	goto	l689
	
l690:	
	
l689:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u21
	goto	u20
u21:
	goto	l689
u20:
	
l691:	
	line	15
;main.c: 15: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	13
	
l1772:	
	movlw	low(01h)
	addwf	(timer1delay@i),f
	skipnc
	incf	(timer1delay@i+1),f
	movlw	high(01h)
	addwf	(timer1delay@i+1),f
	
l1774:	
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
	goto	l689
u30:
	goto	l692
	
l688:	
	line	17
	
l692:	
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
