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
	FNCALL	_main,_Adc8_Cha
	FNCALL	_main,_delay
	FNCALL	_Adc8_Cha,___lwdiv
	FNROOT	_main
	global	_adc_hbit
	global	_adc_lbit
	global	_adc_temp
	global	_adc_temp0
	global	_adc_val1
	global	_adc_del
	global	_adc_val
	global	_adc_j
	global	_ADCON0
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ADFM
_ADFM	set	1279
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
	file	"space.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_adc_j:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
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

_adc_del:
       ds      1

_adc_val:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
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
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	delay@j
delay@j:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?_Adc8_Cha
?_Adc8_Cha:	; 2 bytes @ 0x8
	ds	2
	global	??_Adc8_Cha
??_Adc8_Cha:	; 0 bytes @ 0xA
	ds	2
	global	Adc8_Cha@val
Adc8_Cha@val:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@tep
main@tep:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80      2      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_Adc8_Cha	int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Adc8_Cha
;;   _Adc8_Cha->___lwdiv
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
;; (0) _main                                                 2     2      0     453
;;                                              0 BANK0      2     2      0
;;                           _Adc8_Cha
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _Adc8_Cha                                             5     3      2     338
;;                                              8 COMMON     5     3      2
;;                            ___lwdiv
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                7     5      2      92
;;                                              0 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Adc8_Cha
;;     ___lwdiv
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      2       E       5       17.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "D:\pic controller,PIC16F877A\a2d and pwm control\mainm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tep             2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Adc8_Cha
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\pic controller,PIC16F877A\a2d and pwm control\mainm.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	13
	
l3819:	
;mainm.c: 13: TRISA=0xff;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	14
	
l3821:	
;mainm.c: 14: TRISC=0x00;
	clrf	(135)^080h	;volatile
	line	15
	
l3823:	
;mainm.c: 15: CCP1CON =0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	16
	
l3825:	
;mainm.c: 16: T2CON=0x04;
	movlw	(04h)
	movwf	(18)	;volatile
	line	18
	
l3827:	
;mainm.c: 17: unsigned int tep;
;mainm.c: 18: CCPR1L=40.5;
	movlw	(028h)
	movwf	(21)	;volatile
	goto	l3829
	line	19
;mainm.c: 19: while(1)
	
l873:	
	line	21
	
l3829:	
;mainm.c: 20: {
;mainm.c: 21: tep=Adc8_Cha(1);
	movlw	(01h)
	fcall	_Adc8_Cha
	movf	(1+(?_Adc8_Cha)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@tep+1)
	addwf	(main@tep+1)
	movf	(0+(?_Adc8_Cha)),w
	clrf	(main@tep)
	addwf	(main@tep)

	line	22
	
l3831:	
;mainm.c: 22: PR2=tep;
	movf	(main@tep),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	23
	
l3833:	
;mainm.c: 23: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3829
	line	24
	
l874:	
	line	19
	goto	l3829
	
l875:	
	line	25
	
l876:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Adc8_Cha
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _Adc8_Cha *****************
;; Defined at:
;;		line 10 in file "D:\pic controller,PIC16F877A\a2d and pwm control\pic_adc.h"
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
psect	text128
	file	"D:\pic controller,PIC16F877A\a2d and pwm control\pic_adc.h"
	line	10
	global	__size_of_Adc8_Cha
	__size_of_Adc8_Cha	equ	__end_of_Adc8_Cha-_Adc8_Cha
	
_Adc8_Cha:	
	opt	stack 6
; Regs used in _Adc8_Cha: [wreg+status,2+status,0+pclath+cstack]
;Adc8_Cha@val stored from wreg
	movwf	(Adc8_Cha@val)
	line	11
	
l3601:	
;pic_adc.h: 11: ADFM=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1279/8)^080h,(1279)&7
	line	12
	
l3603:	
;pic_adc.h: 12: adc_del=25;
	movlw	(019h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_adc_del)
	line	14
	
l3605:	
;pic_adc.h: 14: if(val==0)
	movf	(Adc8_Cha@val),f
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l3631
u3550:
	line	16
	
