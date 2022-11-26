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
	global	_isFirstEdge
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	line	19

;initializer for _isFirstEdge
	retlw	01h
	retlw	0

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
	global	_period
	global	_errno
	global	_rising_edge_time_1
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
	global	_CCP1M0
_CCP1M0	set	184
	global	_CCP1M1
_CCP1M1	set	185
	global	_CCP1M2
_CCP1M2	set	186
	global	_CCP1M3
_CCP1M3	set	187
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
	file	"exp4 capture.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_errno:
       ds      2

_rising_edge_time_1:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	line	19
_isFirstEdge:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_period:
       ds      2

_str:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
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
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	?_reverse
?_reverse:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	reverse@len
reverse@len:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x1
	ds	1
	global	??_reverse
??_reverse:	; 0 bytes @ 0x2
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x3
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x4
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	reverse@temp
reverse@temp:	; 2 bytes @ 0x5
	ds	1
	global	lcd_init@_dcnt_2100
lcd_init@_dcnt_2100:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	reverse@i
reverse@i:	; 2 bytes @ 0x7
	ds	2
	global	reverse@j
reverse@j:	; 2 bytes @ 0x9
	ds	2
	global	reverse@str
reverse@str:	; 1 bytes @ 0xB
	ds	1
	global	?_intToStr
?_intToStr:	; 2 bytes @ 0xC
	global	intToStr@x
intToStr@x:	; 2 bytes @ 0xC
	ds	2
	global	intToStr@str
intToStr@str:	; 1 bytes @ 0xE
	ds	1
	global	intToStr@d
intToStr@d:	; 2 bytes @ 0xF
	ds	2
	global	??_intToStr
??_intToStr:	; 0 bytes @ 0x11
	ds	2
	global	intToStr@i
intToStr@i:	; 2 bytes @ 0x13
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x15
	ds	1
;;Data sizes: Strings 0, constant 57, data 2, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      12
;; BANK0           80     22      34
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
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_intToStr
;;   _lcd_puts->_lcd_write
;;   _intToStr->_reverse
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
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
;; (0) _main                                                 1     1      0    2024
;;                                             21 BANK0      1     1      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                           _intToStr
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     2      0     161
;;                                              3 BANK0      2     2      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _intToStr                                             9     4      5    1306
;;                                             12 BANK0      9     4      5
;;                            ___lwmod
;;                            ___lwdiv
;;                            _reverse
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     195
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     263
;;                                              4 BANK0      3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     232
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     241
;;                                              0 BANK0      8     4      4
;; ---------------------------------------------------------------------------------
;; (2) _reverse                                             12    10      2     387
;;                                              0 BANK0     12    10      2
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      96
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      99
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  6     6      0       0
;;                                              0 COMMON     6     6      0
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
;;DATA                 0      0      30      12        0.0%
;;ABS                  0      0      2E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     16      22       5       42.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
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
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	22
	
l5675:	
;capture.c: 22: ADCON1 = 7;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	23
	
l5677:	
;capture.c: 23: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	24
	
l5679:	
;capture.c: 24: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	25
	
l5681:	
;capture.c: 25: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	26
	
l5683:	
;capture.c: 26: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	28
	
l5685:	
;capture.c: 28: GIE = 1;
	bsf	(95/8),(95)&7
	line	29
	
l5687:	
;capture.c: 29: PEIE = 1;
	bsf	(94/8),(94)&7
	line	32
	
l5689:	
;capture.c: 32: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	33
	
l5691:	
;capture.c: 33: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	34
	
l5693:	
;capture.c: 34: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	35
	
l5695:	
;capture.c: 35: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	36
	
l5697:	
;capture.c: 36: T1CKPS0 = 0; T1CKPS1 = 0;
	bcf	(132/8),(132)&7
	
l5699:	
	bcf	(133/8),(133)&7
	line	37
	
l5701:	
;capture.c: 37: T1SYNC = 0;
	bcf	(130/8),(130)&7
	line	38
	
l5703:	
;capture.c: 38: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	39
	
l5705:	
;capture.c: 39: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	42
	
l5707:	
;capture.c: 42: CCP1M3 = 0; CCP1M2 = 1; CCP1M1 = 0; CCP1M0 = 1;
	bcf	(187/8),(187)&7
	
l5709:	
	bsf	(186/8),(186)&7
	
l5711:	
	bcf	(185/8),(185)&7
	
