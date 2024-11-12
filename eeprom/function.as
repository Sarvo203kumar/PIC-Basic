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
# 6 "D:\pic controller,PIC16F877A\eeprom\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "D:\pic controller,PIC16F877A\eeprom\main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFBF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init
	FNCALL	_main,_disp
	FNCALL	_main,_cmd
	FNCALL	_main,_write
	FNCALL	_disp,_cmd
	FNCALL	_disp,_write
	FNCALL	_init,_cmd
	FNROOT	_main
	global	_b
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
	line	14

;initializer for _b
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	030h
	retlw	0
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
	
STR_2:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_1:	
	retlw	87	;'W'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"function.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_a:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
_b:
       ds      11

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
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
	movlw low(__pdataBANK0+11)
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
;;Data sizes: Strings 12, constant 0, data 11, bss 1, persistent 1 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80      0      11
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; disp@b	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_2(CODE[6]), STR_1(CODE[6]), 
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
;; (0) _main                                                 2     2      0     354
;;                                              7 COMMON     2     2      0
;;                               _init
;;                               _disp
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _disp                                                 5     3      2     222
;;                                              2 COMMON     5     3      2
;;                                _cmd
;;                              _write
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0      44
;;                                _cmd
;; ---------------------------------------------------------------------------------
;; (1) _write                                                2     2      0      44
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  2     2      0      44
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
;;DATA                 0      0      18      12        0.0%
;;ABS                  0      0      16       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0       B       5       13.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       B       1       78.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "D:\pic controller,PIC16F877A\eeprom\main.c"
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
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	18
	
l2809:	
;main.c: 18: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	19
	
l2811:	
;main.c: 19: TRISB = 0xfC;
	movlw	(0FCh)
	movwf	(134)^080h	;volatile
	line	20
	
l2813:	
;main.c: 20: init();
	fcall	_init
	goto	l2815
	line	21
;main.c: 21: while(1)
	
l701:	
	line	23
	
l2815:	
;main.c: 22: {
;main.c: 23: disp(0x80,"WRIT:",5);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_disp)
	movlw	(05h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_disp)+01h
	movlw	(080h)
	fcall	_disp
	line	24
	
l2817:	
;main.c: 24: for(a=0; b[a]!='\0'; a++)
	clrf	(_a)
	goto	l2841
	line	25
	
l703:	
	line	26
;main.c: 25: {
;main.c: 26: while(WR);
	goto	l704
	
l705:	
	
l704:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l704
u2330:
	goto	l2819
	
l706:	
	line	27
	
l2819:	
;main.c: 27: EEADR = 0x00+a; EEDATA = b[a];
	movf	(_a),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	
l2821:	
	movf	(_a),w
	addlw	_b&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(268)^0100h	;volatile
	line	28
	
l2823:	
;main.c: 28: WREN = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	line	29
	
l2825:	
;main.c: 29: GIE = 0;
	bcf	(95/8),(95)&7
	line	30
	
l2827:	
;main.c: 30: EECON2 = 0x55; EECON2 = 0xAA;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	
l2829:	
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	31
	
l2831:	
;main.c: 31: WR = 1;
	bsf	(3169/8)^0180h,(3169)&7
	line	32
	
l2833:	
;main.c: 32: WREN = 0;
	bcf	(3170/8)^0180h,(3170)&7
	line	33
	
l2835:	
;main.c: 33: cmd(0x85+a);write(b[a]);
	movf	(_a),w
	addlw	085h
	fcall	_cmd
	
l2837:	
	movf	(_a),w
	addlw	_b&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_write
	line	24
	
l2839:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_a),f
	goto	l2841
	
l702:	
	
l2841:	
	movf	(_a),w
	addlw	_b&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l704
u2340:
	goto	l2843
	
l707:	
	line	35
	
l2843:	
;main.c: 34: }
;main.c: 35: disp(0xc0,"READ:",5);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_disp)
	movlw	(05h)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_disp)+01h
	movlw	(0C0h)
	fcall	_disp
	line	36
	
