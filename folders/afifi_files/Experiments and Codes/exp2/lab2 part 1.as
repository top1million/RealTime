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
# 4 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_getkey
	FNCALL	_main,_startMotor
	FNCALL	_getkey,_DelayMs
	FNCALL	_getkey,___awdiv
	FNROOT	_main
	global	_col
	global	_pressed_key
	global	_row
	global	_Chkey
	global	_PORTB
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISE
_TRISE	set	137
	global	_nRBPU
_nRBPU	set	1039
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
	file	"lab2 part 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_col:
       ds      2

_pressed_key:
       ds      2

_row:
       ds      2

_Chkey:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_getkey
?_getkey:	; 0 bytes @ 0x0
	global	?_startMotor
?_startMotor:	; 0 bytes @ 0x0
	global	??_startMotor
??_startMotor:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_getkey
??_getkey:	; 0 bytes @ 0x9
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	getkey@flag
getkey@flag:	; 2 bytes @ 0x0
	ds	2
	global	getkey@colVar
getkey@colVar:	; 1 bytes @ 0x2
	ds	1
	global	getkey@rowVar
getkey@rowVar:	; 1 bytes @ 0x3
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 7, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      4      11
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_getkey
;;   _getkey->___awdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_getkey
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
;; (0) _main                                                 1     1      0     602
;;                                             12 COMMON     1     1      0
;;                            _DelayMs
;;                             _getkey
;;                         _startMotor
;; ---------------------------------------------------------------------------------
;; (1) _getkey                                               7     7      0     534
;;                                              9 COMMON     3     3      0
;;                                              0 BANK0      4     4      0
;;                            _DelayMs
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _startMotor                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DelayMs
;;   _getkey
;;     _DelayMs
;;     ___awdiv
;;   _startMotor
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
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      18       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      4       B       5       13.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayMs
;;		_getkey
;;		_startMotor
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l3775:	
;dcmtrl.c: 17: TRISC = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	18
;dcmtrl.c: 18: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	19
	
l3777:	
;dcmtrl.c: 19: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	20
;dcmtrl.c: 20: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	21
	
l3779:	
;dcmtrl.c: 21: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	22
	
l3781:	
;dcmtrl.c: 22: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	23
	
l3783:	
;dcmtrl.c: 23: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	34
	
l3785:	
;dcmtrl.c: 34: RC5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	goto	l3787
	line	45
;dcmtrl.c: 45: while(1)
	
l699:	
	line	47
	
l3787:	
;dcmtrl.c: 46: {
;dcmtrl.c: 47: getkey();
	fcall	_getkey
	line	48
	
l3789:	
;dcmtrl.c: 48: Chkey = (char) pressed_key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pressed_key),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Chkey)
	line	49
	
l3791:	
;dcmtrl.c: 49: Chkey += 48;
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_Chkey),f
	line	50
	
l3793:	
;dcmtrl.c: 50: startMotor();
	fcall	_startMotor
	goto	l3787
	line	51
	
l700:	
	line	45
	goto	l3787
	
l701:	
	line	52
	
l702:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_getkey
psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:

;; *************** function _getkey *****************
;; Defined at:
;;		line 61 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  flag            2    0[BANK0 ] int 
;;  rowVar          1    3[BANK0 ] unsigned char 
;;  colVar          1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text166
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
	line	61
	global	__size_of_getkey
	__size_of_getkey	equ	__end_of_getkey-_getkey
	
_getkey:	
	opt	stack 6
; Regs used in _getkey: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l3705:	
;dcmtrl.c: 62: char colVar, rowVar;
;dcmtrl.c: 63: int flag=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getkey@flag)
	clrf	(getkey@flag+1)
	line	64
	
l3707:	
;dcmtrl.c: 64: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l3709
	line	67