l5713:	
	bsf	(184/8),(184)&7
	line	43
	
l5715:	
;capture.c: 43: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7
	line	44
	
l5717:	
;capture.c: 44: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7
	line	47
	
l5719:	
;capture.c: 47: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	48
	
l5721:	
;capture.c: 48: lcd_init();
	fcall	_lcd_init
	line	49
	
l5723:	
;capture.c: 49: lcd_clear();
	fcall	_lcd_clear
	goto	l5725
	line	52
;capture.c: 52: while(1) {
	
l703:	
	line	53
	
l5725:	
;capture.c: 53: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	54
	
l5727:	
;capture.c: 54: lcd_clear();
	fcall	_lcd_clear
	line	55
	
l5729:	
;capture.c: 55: intToStr((unsigned int)period, str, 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_period+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(_period),w
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
	line	56
	
l5731:	
;capture.c: 56: lcd_puts(str);
	movlw	(_str)&0ffh
	fcall	_lcd_puts
	goto	l5725
	line	57
	
l704:	
	line	52
	goto	l5725
	
l705:	
	line	59
	
l706:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_puts
psect	text401,local,class=CODE,delta=2
global __ptext401
__ptext401:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> str(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[BANK0 ] PTR const unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text401
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
	
l5667:	
;lcd.c: 38: RE0 = 1;
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l5673
	
l1420:	
	line	40
	
l5669:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_lcd_write
	
l5671:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	addwf	(lcd_puts@s),f
	goto	l5673
	
l1419:	
	line	39
	
l5673:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l5669
u3190:
	goto	l1422
	
l1421:	
	line	41
	
l1422:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_intToStr
psect	text402,local,class=CODE,delta=2
global __ptext402
__ptext402:

;; *************** function _intToStr *****************
;; Defined at:
;;		line 24 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
;; Parameters:    Size  Location     Type
;;  x               2   12[BANK0 ] unsigned int 
;;  str             1   14[BANK0 ] PTR unsigned char 
;;		 -> str(10), 
;;  d               2   15[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   19[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] unsigned int 
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
psect	text402
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
	line	24
	global	__size_of_intToStr
	__size_of_intToStr	equ	__end_of_intToStr-_intToStr
	
_intToStr:	
	opt	stack 5
; Regs used in _intToStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l5643:	
;string.c: 25: unsigned int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@i)
	clrf	(intToStr@i+1)
	line	26
;string.c: 26: while (x)
	goto	l5651
	
l2134:	
	line	28
	
l5645:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_intToStr+0)+0
	movf	(intToStr@i),w
	addwf	(intToStr@str),w
	movwf	(??_intToStr+1)+0
	movf	0+(??_intToStr+1)+0,w
	movwf	fsr0
	movf	(??_intToStr+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5647:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	line	29
	
l5649:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(intToStr@x+1)
	addwf	(intToStr@x+1)
	movf	(0+(?___lwdiv)),w
	clrf	(intToStr@x)
	addwf	(intToStr@x)

	goto	l5651
	line	30
	
l2133:	
	line	26
	
l5651:	
	movf	((intToStr@x+1)),w
	iorwf	((intToStr@x)),w
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l5645
u3170:
	goto	l5657
	
l2135:	
	line	34
;string.c: 30: }
;string.c: 34: while (i < d)
	goto	l5657
	
l2137:	
	line	35
	
l5653:	
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
	
l5655:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	goto	l5657
	
l2136:	
	line	34
	
l5657:	
	movf	(intToStr@d+1),w
	subwf	(intToStr@i+1),w
	skipz
	goto	u3185
	movf	(intToStr@d),w
	subwf	(intToStr@i),w
u3185:
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l5653
u3180:
	goto	l5659
	
l2138:	
	line	37
	
l5659:	
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
	
l5661:	
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
	
l5663:	
;string.c: 39: return i;
	movf	(intToStr@i+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(intToStr@i),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	goto	l2139
	
l5665:	
	line	40
	
l2139:	
	return
	opt stack 0
GLOBAL	__end_of_intToStr
	__end_of_intToStr:
;; =============== function _intToStr ends ============

	signat	_intToStr,12410
	global	_lcd_clear
psect	text403,local,class=CODE,delta=2
global __ptext403
__ptext403:

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
psect	text403
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l5639:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l5641:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1416:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text404,local,class=CODE,delta=2
global __ptext404
__ptext404:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    6[BANK0 ] unsigned char 
;;  _dcnt           1    5[BANK0 ] unsigned char 
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
psect	text404
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l5607:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l5609:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l5611:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l5613:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5615:	
	bcf	(73/8),(73)&7
	line	62
	
l5617:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l5619:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l5621:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l5623
	
l1435:	
	goto	l5623
	
l1434:	
	
l5623:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l5623
u3150:
	
l1436:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l5625:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l5627:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l5629:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5631:	
	bcf	(73/8),(73)&7
	line	69
	
l5633:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2100)
	goto	l5635
	
l1438:	
	goto	l5635
	
l1437:	
	
l5635:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2100),f
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l5635
u3160:
	goto	l5637
	
l1439:	
	line	70
	
l5637:	
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
	
l1440:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___lwmod
psect	text405,local,class=CODE,delta=2
global __ptext405
__ptext405:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text405
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3091
	goto	u3090
u3091:
	goto	l5603
u3090:
	line	9
	
l5587:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l5593
	
l2861:	
	line	11
	
l5589:	
	movlw	01h
	
u3105:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3105
	line	12
	
l5591:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l5593
	line	13
	
l2860:	
	line	10
	
l5593:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l5589
u3110:
	goto	l5595
	
l2862:	
	goto	l5595
	line	14
	
l2863:	
	line	15
	
l5595:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3125
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3125:
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l5599
u3120:
	line	16
	
l5597:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l5599
	
l2864:	
	line	17
	
l5599:	
	movlw	01h
	
u3135:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3135
	line	18
	
l5601:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l5595
u3140:
	goto	l5603
	
l2865:	
	goto	l5603
	line	19
	
l2859:	
	line	20
	
l5603:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2866
	
l5605:	
	line	21
	
l2866:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text406,local,class=CODE,delta=2
global __ptext406
__ptext406:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text406
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5559:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5561:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3021
	goto	u3020
u3021:
	goto	l5581
u3020:
	line	11
	
l5563:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5569
	
l2851:	
	line	13
	
l5565:	
	movlw	01h
	
u3035:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3035
	line	14
	
l5567:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5569
	line	15
	
l2850:	
	line	12
	
l5569:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l5565
u3040:
	goto	l5571
	
l2852:	
	goto	l5571
	line	16
	
l2853:	
	line	17
	
l5571:	
	movlw	01h
	
u3055:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3055
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3065
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3065:
	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l5577
u3060:
	line	19
	
l5573:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5575:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5577
	line	21
	
l2854:	
	line	22
	
l5577:	
	movlw	01h
	
u3075:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3075
	line	23
	
l5579:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l5571
u3080:
	goto	l5581
	
l2855:	
	goto	l5581
	line	24
	
l2849:	
	line	25
	
l5581:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2856
	
l5583:	
	line	26
	
l2856:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_reverse
psect	text407,local,class=CODE,delta=2
global __ptext407
__ptext407:

;; *************** function _reverse *****************
;; Defined at:
;;		line 9 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\string.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> str(10), 
;;  len             2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  str             1   11[BANK0 ] PTR unsigned char 
;;		 -> str(10), 
;;  j               2    9[BANK0 ] int 
;;  i               2    7[BANK0 ] int 
;;  temp            2    5[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text407
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
	
l5533:	
;string.c: 10: int i=0, j=len-1, temp;
	clrf	(reverse@i)
	clrf	(reverse@i+1)
	
l5535:	
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
	goto	l5543
	
l2128:	
	line	13
	
l5537:	
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
	
l5539:	
;string.c: 16: i++; j--;
	movlw	low(01h)
	addwf	(reverse@i),f
	skipnc
	incf	(reverse@i+1),f
	movlw	high(01h)
	addwf	(reverse@i+1),f
	
l5541:	
	movlw	low(-1)
	addwf	(reverse@j),f
	skipnc
	incf	(reverse@j+1),f
	movlw	high(-1)
	addwf	(reverse@j+1),f
	goto	l5543
	line	17
	
l2127:	
	line	11
	
l5543:	
	movf	(reverse@i+1),w
	xorlw	80h
	movwf	(??_reverse+0)+0
	movf	(reverse@j+1),w
	xorlw	80h
	subwf	(??_reverse+0)+0,w
	skipz
	goto	u3005
	movf	(reverse@j),w
	subwf	(reverse@i),w
u3005:

	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l5537
u3000:
	goto	l2130
	
l2129:	
	line	18
	
l2130:	
	return
	opt stack 0
GLOBAL	__end_of_reverse
	__end_of_reverse:
;; =============== function _reverse ends ============

	signat	_reverse,8312
	global	_lcd_write
psect	text408,local,class=CODE,delta=2
global __ptext408
__ptext408:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[BANK0 ] unsigned char 
;;  _dcnt           1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
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
psect	text408
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_write@c)
	line	24
	
l5515:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l5517:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5519:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2985:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2985
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l5521:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5523:	
	bcf	(73/8),(73)&7
	line	28
	
l5525:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l5527
	
l1411:	
	goto	l5527
	
l1410:	
	
l5527:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l5527
u2990:
	goto	l1413
	
l1412:	
	line	29
	
l1413:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_DelayMs
psect	text409,local,class=CODE,delta=2
global __ptext409
__ptext409:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[BANK0 ] unsigned char 
;;  _dcnt           1    3[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
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
psect	text409
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 5
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
l716:	
	line	21
	
l5507:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l717:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l5509
	
l719:	
	goto	l5509
	
l718:	
	
l5509:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l5509
u2950:
	goto	l5511
	
l720:	
	line	24
	
l5511:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l717
u2960:
	goto	l5513
	
l721:	
	line	25
	
l5513:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l716
u2970:
	goto	l723
	
l722:	
	line	27
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_ISR
psect	text410,local,class=CODE,delta=2
global __ptext410
__ptext410:

;; *************** function _ISR *****************
;; Defined at:
;;		line 63 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
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
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text410
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp4\Exp4\capture\capture.c"
	line	63
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
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text410
	line	66
	
i1l5253:	
;capture.c: 66: if ( CCP1IF ) {
	btfss	(98/8),(98)&7
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l5265
u270_20:
	line	68
	
i1l5255:	
;capture.c: 68: if( isFirstEdge){
	movf	(_isFirstEdge+1),w
	iorwf	(_isFirstEdge),w
	skipnz
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l5259
u271_20:
	line	69
	
i1l5257:	
;capture.c: 69: rising_edge_time_1 = (int) CCPR1;
	movf	(21+1),w	;volatile
	clrf	(_rising_edge_time_1+1)	;volatile
	addwf	(_rising_edge_time_1+1)	;volatile
	movf	(21),w	;volatile
	clrf	(_rising_edge_time_1)	;volatile
	addwf	(_rising_edge_time_1)	;volatile

	line	70
;capture.c: 70: }
	goto	i1l5261
	line	71
	
i1l710:	
	line	72
	
i1l5259:	
;capture.c: 71: else{
;capture.c: 72: period = (int) CCPR1 - rising_edge_time_1;
	comf	(_rising_edge_time_1),w
	movwf	(??_ISR+0)+0
	comf	(_rising_edge_time_1+1),w
	movwf	((??_ISR+0)+0+1)
	incf	(??_ISR+0)+0,f
	skipnz
	incf	((??_ISR+0)+0+1),f
	movf	(21),w	;volatile
	addwf	0+(??_ISR+0)+0,w
	movwf	(_period)
	movf	(21+1),w	;volatile
	skipnc
	incf	(21+1),w	;volatile
	addwf	1+(??_ISR+0)+0,w
	movwf	1+(_period)
	goto	i1l5261
	line	73
	
i1l711:	
	line	75
	
i1l5261:	
;capture.c: 73: }
;capture.c: 75: isFirstEdge = !isFirstEdge;
	movf	(_isFirstEdge+1),w
	iorwf	(_isFirstEdge),w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	movwf	(_isFirstEdge)
	movf	1+(??_ISR+0)+0,w
	movwf	(_isFirstEdge+1)
	line	77
	
i1l5263:	
;capture.c: 77: CCP1IF = 0;
	bcf	(98/8),(98)&7
	goto	i1l5265
	line	78
	
i1l709:	
	line	81
	
i1l5265:	
;capture.c: 78: }
;capture.c: 81: if ( TMR1IF ) {
	btfss	(96/8),(96)&7
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l713
u272_20:
	line	83
	
i1l5267:	
;capture.c: 83: TMR1H = 0x00; TMR1L = 0x00;
	clrf	(15)	;volatile
	clrf	(14)	;volatile
	line	85
	
i1l5269:	
;capture.c: 85: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l713
	line	86
	
i1l712:	
	line	87
	
i1l713:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text411,local,class=CODE,delta=2
global __ptext411
__ptext411:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