l2845:	
;main.c: 36: for(a=0; a<10; a++)
	clrf	(_a)
	
l2847:	
	movlw	(0Ah)
	subwf	(_a),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l710
u2350:
	goto	l2815
	
l2849:	
	goto	l2815
	line	37
	
l708:	
	line	38
;main.c: 37: {
;main.c: 38: while(RD);
	goto	l710
	
l711:	
	
l710:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3168/8)^0180h,(3168)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l710
u2360:
	goto	l2851
	
l712:	
	line	39
	
l2851:	
;main.c: 39: EEADR = 0x00+a;
	movf	(_a),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	40
	
l2853:	
;main.c: 40: RD = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3168/8)^0180h,(3168)&7
	line	41
	
l2855:	
;main.c: 41: cmd(0xc5+a);write(EEDATA);
	movf	(_a),w
	addlw	0C5h
	fcall	_cmd
	
l2857:	
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	fcall	_write
	line	36
	
l2859:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_a),f
	
l2861:	
	movlw	(0Ah)
	subwf	(_a),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l710
u2370:
	goto	l2815
	
l709:	
	goto	l2815
	line	43
	
l713:	
	line	21
	goto	l2815
	
l714:	
	line	44
	
l715:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_disp
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

;; *************** function _disp *****************
;; Defined at:
;;		line 82 in file "D:\pic controller,PIC16F877A\eeprom\main.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_2(6), STR_1(6), 
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
psect	text149
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
	line	82
	global	__size_of_disp
	__size_of_disp	equ	__end_of_disp-_disp
	
_disp:	
	opt	stack 6
; Regs used in _disp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;disp@a stored from wreg
	movwf	(disp@a)
	line	83
	
l2799:	
;main.c: 83: for(int k=0;k<=c;k++)
	clrf	(disp@k)
	clrf	(disp@k+1)
	goto	l2807
	line	84
	
l728:	
	line	85
	
l2801:	
;main.c: 84: {
;main.c: 85: cmd(a+k);
	movf	(disp@k),w
	addwf	(disp@a),w
	fcall	_cmd
	line	86
	
l2803:	
;main.c: 86: write(b[k]);
	movf	(disp@k),w
	addwf	(disp@b),w
	movwf	fsr0
	fcall	stringdir
	fcall	_write
	line	83
	
l2805:	
	movlw	low(01h)
	addwf	(disp@k),f
	skipnc
	incf	(disp@k+1),f
	movlw	high(01h)
	addwf	(disp@k+1),f
	goto	l2807
	
l727:	
	
l2807:	
	movf	(disp@k+1),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u2325
	movf	(disp@k),w
	subwf	(disp@c),w
u2325:

	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l2801
u2320:
	goto	l730
	
l729:	
	line	88
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_disp
	__end_of_disp:
;; =============== function _disp ends ============

	signat	_disp,12408
	global	_init
psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:

;; *************** function _init *****************
;; Defined at:
;;		line 47 in file "D:\pic controller,PIC16F877A\eeprom\main.c"
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
psect	text150
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
	line	47
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 6
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l2797:	
;main.c: 48: cmd(0x02);
	movlw	(02h)
	fcall	_cmd
	line	49
;main.c: 49: cmd(0x28);
	movlw	(028h)
	fcall	_cmd
	line	50
;main.c: 50: cmd(0x06);
	movlw	(06h)
	fcall	_cmd
	line	51
;main.c: 51: cmd(0x0C);
	movlw	(0Ch)
	fcall	_cmd
	line	52
;main.c: 52: cmd(0x01);
	movlw	(01h)
	fcall	_cmd
	line	53
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_write
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _write *****************
;; Defined at:
;;		line 69 in file "D:\pic controller,PIC16F877A\eeprom\main.c"
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
psect	text151
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
	line	69
	global	__size_of_write
	__size_of_write	equ	__end_of_write-_write
	
_write:	
	opt	stack 7
; Regs used in _write: [wreg+status,2+status,0]
;write@b stored from wreg
	movwf	(write@b)
	line	70
	
l2771:	
;main.c: 70: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_write+0)+0
	movf	(??_write+0)+0,w
	movwf	(_m)
	line	71
	
