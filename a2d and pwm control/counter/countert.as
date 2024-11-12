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
	FNCALL	_main,_cmd
	FNCALL	_main,_write
	FNCALL	_disp,_cmd
	FNCALL	_disp,_write
	FNCALL	_init,_cmd
	FNROOT	_main
	global	_a
	global	_m
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_m:
       ds      1

	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISB
_TRISB	set	134
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
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"countert.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
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
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	??_cmd
??_cmd:	; 0 bytes @ 0x0
	global	?_write
?_write:	; 0 bytes @ 0x0
	global	??_write
??_write:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
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
	global	disp@a
disp@a:	; 1 bytes @ 0x4
	ds	1
	global	disp@k
disp@k:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	2
;;Data sizes: Strings 7, constant 0, data 0, bss 1, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; disp@b	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
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
;; (0) _main                                                 2     2      0     240
;;                                              7 COMMON     2     2      0
;;                               _init
;;                               _disp
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _disp                                                 5     3      2     150
;;                                              2 COMMON     5     3      2
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      30
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (1) _write                                                2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _cmd
;;   _disp
;;     _cmd
;;     _write
;;   _cmd
;;   _write
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       B       3        0.0%
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
;;DATA                 0      0       D      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "D:\pic controller,PIC16F877A\New folder\main.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init
;;		_disp
;;		_cmd
;;		_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l2695:	
;main.c: 19: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	20
	
l2697:	
;main.c: 20: TRISB = 0x03;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	21
	
l2699:	
;main.c: 21: init();
	fcall	_init
	goto	l2701
	line	22
;main.c: 22: while(1)
	
l699:	
	line	24
	
l2701:	
;main.c: 23: {
;main.c: 24: disp(0x80,"COUNT:",6);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_disp)
	movlw	(06h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_disp)+01h
	movlw	(080h)
	fcall	_disp
	line	25
	
l2703:	
;main.c: 25: if(!RB0){while(!RB0);a++;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2709
u2250:
	goto	l701
	
l2705:	
	goto	l701
	
l702:	
	
l701:	
	btfss	(48/8),(48)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l701
u2260:
	goto	l2707
	
l703:	
	
l2707:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_a),f
	goto	l2709
	
l700:	
	line	26
	
l2709:	
;main.c: 26: if(!RB1){while(!RB1);a--;}
	btfsc	(49/8),(49)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2715
u2270:
	goto	l705
	
l2711:	
	goto	l705
	
l706:	
	
l705:	
	btfss	(49/8),(49)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l705
u2280:
	goto	l2713
	
l707:	
	
l2713:	
	movlw	low(01h)
	subwf	(_a),f
	goto	l2715
	
l704:	
	line	27
	
l2715:	
;main.c: 27: if(!RB2){while(!RB2);a=0;}
	btfsc	(50/8),(50)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2719
u2290:
	goto	l709
	
l2717:	
	goto	l709
	
l710:	
	
l709:	
	btfss	(50/8),(50)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l709
u2300:
	
l711:	
	clrf	(_a)
	goto	l2719
	
l708:	
	line	28
	
l2719:	
;main.c: 28: if(a>9){a=0;}
	movlw	(0Ah)
	subwf	(_a),w
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2723
u2310:
	
l2721:	
	clrf	(_a)
	goto	l2723
	
l712:	
	line	29
	
l2723:	
;main.c: 29: cmd(0x87);write(a+0x30);
	movlw	(087h)
	fcall	_cmd
	movf	(_a),w
	addlw	030h
	fcall	_write
	goto	l2701
	line	30
	
l713:	
	line	22
	goto	l2701
	
l714:	
	line	31
	
l715:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_disp
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _disp *****************
;; Defined at:
;;		line 69 in file "D:\pic controller,PIC16F877A\New folder\main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_1(7), 
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
psect	text101
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	69
	global	__size_of_disp
	__size_of_disp	equ	__end_of_disp-_disp
	
_disp:	
	opt	stack 6
; Regs used in _disp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;disp@a stored from wreg
	movwf	(disp@a)
	line	70
	
l2685:	
;main.c: 70: for(int k=0;k<=c;k++)
	clrf	(disp@k)
	clrf	(disp@k+1)
	goto	l2693
	line	71
	
l728:	
	line	72
	