l3607:	
;pic_adc.h: 15: {
;pic_adc.h: 16: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	17
	
l3609:	
;pic_adc.h: 17: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3611:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3561
	goto	u3560
u3561:
	goto	l3615
u3560:
	goto	l3813
	
l3613:	
	goto	l3813
	line	18
	
l702:	
	line	19
	
l3615:	
;pic_adc.h: 18: {
;pic_adc.h: 19: ADCON0=0x00;
	clrf	(31)	;volatile
	line	20
	
l3617:	
;pic_adc.h: 20: ADON=1;
	bsf	(248/8),(248)&7
	line	21
;pic_adc.h: 21: while(adc_del--);
	goto	l3619
	
l705:	
	goto	l3619
	
l704:	
	
l3619:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l3619
u3570:
	goto	l3621
	
l706:	
	line	22
	
l3621:	
;pic_adc.h: 22: ADCON0 =0x05;
	movlw	(05h)
	movwf	(31)	;volatile
	line	23
;pic_adc.h: 23: while(ADCON0!=0X01);
	goto	l3623
	
l708:	
	goto	l3623
	
l707:	
	
l3623:	
	movf	(31),w	;volatile
	xorlw	01h
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l3623
u3580:
	goto	l3625
	
l709:	
	line	24
	
l3625:	
;pic_adc.h: 24: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	25
	
l3627:	
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
	
l3629:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l3615
u3590:
	goto	l3813
	
l703:	
	line	27
;pic_adc.h: 26: }
;pic_adc.h: 27: }
	goto	l3813
	line	28
	
l701:	
	
l3631:	
;pic_adc.h: 28: else if(val==1)
	movf	(Adc8_Cha@val),w
	xorlw	01h
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l3657
u3600:
	line	30
	
l3633:	
;pic_adc.h: 29: {
;pic_adc.h: 30: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	31
	
l3635:	
;pic_adc.h: 31: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3637:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3641
u3610:
	goto	l3813
	
l3639:	
	goto	l3813
	line	32
	
l712:	
	line	33
	
l3641:	
;pic_adc.h: 32: {
;pic_adc.h: 33: ADCON0=0x08;
	movlw	(08h)
	movwf	(31)	;volatile
	line	34
	
l3643:	
;pic_adc.h: 34: ADON=1;
	bsf	(248/8),(248)&7
	line	35
;pic_adc.h: 35: while(adc_del--);
	goto	l3645
	
l715:	
	goto	l3645
	
l714:	
	
l3645:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l3645
u3620:
	goto	l3647
	
l716:	
	line	36
	
l3647:	
;pic_adc.h: 36: ADCON0 =0x0d;
	movlw	(0Dh)
	movwf	(31)	;volatile
	line	37
;pic_adc.h: 37: while(ADCON0!=0X09);
	goto	l3649
	
l718:	
	goto	l3649
	
l717:	
	
l3649:	
	movf	(31),w	;volatile
	xorlw	09h
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l3649
u3630:
	goto	l3651
	
l719:	
	line	38
	
l3651:	
;pic_adc.h: 38: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	39
	
l3653:	
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
	
l3655:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l3641
u3640:
	goto	l3813
	
l713:	
	line	41
;pic_adc.h: 40: }
;pic_adc.h: 41: }
	goto	l3813
	line	42
	
l711:	
	
l3657:	
;pic_adc.h: 42: else if(val==2)
	movf	(Adc8_Cha@val),w
	xorlw	02h
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l3683
u3650:
	line	44
	
l3659:	
;pic_adc.h: 43: {
;pic_adc.h: 44: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	45
	
l3661:	
;pic_adc.h: 45: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3663:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l3667
u3660:
	goto	l3813
	
l3665:	
	goto	l3813
	line	46
	
l722:	
	line	47
	
l3667:	
;pic_adc.h: 46: {
;pic_adc.h: 47: ADCON0=0x10;
	movlw	(010h)
	movwf	(31)	;volatile
	line	48
	
l3669:	
;pic_adc.h: 48: ADON=1;
	bsf	(248/8),(248)&7
	line	49
;pic_adc.h: 49: while(adc_del--);
	goto	l3671
	
l725:	
	goto	l3671
	
l724:	
	
l3671:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l3671
u3670:
	goto	l3673
	
l726:	
	line	50
	
l3673:	
;pic_adc.h: 50: ADCON0 =0x15;
	movlw	(015h)
	movwf	(31)	;volatile
	line	51
;pic_adc.h: 51: while(ADCON0!=0x11);
	goto	l3675
	
l728:	
	goto	l3675
	
l727:	
	
l3675:	
	movf	(31),w	;volatile
	xorlw	011h
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l3675
u3680:
	goto	l3677
	
l729:	
	line	52
	
l3677:	
;pic_adc.h: 52: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	53
	
l3679:	
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
	
l3681:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l3667
u3690:
	goto	l3813
	
l723:	
	line	55
;pic_adc.h: 54: }
;pic_adc.h: 55: }
	goto	l3813
	line	56
	
