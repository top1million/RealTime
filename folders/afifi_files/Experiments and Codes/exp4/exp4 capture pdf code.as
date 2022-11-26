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
# 14 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_intToStr
	FNCALL	_main,_lcd_puts
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_intToStr,___lwmod
	FNCALL	_intToStr,___lwdiv
	FNCALL	_intToStr,_reverse
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	exp@coeff
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
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xfe
	retlw	0x75
	retlw	0x3e

	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0xc5
	retlw	0xae
	retlw	0x3a

	retlw	0x79
	retlw	0x21
	retlw	0x39

	retlw	0x94
	retlw	0x80
	retlw	0x37

	retlw	0x93
	retlw	0xa7
	retlw	0x35

	retlw	0x56
	retlw	0x15
	retlw	0x34

	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xf0
	retlw	0xff
	retlw	0xbe

	retlw	0xe2
	retlw	0xa9
	retlw	0x3e

	retlw	0x83
	retlw	0x76
	retlw	0xbe

	retlw	0xae
	retlw	0x2b
	retlw	0x3e

	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0xd2
	retlw	0x13
	retlw	0x3d

	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global	exp@coeff
	global	log@coeff
	global	_rising_edge_time
	global	_errno
	global	_str
	global	_CCPR1
_CCPR1	set	21
	global	_PORTD
_PORTD	set	8
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_CARRY
_CARRY	set	24
	global	_CCP1IF
_CCP1IF	set	98
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_T1SYNC
_T1SYNC	set	130
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_ADCON1
_ADCON1	set	159
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_CCP1IE
_CCP1IE	set	1122
	global	_TMR1IE
_TMR1IE	set	1120
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
	file	"exp4 capture pdf code.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_errno:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_rising_edge_time:
       ds      2

_str:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	ds	4
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	?_reverse
?_reverse:	; 0 bytes @ 0x4
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	reverse@len
reverse@len:	; 2 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x5
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x5
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x6
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x7
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x0
	global	??_reverse
??_reverse:	; 0 bytes @ 0x0
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x0
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x0
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x0
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	lcd_init@_dcnt_2098
lcd_init@_dcnt_2098:	; 1 bytes @ 0x2
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	reverse@temp
reverse@temp:	; 2 bytes @ 0x3
	ds	2
	global	reverse@i
reverse@i:	; 2 bytes @ 0x5
	ds	2
	global	reverse@j
reverse@j:	; 2 bytes @ 0x7
	ds	2
	global	reverse@str
reverse@str:	; 1 bytes @ 0x9
	ds	1
	global	?_intToStr
?_intToStr:	; 2 bytes @ 0xA
	global	intToStr@x
intToStr@x:	; 2 bytes @ 0xA
	ds	2
	global	intToStr@str
intToStr@str:	; 1 bytes @ 0xC
	ds	1
	global	intToStr@d
intToStr@d:	; 2 bytes @ 0xD
	ds	2
	global	??_intToStr
??_intToStr:	; 0 bytes @ 0xF
	ds	2
	global	intToStr@i
intToStr@i:	; 2 bytes @ 0x11
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x13
	ds	1