;dcmtrl.c: 67: do {
	
l711:	
	line	68
	
l3709:	
;dcmtrl.c: 68: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	69
	
l3711:	
;dcmtrl.c: 69: TRISB = 0xf0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	70
	
l3713:	
;dcmtrl.c: 70: } while ( (PORTB >> 4) != 0xf );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u2665:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u2665
	movf	0+(??_getkey+0)+0,w
	xorlw	0Fh
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l3709
u2670:
	goto	l3715
	
l712:	
	line	72
	
l3715:	
;dcmtrl.c: 72: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l3717
	line	75
;dcmtrl.c: 75: while (1)
	
l713:	
	line	77
	
l3717:	
;dcmtrl.c: 76: {
;dcmtrl.c: 77: if ( flag == 1 ){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getkey@flag),w
	iorwf	(getkey@flag+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l3721
u2680:
	goto	l3755
	line	78
	
l3719:	
;dcmtrl.c: 78: break;
	goto	l3755
	line	79
	
l714:	
	line	82
	
l3721:	
;dcmtrl.c: 79: }
;dcmtrl.c: 82: for ( col = 0; col < 4; col++ ) {
	clrf	(_col)
	clrf	(_col+1)
	
l3723:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2695
	movlw	low(04h)
	subwf	(_col),w
u2695:

	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l3727
u2690:
	goto	l3717
	
l3725:	
	goto	l3717
	
l716:	
	line	83
	
l3727:	
;dcmtrl.c: 83: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	89
	
l3729:	
;dcmtrl.c: 89: if ( col == 0 ){
	movf	((_col+1)),w
	iorwf	((_col)),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l3733
u2700:
	line	90
	
l3731:	
;dcmtrl.c: 90: colVar = 1;
	clrf	(getkey@colVar)
	bsf	status,0
	rlf	(getkey@colVar),f
	line	91
;dcmtrl.c: 91: }
	goto	l3743
	line	92
	
l718:	
	
l3733:	
;dcmtrl.c: 92: else if ( col == 1 ){
	movlw	01h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l3737
u2710:
	line	93
	
l3735:	
;dcmtrl.c: 93: colVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	94
;dcmtrl.c: 94: }
	goto	l3743
	line	95
	
l720:	
	
l3737:	
;dcmtrl.c: 95: else if ( col == 2 ){
	movlw	02h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l3741
u2720:
	line	96
	
l3739:	
;dcmtrl.c: 96: colVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	97
;dcmtrl.c: 97: }
	goto	l3743
	line	98
	
l722:	
	line	99
	
l3741:	
;dcmtrl.c: 98: else{
;dcmtrl.c: 99: colVar = 8;
	movlw	(08h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	goto	l3743
	line	100
	
l723:	
	goto	l3743
	
l721:	
	goto	l3743
	
l719:	
	line	103
	
l3743:	
;dcmtrl.c: 100: }
;dcmtrl.c: 103: TRISB = colVar ^ 0xff;
	comf	(getkey@colVar),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	106
	
l3745:	
;dcmtrl.c: 106: row = PORTB >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u2735:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u2735
	movf	0+(??_getkey+0)+0,w
	movwf	(??_getkey+1)+0
	clrf	(??_getkey+1)+0+1
	movf	0+(??_getkey+1)+0,w
	movwf	(_row)
	movf	1+(??_getkey+1)+0,w
	movwf	(_row+1)
	line	109
	
l3747:	
;dcmtrl.c: 109: if ( row != 0xf ) {
	movlw	0Fh
	xorwf	(_row),w
	iorwf	(_row+1),w
	skipnz
	goto	u2741
	goto	u2740
u2741:
	goto	l3751
u2740:
	line	110
	
l3749:	
;dcmtrl.c: 110: flag = 1;
	movlw	low(01h)
	movwf	(getkey@flag)
	movlw	high(01h)
	movwf	((getkey@flag))+1
	line	111
;dcmtrl.c: 111: break;
	goto	l3717
	line	112
	
l724:	
	line	82
	
l3751:	
	movlw	low(01h)
	addwf	(_col),f
	skipnc
	incf	(_col+1),f
	movlw	high(01h)
	addwf	(_col+1),f
	
l3753:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2755
	movlw	low(04h)
	subwf	(_col),w
u2755:

	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l3727
u2750:
	goto	l3717
	
l717:	
	goto	l3717
	line	114
	
l725:	
	line	75
	goto	l3717
	
l715:	
	line	118
	
l3755:	
;dcmtrl.c: 112: }
;dcmtrl.c: 113: }
;dcmtrl.c: 114: }
;dcmtrl.c: 118: rowVar = row ^ 0xf;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_row),w
	xorlw	0Fh
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@rowVar)
	line	120
	