l721:	
	
l3683:	
;pic_adc.h: 56: else if(val==3)
	movf	(Adc8_Cha@val),w
	xorlw	03h
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l3709
u3700:
	line	58
	
l3685:	
;pic_adc.h: 57: {
;pic_adc.h: 58: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	59
	
l3687:	
;pic_adc.h: 59: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3689:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l3693
u3710:
	goto	l3813
	
l3691:	
	goto	l3813
	line	60
	
l732:	
	line	61
	
l3693:	
;pic_adc.h: 60: {
;pic_adc.h: 61: ADCON0=0x18;
	movlw	(018h)
	movwf	(31)	;volatile
	line	62
	
l3695:	
;pic_adc.h: 62: ADON=1;
	bsf	(248/8),(248)&7
	line	63
;pic_adc.h: 63: while(adc_del--);
	goto	l3697
	
l735:	
	goto	l3697
	
l734:	
	
l3697:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l3697
u3720:
	goto	l3699
	
l736:	
	line	64
	
l3699:	
;pic_adc.h: 64: ADCON0 =0x1d;
	movlw	(01Dh)
	movwf	(31)	;volatile
	line	65
;pic_adc.h: 65: while(ADCON0!=0x19);
	goto	l3701
	
l738:	
	goto	l3701
	
l737:	
	
l3701:	
	movf	(31),w	;volatile
	xorlw	019h
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l3701
u3730:
	goto	l3703
	
l739:	
	line	66
	
l3703:	
;pic_adc.h: 66: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	67
	
l3705:	
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
	
l3707:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3693
u3740:
	goto	l3813
	
l733:	
	line	69
;pic_adc.h: 68: }
;pic_adc.h: 69: }
	goto	l3813
	line	70
	
l731:	
	
l3709:	
;pic_adc.h: 70: else if(val==4)
	movf	(Adc8_Cha@val),w
	xorlw	04h
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l3735
u3750:
	line	72
	
l3711:	
;pic_adc.h: 71: {
;pic_adc.h: 72: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	73
	
l3713:	
;pic_adc.h: 73: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3715:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3719
u3760:
	goto	l3813
	
l3717:	
	goto	l3813
	line	74
	
l742:	
	line	75
	
l3719:	
;pic_adc.h: 74: {
;pic_adc.h: 75: ADCON0=0x20;
	movlw	(020h)
	movwf	(31)	;volatile
	line	76
	
l3721:	
;pic_adc.h: 76: ADON=1;
	bsf	(248/8),(248)&7
	line	77
;pic_adc.h: 77: while(adc_del--);
	goto	l3723
	
l745:	
	goto	l3723
	
l744:	
	
l3723:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l3723
u3770:
	goto	l3725
	
l746:	
	line	78
	
l3725:	
;pic_adc.h: 78: ADCON0 =0x25;
	movlw	(025h)
	movwf	(31)	;volatile
	line	79
;pic_adc.h: 79: while(ADCON0!=0x21);
	goto	l3727
	
l748:	
	goto	l3727
	
l747:	
	
l3727:	
	movf	(31),w	;volatile
	xorlw	021h
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l3727
u3780:
	goto	l3729
	
l749:	
	line	80
	
l3729:	
;pic_adc.h: 80: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	81
	
l3731:	
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
	
l3733:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l3719
u3790:
	goto	l3813
	
l743:	
	line	83
;pic_adc.h: 82: }
;pic_adc.h: 83: }
	goto	l3813
	line	84
	
l741:	
	
l3735:	
;pic_adc.h: 84: else if(val==5)
	movf	(Adc8_Cha@val),w
	xorlw	05h
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l3761
u3800:
	line	86
	