l2687:	
;main.c: 71: {
;main.c: 72: cmd(a+k);
	movf	(disp@k),w
	addwf	(disp@a),w
	fcall	_cmd
	line	73
	
l2689:	
;main.c: 73: write(b[k]);
	movf	(disp@k),w
	addwf	(disp@b),w
	movwf	fsr0
	fcall	stringdir
	fcall	_write
	line	70
	
l2691:	
	movlw	low(01h)
	addwf	(disp@k),f
	skipnc
	incf	(disp@k+1),f
	movlw	high(01h)
	addwf	(disp@k+1),f
	goto	l2693
	
l727:	
	
l2693:	
	movf	(disp@k+1),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2245
	movf	(disp@k),w
	subwf	(disp@c),w
u2245:

	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2687
u2240:
	goto	l730
	
l729:	
	line	75
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_disp
	__end_of_disp:
;; =============== function _disp ends ============

	signat	_disp,12408
	global	_init
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _init *****************
;; Defined at:
;;		line 34 in file "D:\pic controller,PIC16F877A\New folder\main.c"
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
psect	text102
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	34
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l2683:	
;main.c: 35: cmd(0x02);
	movlw	(02h)
	fcall	_cmd
	line	36
;main.c: 36: cmd(0x28);
	movlw	(028h)
	fcall	_cmd
	line	37
;main.c: 37: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	38
;main.c: 38: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	39
;main.c: 39: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	40
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_write
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _write *****************
;; Defined at:
;;		line 56 in file "D:\pic controller,PIC16F877A\New folder\main.c"
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
;;		_main
;;		_disp
;; This function uses a non-reentrant model
;;
psect	text103
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	56
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 7
; Regs used in _write: [wreg+status,2+status,0]
;write@b stored from wreg
	movwf	(write@b)
	line	57
	
l2657:	
;main.c: 57: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_write+0)+0
	movf	(??_write+0)+0,w
	movwf	(_m)
	line	58
	
l2659:	
;main.c: 58: PORTD = (b & 0xf0)|m;
	movf	(write@b),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	59
	
l2661:	
;main.c: 59: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2663:	
	bsf	(64/8),(64)&7
	line	60
	
l2665:	
;main.c: 60: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2327:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2327
	nop2	;nop
	clrwdt
opt asmopt_on

	line	61
	
l2667:	
;main.c: 61: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2669:	
	bcf	(64/8),(64)&7
	line	62
	
l2671:	
;main.c: 62: PORTD = ((b<<4) & 0xf0)|m;
	movf	(write@b),w
	movwf	(??_write+0)+0
	movlw	(04h)-1
u2235:
	clrc
	rlf	(??_write+0)+0,f
	addlw	-1
	skipz
	goto	u2235
	clrc
	rlf	(??_write+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	63
	
l2673:	
;main.c: 63: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2675:	
	bsf	(64/8),(64)&7
	line	64
	
l2677:	
;main.c: 64: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2337:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2337
	nop2	;nop
	clrwdt
opt asmopt_on

	line	65
	
l2679:	
;main.c: 65: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2681:	
	bcf	(64/8),(64)&7
	line	66
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,4216
	global	_cmd
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _cmd *****************
;; Defined at:
;;		line 43 in file "D:\pic controller,PIC16F877A\New folder\main.c"
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
;;		_main
;;		_init
;;		_disp
;; This function uses a non-reentrant model
;;
psect	text104
	file	"D:\pic controller,PIC16F877A\New folder\main.c"
	line	43
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg+status,2+status,0]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	44
	
l2635:	
;main.c: 44: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_cmd+0)+0
	movf	(??_cmd+0)+0,w
	movwf	(_m)
	line	45
	
l2637:	
;main.c: 45: PORTD = (a & 0xf0)|m;
	movf	(cmd@a),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	46
	
l2639:	
;main.c: 46: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2641:	
	bcf	(64/8),(64)&7
	line	47
	
l2643:	
;main.c: 47: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2347:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2347
	nop2	;nop
	clrwdt
opt asmopt_on

	line	48
	
l2645:	
;main.c: 48: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	49
	
l2647:	
;main.c: 49: PORTD = ((a<<4) & 0xf0)|m;
	movf	(cmd@a),w
	movwf	(??_cmd+0)+0
	movlw	(04h)-1
u2225:
	clrc
	rlf	(??_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_cmd+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	50
	
l2649:	
;main.c: 50: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2651:	
	bcf	(64/8),(64)&7
	line	51
	
l2653:	
;main.c: 51: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2357:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2357
	nop2	;nop
	clrwdt
opt asmopt_on

	line	52
	
l2655:	
;main.c: 52: RD1=0;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	53
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