l2773:	
;main.c: 71: PORTD = (b & 0xf0)|m;
	movf	(write@b),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	72
	
l2775:	
;main.c: 72: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2777:	
	bsf	(64/8),(64)&7
	line	73
	
l2779:	
;main.c: 73: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2387:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2387
	nop2	;nop
	clrwdt
opt asmopt_on

	line	74
	
l2781:	
;main.c: 74: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2783:	
	bcf	(64/8),(64)&7
	line	75
	
l2785:	
;main.c: 75: PORTD = ((b<<4) & 0xf0)|m;
	movf	(write@b),w
	movwf	(??_write+0)+0
	movlw	(04h)-1
u2315:
	clrc
	rlf	(??_write+0)+0,f
	addlw	-1
	skipz
	goto	u2315
	clrc
	rlf	(??_write+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	76
	
l2787:	
;main.c: 76: RD1=1;RD0=1;
	bsf	(65/8),(65)&7
	
l2789:	
	bsf	(64/8),(64)&7
	line	77
	
l2791:	
;main.c: 77: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_write+0)+0,f
u2397:
	clrwdt
decfsz	(??_write+0)+0,f
	goto	u2397
	nop2	;nop
	clrwdt
opt asmopt_on

	line	78
	
l2793:	
;main.c: 78: RD1=0;RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	
l2795:	
	bcf	(64/8),(64)&7
	line	79
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of_write
	__end_of_write:
;; =============== function _write ends ============

	signat	_write,4216
	global	_cmd
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:

;; *************** function _cmd *****************
;; Defined at:
;;		line 56 in file "D:\pic controller,PIC16F877A\eeprom\main.c"
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
psect	text152
	file	"D:\pic controller,PIC16F877A\eeprom\main.c"
	line	56
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 7
; Regs used in _cmd: [wreg+status,2+status,0]
;cmd@a stored from wreg
	movwf	(cmd@a)
	line	57
	
l2749:	
;main.c: 57: m = PORTD & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	movwf	(??_cmd+0)+0
	movf	(??_cmd+0)+0,w
	movwf	(_m)
	line	58
	
l2751:	
;main.c: 58: PORTD = (a & 0xf0)|m;
	movf	(cmd@a),w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	59
	
l2753:	
;main.c: 59: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2755:	
	bcf	(64/8),(64)&7
	line	60
	
l2757:	
;main.c: 60: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2407:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2407
	nop2	;nop
	clrwdt
opt asmopt_on

	line	61
	
l2759:	
;main.c: 61: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	62
	
l2761:	
;main.c: 62: PORTD = ((a<<4) & 0xf0)|m;
	movf	(cmd@a),w
	movwf	(??_cmd+0)+0
	movlw	(04h)-1
u2305:
	clrc
	rlf	(??_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2305
	clrc
	rlf	(??_cmd+0)+0,w
	andlw	0F0h
	iorwf	(_m),w
	movwf	(8)	;volatile
	line	63
	
l2763:	
;main.c: 63: RD1=1;RD0=0;
	bsf	(65/8),(65)&7
	
l2765:	
	bcf	(64/8),(64)&7
	line	64
	
l2767:	
;main.c: 64: _delay(1000);
	opt asmopt_off
movlw	249
movwf	(??_cmd+0)+0,f
u2417:
	clrwdt
decfsz	(??_cmd+0)+0,f
	goto	u2417
	nop2	;nop
	clrwdt
opt asmopt_on

	line	65
	
l2769:	
;main.c: 65: RD1=0;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	66
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,4216
psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