l3737:	
;pic_adc.h: 85: {
;pic_adc.h: 86: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	87
	
l3739:	
;pic_adc.h: 87: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3741:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l3745
u3810:
	goto	l3813
	
l3743:	
	goto	l3813
	line	88
	
l752:	
	line	89
	
l3745:	
;pic_adc.h: 88: {
;pic_adc.h: 89: ADCON0=0x28;
	movlw	(028h)
	movwf	(31)	;volatile
	line	90
	
l3747:	
;pic_adc.h: 90: ADON=1;
	bsf	(248/8),(248)&7
	line	91
;pic_adc.h: 91: while(adc_del--);
	goto	l3749
	
l755:	
	goto	l3749
	
l754:	
	
l3749:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l3749
u3820:
	goto	l3751
	
l756:	
	line	92
	
l3751:	
;pic_adc.h: 92: ADCON0 =0x2d;
	movlw	(02Dh)
	movwf	(31)	;volatile
	line	93
;pic_adc.h: 93: while(ADCON0!=0x29);
	goto	l3753
	
l758:	
	goto	l3753
	
l757:	
	
l3753:	
	movf	(31),w	;volatile
	xorlw	029h
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l3753
u3830:
	goto	l3755
	
l759:	
	line	94
	
l3755:	
;pic_adc.h: 94: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	95
	
l3757:	
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
	
l3759:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l3745
u3840:
	goto	l3813
	
l753:	
	line	97
;pic_adc.h: 96: }
;pic_adc.h: 97: }
	goto	l3813
	line	98
	
l751:	
	
l3761:	
;pic_adc.h: 98: else if(val==6)
	movf	(Adc8_Cha@val),w
	xorlw	06h
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l3787
u3850:
	line	100
	
l3763:	
;pic_adc.h: 99: {
;pic_adc.h: 100: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	101
	
l3765:	
;pic_adc.h: 101: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3767:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l3771
u3860:
	goto	l3813
	
l3769:	
	goto	l3813
	line	102
	
l762:	
	line	103
	
l3771:	
;pic_adc.h: 102: {
;pic_adc.h: 103: ADCON0=0x30;
	movlw	(030h)
	movwf	(31)	;volatile
	line	104
	
l3773:	
;pic_adc.h: 104: ADON=1;
	bsf	(248/8),(248)&7
	line	105
;pic_adc.h: 105: while(adc_del--);
	goto	l3775
	
l765:	
	goto	l3775
	
l764:	
	
l3775:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l3775
u3870:
	goto	l3777
	
l766:	
	line	106
	
l3777:	
;pic_adc.h: 106: ADCON0 =0x35;
	movlw	(035h)
	movwf	(31)	;volatile
	line	107
;pic_adc.h: 107: while(ADCON0!=0x31);
	goto	l3779
	
l768:	
	goto	l3779
	
l767:	
	
l3779:	
	movf	(31),w	;volatile
	xorlw	031h
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l3779
u3880:
	goto	l3781
	
l769:	
	line	108
	
l3781:	
;pic_adc.h: 108: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	109
	
l3783:	
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
	
l3785:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l3771
u3890:
	goto	l3813
	
l763:	
	line	111
;pic_adc.h: 110: }
;pic_adc.h: 111: }
	goto	l3813
	line	112
	
l761:	
	
l3787:	
;pic_adc.h: 112: else if(val==7)
	movf	(Adc8_Cha@val),w
	xorlw	07h
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l3813
u3900:
	line	114
	