l3757:	
;dcmtrl.c: 120: if ( (rowVar / 8) == 1 ){
	movlw	low(08h)
	movwf	(?___awdiv)
	movlw	high(08h)
	movwf	((?___awdiv))+1
	movf	(getkey@rowVar),w
	movwf	(??_getkey+0)+0
	clrf	(??_getkey+0)+0+1
	movf	0+(??_getkey+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_getkey+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movlw	01h
	xorwf	(0+(?___awdiv)),w
	iorwf	(1+(?___awdiv)),w
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l3761
u2760:
	line	121
	
l3759:	
;dcmtrl.c: 121: rowVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	122
;dcmtrl.c: 122: }
	goto	l3773
	line	123
	
l726:	
	
l3761:	
;dcmtrl.c: 123: else if ( (rowVar / 4) == 1 ){
	movlw	low(04h)
	movwf	(?___awdiv)
	movlw	high(04h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	movwf	(??_getkey+0)+0
	clrf	(??_getkey+0)+0+1
	movf	0+(??_getkey+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_getkey+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movlw	01h
	xorwf	(0+(?___awdiv)),w
	iorwf	(1+(?___awdiv)),w
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l3765
u2770:
	line	124
	
l3763:	
;dcmtrl.c: 124: rowVar = 3;
	movlw	(03h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	125
;dcmtrl.c: 125: }
	goto	l3773
	line	126
	
l728:	
	
l3765:	
;dcmtrl.c: 126: else if ( (rowVar / 2) == 1 ){
	movlw	low(02h)
	movwf	(?___awdiv)
	movlw	high(02h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	movwf	(??_getkey+0)+0
	clrf	(??_getkey+0)+0+1
	movf	0+(??_getkey+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_getkey+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movlw	01h
	xorwf	(0+(?___awdiv)),w
	iorwf	(1+(?___awdiv)),w
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l3769
u2780:
	line	127
	
l3767:	
;dcmtrl.c: 127: rowVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	128
;dcmtrl.c: 128: }
	goto	l3773
	line	129
	
l730:	
	
l3769:	
;dcmtrl.c: 129: else if ( rowVar == 1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	xorlw	01h
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l732
u2790:
	line	130
	
l3771:	
;dcmtrl.c: 130: rowVar = 1;
	clrf	(getkey@rowVar)
	bsf	status,0
	rlf	(getkey@rowVar),f
	line	131
;dcmtrl.c: 131: }
	goto	l3773
	line	132
	
l732:	
	line	133
;dcmtrl.c: 132: else{
;dcmtrl.c: 133: rowVar = 0;
	clrf	(getkey@rowVar)
	goto	l3773
	line	134
	
l733:	
	goto	l3773
	
l731:	
	goto	l3773
	
l729:	
	goto	l3773
	
l727:	
	line	137
	
l3773:	
;dcmtrl.c: 134: }
;dcmtrl.c: 137: pressed_key = (col * 4) + rowVar;
	movf	(_col+1),w
	movwf	(??_getkey+0)+0+1
	movf	(_col),w
	movwf	(??_getkey+0)+0
	movlw	02h
	movwf	btemp+1
u2805:
	clrc
	rlf	(??_getkey+0)+0,f
	rlf	(??_getkey+0)+1,f
	decfsz	btemp+1,f
	goto	u2805
	movf	(getkey@rowVar),w
	addwf	0+(??_getkey+0)+0,w
	movwf	(_pressed_key)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_getkey+0)+0,w
	movwf	1+(_pressed_key)
	line	138
	
l734:	
	return
	opt stack 0
GLOBAL	__end_of_getkey
	__end_of_getkey:
;; =============== function _getkey ends ============

	signat	_getkey,88
	global	___awdiv
psect	text167,local,class=CODE,delta=2
global __ptext167
__ptext167:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
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
;;		_getkey
;; This function uses a non-reentrant model
;;
psect	text167
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3665:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2561
	goto	u2560
u2561:
	goto	l3669
u2560:
	line	11
	
l3667:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3669
	line	13
	
l2289:	
	line	14
	
l3669:	
	btfss	(___awdiv@dividend+1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l3675
u2570:
	line	15
	
l3671:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3673:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3675
	line	17
	
l2290:	
	line	18
	
l3675:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3677:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2581
	goto	u2580
u2581:
	goto	l3697
u2580:
	line	20
	
l3679:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3685
	
l2293:	
	line	22
	
l3681:	
	movlw	01h
	
u2595:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2595
	line	23
	
l3683:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3685
	line	24
	
l2292:	
	line	21
	
l3685:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l3681
u2600:
	goto	l3687
	
l2294:	
	goto	l3687
	line	25
	
l2295:	
	line	26
	
l3687:	
	movlw	01h
	
u2615:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2615
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2625
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l3693
u2620:
	line	28
	
l3689:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3691:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3693
	line	30
	
l2296:	
	line	31
	
l3693:	
	movlw	01h
	
u2635:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2635
	line	32
	
l3695:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l3687
u2640:
	goto	l3697
	
l2297:	
	goto	l3697
	line	33
	
l2291:	
	line	34
	
l3697:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2650
	goto	l3701
u2650:
	line	35
	
l3699:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3701
	
l2298:	
	line	36
	
l3701:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2299
	
l3703:	
	line	37
	
l2299:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_startMotor
psect	text168,local,class=CODE,delta=2
global __ptext168
__ptext168:

;; *************** function _startMotor *****************
;; Defined at:
;;		line 141 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
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
psect	text168
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\dcmtrl.c"
	line	141
	global	__size_of_startMotor
	__size_of_startMotor	equ	__end_of_startMotor-_startMotor
	
_startMotor:	
	opt	stack 7
; Regs used in _startMotor: [wreg]
	line	142
	
l3617:	
;dcmtrl.c: 142: if(Chkey == '1')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Chkey),w
	xorlw	031h
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l737
u2520:
	line	144
	
l3619:	
;dcmtrl.c: 143: {
;dcmtrl.c: 144: RC7 = 1;
	bsf	(63/8),(63)&7
	line	145
;dcmtrl.c: 145: RC6 = 0;
	bcf	(62/8),(62)&7
	line	146
;dcmtrl.c: 146: }
	goto	l739
	line	147
	
l737:	
	line	149
;dcmtrl.c: 147: else
;dcmtrl.c: 148: {
;dcmtrl.c: 149: RC7 = 0;
	bcf	(63/8),(63)&7
	line	150
;dcmtrl.c: 150: RC6 = 1;
	bsf	(62/8),(62)&7
	goto	l739
	line	151
	
l738:	
	line	152
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_startMotor
	__end_of_startMotor:
;; =============== function _startMotor ends ============

	signat	_startMotor,88
	global	_DelayMs
psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;;  _dcnt           1    3[COMMON] unsigned char 
;;  i               1    2[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_getkey
;;		_DelaySec
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text169
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task1(DC motor)\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 6
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
l742:	
	line	21
	
l3609:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l743:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l3611
	
l745:	
	goto	l3611
	
l744:	
	
l3611:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l3611
u2490:
	goto	l3613
	
l746:	
	line	24
	
l3613:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l743
u2500:
	goto	l3615
	
l747:	
	line	25
	
l3615:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l742
u2510:
	goto	l749
	
l748:	
	line	27
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