;;Data sizes: Strings 0, constant 57, data 0, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      10
;; BANK0           80     20      32
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_intToStr	unsigned int  size(1) Largest target is 0
;;
;; intToStr@str	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK0[10]), 
;;
;; reverse@str	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK0[10]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 10
;;		 -> str(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DelayMs
;;   _main->_lcd_puts
;;   _lcd_puts->_lcd_write
;;   _intToStr->___lwmod
;;   _intToStr->___lwdiv
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_intToStr
;;   _intToStr->_reverse
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
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
;; (0) _main                                                 1     1      0    1931
;;                                             19 BANK0      1     1      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                           _intToStr
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     2      0     161
;;                                              7 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _intToStr                                             9     4      5    1306
;;                                             10 BANK0      9     4      5
;;                            ___lwmod
;;                            ___lwdiv
;;                            _reverse
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     164
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     232
;;                                              0 BANK0      3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     232
;;                                              4 COMMON     4     0      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     241
;;                                              4 COMMON     4     0      4
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _reverse                                             12    10      2     387
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      96
;;                                              4 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      68
;;                                              4 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DelayMs
;;   _lcd_init
;;     _DelayMs
;;     _lcd_write
;;   _lcd_clear
;;     _lcd_write
;;     _DelayMs
;;   _intToStr
;;     ___lwmod
;;     ___lwdiv
;;     _reverse
;;   _lcd_puts
;;     _lcd_write
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      2A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     14      20       5       40.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;;		_lcd_init
;;		_lcd_clear
;;		_intToStr
;;		_lcd_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	20
	
l5633:	
;capture.c: 20: ADCON1 = 7;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	21
	
l5635:	
;capture.c: 21: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	22
	
l5637:	
;capture.c: 22: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	23
	
l5639:	
;capture.c: 23: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	24
	
l5641:	
;capture.c: 24: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	26
	
l5643:	
;capture.c: 26: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	27
	
l5645:	
;capture.c: 27: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	28
	
l5647:	
;capture.c: 28: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	29
	
l5649:	
;capture.c: 29: T1CKPS0 = 0;
	bcf	(132/8),(132)&7
	line	30
	
l5651:	
;capture.c: 30: T1CKPS1 = 0;
	bcf	(133/8),(133)&7
	line	31
	
l5653:	
;capture.c: 31: T1SYNC = 0;
	bcf	(130/8),(130)&7
	line	32
	
l5655:	
;capture.c: 32: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	33
	
l5657:	
;capture.c: 33: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	34
	
l5659:	
;capture.c: 34: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7
	line	35
	
l5661:	
;capture.c: 35: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7
	line	37
	
l5663:	
;capture.c: 37: GIE = 1;
	bsf	(95/8),(95)&7
	line	38
	
l5665:	
;capture.c: 38: PEIE = 1;
	bsf	(94/8),(94)&7
	line	40
	
l5667:	
;capture.c: 40: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	41
	
l5669:	
;capture.c: 41: lcd_init();
	fcall	_lcd_init
	line	42
	
l5671:	
;capture.c: 42: lcd_clear();
	fcall	_lcd_clear
	goto	l5673
	line	45
;capture.c: 45: while(1) {
	
l699:	
	line	46
	
l5673:	
;capture.c: 46: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	47
	
l5675:	
;capture.c: 47: lcd_clear();
	fcall	_lcd_clear
	line	48
	
l5677:	
;capture.c: 48: intToStr((unsigned int)rising_edge_time, str, 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rising_edge_time+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(_rising_edge_time),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	movlw	(_str)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(0+?_intToStr+02h)
	movlw	low(05h)
	movwf	0+(?_intToStr)+03h
	movlw	high(05h)
	movwf	(0+(?_intToStr)+03h)+1
	fcall	_intToStr
	line	49
	
l5679:	
;capture.c: 49: lcd_puts(str);
	movlw	(_str)&0ffh
	fcall	_lcd_puts
	goto	l5673
	line	50
	
l700:	
	line	45
	goto	l5673
	
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
	global	_lcd_puts
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> str(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    0[BANK0 ] PTR const unsigned char 
;;		 -> str(10), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text424
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 5
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_puts@s)
	line	38
	
l5625:	
;lcd.c: 38: RE0 = 1;
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l5631
	
l1414:	
	line	40
	
l5627:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_write
	
l5629:	
	movlw	(01h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_puts@s),f
	goto	l5631
	
l1413:	
	line	39
	
l5631:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l5627
u3140:
	goto	l1416
	
l1415:	
	line	41
	
l1416:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_intToStr
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:

;; *************** function _intToStr *****************
;; Defined at:
;;		line 24 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
;; Parameters:    Size  Location     Type
;;  x               2   10[BANK0 ] unsigned int 
;;  str             1   12[BANK0 ] PTR unsigned char 
;;		 -> str(10), 
;;  d               2   13[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   17[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   10[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;;		___lwdiv
;;		_reverse
;; This function is called by:
;;		_main
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text425
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
	line	24
	global	__size_of_intToStr
	__size_of_intToStr	equ	__end_of_intToStr-_intToStr
	
_intToStr:	
	opt	stack 5
; Regs used in _intToStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l5601:	
;string.c: 25: unsigned int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@i)
	clrf	(intToStr@i+1)
	line	26
;string.c: 26: while (x)
	goto	l5609
	
l2128:	
	line	28
	
l5603:	
;string.c: 27: {
;string.c: 28: str[i++] = (x%10) + '0';
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(intToStr@x+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(intToStr@x),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_intToStr+0)+0
	movf	(intToStr@i),w
	addwf	(intToStr@str),w
	movwf	(??_intToStr+1)+0
	movf	0+(??_intToStr+1)+0,w
	movwf	fsr0
	movf	(??_intToStr+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5605:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	line	29
	
l5607:	
;string.c: 29: x = x/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(intToStr@x+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(intToStr@x),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@x+1)
	addwf	(intToStr@x+1)
	movf	(0+(?___lwdiv)),w
	clrf	(intToStr@x)
	addwf	(intToStr@x)

	goto	l5609
	line	30
	
l2127:	
	line	26
	
l5609:	
	movf	((intToStr@x+1)),w
	iorwf	((intToStr@x)),w
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l5603
u3120:
	goto	l5615
	
l2129:	
	line	34
;string.c: 30: }
;string.c: 34: while (i < d)
	goto	l5615
	
l2131:	
	line	35
	
l5611:	
;string.c: 35: str[i++] = '0';
	movlw	(030h)
	movwf	(??_intToStr+0)+0
	movf	(intToStr@i),w
	addwf	(intToStr@str),w
	movwf	(??_intToStr+1)+0
	movf	0+(??_intToStr+1)+0,w
	movwf	fsr0
	movf	(??_intToStr+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5613:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	goto	l5615
	
l2130:	
	line	34
	
l5615:	
	movf	(intToStr@d+1),w
	subwf	(intToStr@i+1),w
	skipz
	goto	u3135
	movf	(intToStr@d),w
	subwf	(intToStr@i),w
u3135:
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l5611
u3130:
	goto	l5617
	
l2132:	
	line	37
	
l5617:	
;string.c: 37: reverse(str, i);
	movf	(intToStr@i+1),w
	clrf	(?_reverse+1)
	addwf	(?_reverse+1)
	movf	(intToStr@i),w
	clrf	(?_reverse)
	addwf	(?_reverse)

	movf	(intToStr@str),w
	fcall	_reverse
	line	38
	
l5619:	
;string.c: 38: str[i] = '\0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(intToStr@i),w
	addwf	(intToStr@str),w
	movwf	(??_intToStr+0)+0
	movf	0+(??_intToStr+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	39
	
l5621:	
;string.c: 39: return i;
	movf	(intToStr@i+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(intToStr@i),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	goto	l2133
	
l5623:	
	line	40
	
l2133:	
	return
	opt stack 0
GLOBAL	__end_of_intToStr
	__end_of_intToStr:
;; =============== function _intToStr ends ============

	signat	_intToStr,12410
	global	_lcd_clear
psect	text426,local,class=CODE,delta=2
global __ptext426
__ptext426:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
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
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text426
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l5597:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l5599:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1410:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text427,local,class=CODE,delta=2
global __ptext427
__ptext427:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    2[BANK0 ] unsigned char 
;;  _dcnt           1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayMs
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text427
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l5565:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l5567:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l5569:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l5571:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5573:	
	bcf	(73/8),(73)&7
	line	62
	
l5575:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l5577:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l5579:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l5581
	
l1429:	
	goto	l5581
	
l1428:	
	
l5581:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l5581
u3100:
	
l1430:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l5583:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l5585:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l5587:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5589:	
	bcf	(73/8),(73)&7
	line	69
	
l5591:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2098)
	goto	l5593
	
l1432:	
	goto	l5593
	
l1431:	
	
l5593:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2098),f
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l5593
u3110:
	goto	l5595
	
l1433:	
	line	70
	
l5595:	
;lcd.c: 70: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	71
;lcd.c: 71: lcd_write(0x08);
	movlw	(08h)
	fcall	_lcd_write
	line	72
;lcd.c: 72: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	73
;lcd.c: 73: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	74
	
l1434:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lwmod
psect	text428,local,class=CODE,delta=2
global __ptext428
__ptext428:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] unsigned int 
;;  dividend        2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text428
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5543:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l5561
u3040:
	line	9
	
l5545:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l5551
	
l2855:	
	line	11
	
l5547:	
	movlw	01h
	
u3055:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3055
	line	12
	
l5549:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l5551
	line	13
	
l2854:	
	line	10
	
l5551:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l5547
u3060:
	goto	l5553
	
l2856:	
	goto	l5553
	line	14
	
l2857:	
	line	15
	
l5553:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3075
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3075:
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l5557
u3070:
	line	16
	
l5555:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l5557
	
l2858:	
	line	17
	
l5557:	
	movlw	01h
	
u3085:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3085
	line	18
	
l5559:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l5553
u3090:
	goto	l5561
	
l2859:	
	goto	l5561
	line	19
	
l2853:	
	line	20
	
l5561:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2860
	
l5563:	
	line	21
	
l2860:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text429,local,class=CODE,delta=2
global __ptext429
__ptext429:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] unsigned int 
;;  dividend        2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] unsigned int 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text429
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5517:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5519:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2971
	goto	u2970
u2971:
	goto	l5539
u2970:
	line	11
	
l5521:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5527
	
l2845:	
	line	13
	
l5523:	
	movlw	01h
	
u2985:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2985
	line	14
	
l5525:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5527
	line	15
	
l2844:	
	line	12
	
l5527:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l5523
u2990:
	goto	l5529
	
l2846:	
	goto	l5529
	line	16
	
l2847:	
	line	17
	
l5529:	
	movlw	01h
	
u3005:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3005
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3015
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3015:
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l5535
u3010:
	line	19
	
l5531:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5533:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5535
	line	21
	
l2848:	
	line	22
	
l5535:	
	movlw	01h
	
u3025:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3025
	line	23
	
l5537:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l5529
u3030:
	goto	l5539
	
l2849:	
	goto	l5539
	line	24
	
l2843:	
	line	25
	
l5539:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2850
	
l5541:	
	line	26
	
l2850:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_reverse
psect	text430,local,class=CODE,delta=2
global __ptext430
__ptext430:

;; *************** function _reverse *****************
;; Defined at:
;;		line 9 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> str(10), 
;;  len             2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  str             1    9[BANK0 ] PTR unsigned char 
;;		 -> str(10), 
;;  j               2    7[BANK0 ] int 
;;  i               2    5[BANK0 ] int 
;;  temp            2    3[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         2      10       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text430
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
	line	9
	global	__size_of_reverse
	__size_of_reverse	equ	__end_of_reverse-_reverse
	
_reverse:	
	opt	stack 5
; Regs used in _reverse: [wreg-fsr0h+status,2+status,0]
;reverse@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(reverse@str)
	line	10
	
l5491:	
;string.c: 10: int i=0, j=len-1, temp;
	clrf	(reverse@i)
	clrf	(reverse@i+1)
	
l5493:	
	movf	(reverse@len),w
	addlw	low(-1)
	movwf	(reverse@j)
	movf	(reverse@len+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(reverse@j)
	line	11
;string.c: 11: while (i<j)
	goto	l5501
	
l2122:	
	line	13
	
l5495:	
;string.c: 12: {
;string.c: 13: temp = str[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(reverse@i),w
	addwf	(reverse@str),w
	movwf	(??_reverse+0)+0
	movf	0+(??_reverse+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_reverse+1)+0
	clrf	(??_reverse+1)+0+1
	movf	0+(??_reverse+1)+0,w
	movwf	(reverse@temp)
	movf	1+(??_reverse+1)+0,w
	movwf	(reverse@temp+1)
	line	14
;string.c: 14: str[i] = str[j];
	movf	(reverse@j),w
	addwf	(reverse@str),w
	movwf	(??_reverse+0)+0
	movf	0+(??_reverse+0)+0,w
	movwf	fsr0
	movf	indf,w
	movwf	(??_reverse+1)+0
	movf	(reverse@i),w
	addwf	(reverse@str),w
	movwf	(??_reverse+2)+0
	movf	0+(??_reverse+2)+0,w
	movwf	fsr0
	movf	(??_reverse+1)+0,w
	movwf	indf
	line	15
;string.c: 15: str[j] = temp;
	movf	(reverse@temp),w
	movwf	(??_reverse+0)+0
	movf	(reverse@j),w
	addwf	(reverse@str),w
	movwf	(??_reverse+1)+0
	movf	0+(??_reverse+1)+0,w
	movwf	fsr0
	movf	(??_reverse+0)+0,w
	movwf	indf
	line	16
	
l5497:	
;string.c: 16: i++; j--;
	movlw	low(01h)
	addwf	(reverse@i),f
	skipnc
	incf	(reverse@i+1),f
	movlw	high(01h)
	addwf	(reverse@i+1),f
	
l5499:	
	movlw	low(-1)
	addwf	(reverse@j),f
	skipnc
	incf	(reverse@j+1),f
	movlw	high(-1)
	addwf	(reverse@j+1),f
	goto	l5501
	line	17
	
l2121:	
	line	11
	
l5501:	
	movf	(reverse@i+1),w
	xorlw	80h
	movwf	(??_reverse+0)+0
	movf	(reverse@j+1),w
	xorlw	80h
	subwf	(??_reverse+0)+0,w
	skipz
	goto	u2955
	movf	(reverse@j),w
	subwf	(reverse@i),w
u2955:

	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l5495
u2950:
	goto	l2124
	
l2123:	
	line	18
	
l2124:	
	return
	opt stack 0
GLOBAL	__end_of_reverse
	__end_of_reverse:
;; =============== function _reverse ends ============

	signat	_reverse,8312
	global	_lcd_write
psect	text431,local,class=CODE,delta=2
global __ptext431
__ptext431:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMMON] unsigned char 
;;  _dcnt           1    5[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_init
;;		_lcd_goto
;; This function uses a non-reentrant model
;;
psect	text431
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l5473:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l5475:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5477:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2935:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2935
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l5479:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5481:	
	bcf	(73/8),(73)&7
	line	28
	
l5483:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l5485
	
l1405:	
	goto	l5485
	
l1404:	
	
l5485:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l5485
u2940:
	goto	l1407
	
l1406:	
	line	29
	
l1407:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_DelayMs
psect	text432,local,class=CODE,delta=2
global __ptext432
__ptext432:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    5[COMMON] unsigned char 
;;  _dcnt           1    7[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text432
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 5
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
l710:	
	line	21
	
l5225:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l711:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l5227
	
l713:	
	goto	l5227
	
l712:	
	
l5227:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l5227
u2660:
	goto	l5229
	
l714:	
	line	24
	
l5229:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l711
u2670:
	goto	l5231
	
l715:	
	line	25
	
l5231:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l710
u2680:
	goto	l717
	
l716:	
	line	27
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_ISR
psect	text433,local,class=CODE,delta=2
global __ptext433
__ptext433:

;; *************** function _ISR *****************
;; Defined at:
;;		line 56 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text433
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	line	56
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text433
	line	59
	
i1l5233:	
;capture.c: 59: if ( CCP1IF ) {
	btfss	(98/8),(98)&7
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l5241
u269_20:
	line	61
	
i1l5235:	
;capture.c: 61: rising_edge_time = 0;
	clrf	(_rising_edge_time)
	clrf	(_rising_edge_time+1)
	line	62
	
i1l5237:	
;capture.c: 62: rising_edge_time = (int) CCPR1;
	movf	(21+1),w	;volatile
	clrf	(_rising_edge_time+1)	;volatile
	addwf	(_rising_edge_time+1)	;volatile
	movf	(21),w	;volatile
	clrf	(_rising_edge_time)	;volatile
	addwf	(_rising_edge_time)	;volatile

	line	63
	
i1l5239:	
;capture.c: 63: CCP1IF = 0;
	bcf	(98/8),(98)&7
	goto	i1l5241
	line	64
	
i1l705:	
	line	67
	
i1l5241:	
;capture.c: 64: }
;capture.c: 67: if ( TMR1IF ) {
	btfss	(96/8),(96)&7
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l707
u270_20:
	line	69
	
i1l5243:	
;capture.c: 69: TMR1H = 0x00; TMR1L = 0x00;
	clrf	(15)	;volatile
	clrf	(14)	;volatile
	line	71
	
i1l5245:	
;capture.c: 71: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l707
	line	72
	
i1l706:	
	line	73
	
i1l707:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