l3789:	
;pic_adc.h: 113: {
;pic_adc.h: 114: adc_temp0=0;
	clrf	(_adc_temp0)
	clrf	(_adc_temp0+1)
	line	115
	
l3791:	
;pic_adc.h: 115: for(adc_j=0;adc_j<10;adc_j++)
	clrf	(_adc_j)
	
l3793:	
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l3797
u3910:
	goto	l3813
	
l3795:	
	goto	l3813
	line	116
	
l772:	
	line	117
	
l3797:	
;pic_adc.h: 116: {
;pic_adc.h: 117: ADCON0=0x38;
	movlw	(038h)
	movwf	(31)	;volatile
	line	118
	
l3799:	
;pic_adc.h: 118: ADON=1;
	bsf	(248/8),(248)&7
	line	119
;pic_adc.h: 119: while(adc_del--);
	goto	l3801
	
l775:	
	goto	l3801
	
l774:	
	
l3801:	
	movlw	low(01h)
	subwf	(_adc_del),f
	movf	((_adc_del)),w
	xorlw	0FFh
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l3801
u3920:
	goto	l3803
	
l776:	
	line	120
	
l3803:	
;pic_adc.h: 120: ADCON0 =0x3d;
	movlw	(03Dh)
	movwf	(31)	;volatile
	line	121
;pic_adc.h: 121: while(ADCON0!=0x39);
	goto	l3805
	
l778:	
	goto	l3805
	
l777:	
	
l3805:	
	movf	(31),w	;volatile
	xorlw	039h
	skipz
	goto	u3931
	goto	u3930
u3931:
	goto	l3805
u3930:
	goto	l3807
	
l779:	
	line	122
	
l3807:	
;pic_adc.h: 122: adc_temp=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(_adc_temp+1)
	line	123
	
l3809:	
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
	
l3811:	
	movlw	(01h)
	movwf	(??_Adc8_Cha+0)+0
	movf	(??_Adc8_Cha+0)+0,w
	addwf	(_adc_j),f
	movlw	(0Ah)
	subwf	(_adc_j),w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l3797
u3940:
	goto	l3813
	
l773:	
	goto	l3813
	line	125
	
l771:	
	goto	l3813
	line	126
	
l770:	
	goto	l3813
	
l760:	
	goto	l3813
	
l750:	
	goto	l3813
	
l740:	
	goto	l3813
	
l730:	
	goto	l3813
	
l720:	
	goto	l3813
	
l710:	
	
l3813:	
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
	
l3815:	
;pic_adc.h: 127: return adc_val;
	movf	(_adc_val),w
	movwf	(??_Adc8_Cha+0)+0
	clrf	(??_Adc8_Cha+0)+0+1
	movf	0+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha)
	movf	1+(??_Adc8_Cha+0)+0,w
	movwf	(?_Adc8_Cha+1)
	goto	l780
	
l3817:	
	line	128
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_Adc8_Cha
	__end_of_Adc8_Cha:
;; =============== function _Adc8_Cha ends ============

	signat	_Adc8_Cha,4218
	global	___lwdiv
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

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
;;		_Adc8_Cha
;;		_Adc10_Cha
;; This function uses a non-reentrant model
;;
psect	text129
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3575:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3577:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3481
	goto	u3480
u3481:
	goto	l3597
u3480:
	line	11
	
l3579:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3585
	
l1567:	
	line	13
	
l3581:	
	movlw	01h
	
u3495:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3495
	line	14
	
l3583:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3585
	line	15
	
l1566:	
	line	12
	
l3585:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l3581
u3500:
	goto	l3587
	
l1568:	
	goto	l3587
	line	16
	
l1569:	
	line	17
	
l3587:	
	movlw	01h
	
u3515:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3515
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3525
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3525:
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3593
u3520:
	line	19
	
l3589:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3591:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3593
	line	21
	
l1570:	
	line	22
	
l3593:	
	movlw	01h
	
u3535:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3535
	line	23
	
l3595:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l3587
u3540:
	goto	l3597
	
l1571:	
	goto	l3597
	line	24
	
l1565:	
	line	25
	
l3597:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1572
	
l3599:	
	line	26
	
l1572:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _delay *****************
;; Defined at:
;;		line 4 in file "D:\pic controller,PIC16F877A\a2d and pwm control\mainm.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    5[COMMON] int 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text130
	file	"D:\pic controller,PIC16F877A\a2d and pwm control\mainm.c"
	line	4
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	5
	
l3561:	
;mainm.c: 5: for(int i=0;i<a;i++)
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l865
	line	6
	
l866:	
	line	7
	
l3563:	
;mainm.c: 6: {
;mainm.c: 7: for(int j=0;j<144;j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l3565:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(090h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3455
	movlw	low(090h)
	subwf	(delay@j),w
u3455:

	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3569
u3450:
	goto	l3573
	
l3567:	
	goto	l3573
	
l867:	
	
l3569:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l3571:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(090h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3465
	movlw	low(090h)
	subwf	(delay@j),w
u3465:

	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3569
u3460:
	goto	l3573
	
l868:	
	line	5
	
l3573:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l865:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@a+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u3475
	movf	(delay@a),w
	subwf	(delay@i),w
u3475:

	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l3563
u3470:
	goto	l870
	
l869:	
	line	9
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
