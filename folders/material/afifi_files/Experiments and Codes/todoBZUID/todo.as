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
# 6 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_getkey
	FNCALL	_main,_putchar
	FNCALL	_putchar,_lcd_clear
	FNCALL	_putchar,_START
	FNCALL	_putchar,_lcd_putch
	FNCALL	_START,___llmod
	FNCALL	_START,___wmul
	FNCALL	_START,___lldiv
	FNCALL	_START,_lcd_goto
	FNCALL	_START,___awdiv
	FNCALL	_START,_lcd_putch
	FNCALL	_START,___awmod
	FNCALL	_START,_lcd_puts
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_getkey,_DelayMs
	FNCALL	_getkey,___awdiv
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	global	_num
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	line	14

;initializer for _num
	retlw	0FCh
	retlw	0Ch
	retlw	012h
	retlw	0

	global	_col
	global	_pressed_key
	global	_row
	global	_str
	global	_Chkey
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	global	_TRISD
_TRISD	set	136
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
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	0
psect	strings
	file	"todo.as"
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

_str:
       ds      2

_Chkey:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
_num:
       ds      4

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
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_getkey
?_getkey:	; 0 bytes @ 0x0
	global	?_putchar
?_putchar:	; 0 bytes @ 0x0
	global	?_START
?_START:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x1
	global	lcd_putch@_dcnt
lcd_putch@_dcnt:	; 1 bytes @ 0x1
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x2
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x3
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x3
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	lcd_init@_dcnt_2127
lcd_init@_dcnt_2127:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	ds	1
	global	??_getkey
??_getkey:	; 0 bytes @ 0x9
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_putchar
??_putchar:	; 0 bytes @ 0xE
	global	??_START
??_START:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	getkey@flag
getkey@flag:	; 2 bytes @ 0x0
	global	START@oddEven
START@oddEven:	; 2 bytes @ 0x0
	ds	2
	global	getkey@colVar
getkey@colVar:	; 1 bytes @ 0x2
	global	START@sumLastTow
START@sumLastTow:	; 2 bytes @ 0x2
	ds	1
	global	getkey@rowVar
getkey@rowVar:	; 1 bytes @ 0x3
	ds	1
	global	START@sum
START@sum:	; 2 bytes @ 0x4
	ds	2
	global	START@first_three
START@first_three:	; 2 bytes @ 0x6
	ds	2
	global	START@count
START@count:	; 2 bytes @ 0x8
	ds	2
	global	START@digit
START@digit:	; 2 bytes @ 0xA
	ds	2
	global	putchar@ch
putchar@ch:	; 1 bytes @ 0xC
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	1
;;Data sizes: Strings 6, constant 0, data 4, bss 9, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     14      27
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_1(CODE[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _START->___lldiv
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _getkey->___awdiv
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_putchar
;;   _putchar->_START
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
;; (0) _main                                                 1     1      0    3333
;;                                             13 BANK0      1     1      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                             _getkey
;;                            _putchar
;; ---------------------------------------------------------------------------------
;; (1) _putchar                                              1     1      0    2415
;;                                             12 BANK0      1     1      0
;;                          _lcd_clear
;;                              _START
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (2) _START                                               13    13      0    1839
;;                                              0 BANK0     12    12      0
;;                            ___llmod
;;                             ___wmul
;;                            ___lldiv
;;                           _lcd_goto
;;                            ___awdiv
;;                          _lcd_putch
;;                            ___awmod
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (3) _lcd_puts                                             2     2      0     112
;;                                              3 COMMON     2     2      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (3) _lcd_goto                                             1     1      0      89
;;                                              3 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _getkey                                               7     7      0     534
;;                                              9 COMMON     3     3      0
;;                                              0 BANK0      4     4      0
;;                            _DelayMs
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     181
;;                                              4 COMMON     3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (3) ___llmod                                             10     2      8     159
;;                                              0 COMMON    10     2      8
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (4) _lcd_write                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putch                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
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
;;   _getkey
;;     _DelayMs
;;     ___awdiv
;;   _putchar
;;     _lcd_clear
;;       _lcd_write
;;       _DelayMs
;;     _START
;;       ___llmod
;;       ___wmul
;;       ___lldiv
;;       _lcd_goto
;;         _lcd_write
;;       ___awdiv
;;       _lcd_putch
;;       ___awmod
;;       _lcd_puts
;;         _lcd_write
;;     _lcd_putch
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
;;DATA                 0      0      2D      12        0.0%
;;ABS                  0      0      29       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50      E      1B       5       33.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;;		_lcd_init
;;		_lcd_clear
;;		_getkey
;;		_putchar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l4360:	
;key.c: 18: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	19
	
l4362:	
;key.c: 19: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	20
;key.c: 20: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	21
;key.c: 21: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	22
	
l4364:	
;key.c: 22: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	23
	
l4366:	
;key.c: 23: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	24
	
l4368:	
;key.c: 24: PORTC = 0;
	clrf	(7)	;volatile
	line	25
	
l4370:	
;key.c: 25: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	26
	
l4372:	
;key.c: 26: lcd_init();
	fcall	_lcd_init
	line	27
	
l4374:	
;key.c: 27: lcd_clear();
	fcall	_lcd_clear
	goto	l4376
	line	30
;key.c: 30: while(1)
	
l725:	
	line	32
	
l4376:	
;key.c: 31: {
;key.c: 32: getkey();
	fcall	_getkey
	line	33
	
l4378:	
;key.c: 33: Chkey = (char) pressed_key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pressed_key),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Chkey)
	line	34
	
l4380:	
;key.c: 34: Chkey += 48;
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_Chkey),f
	line	35
	
l4382:	
;key.c: 35: putchar((char)Chkey);
	movf	(_Chkey),w
	fcall	_putchar
	goto	l4376
	line	36
	
l726:	
	line	30
	goto	l4376
	
l727:	
	line	37
	
l728:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_putchar
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

;; *************** function _putchar *****************
;; Defined at:
;;		line 120 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_clear
;;		_START
;;		_lcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text354
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	line	120
	global	__size_of_putchar
	__size_of_putchar	equ	__end_of_putchar-_putchar
	
_putchar:	
	opt	stack 4
; Regs used in _putchar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;putchar@ch stored from wreg
	line	122
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putchar@ch)
	
l4292:	
;key.c: 122: if(ch=='1')
	movf	(putchar@ch),w
	xorlw	031h
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l4298
u3460:
	line	124
	
l4294:	
;key.c: 123: {
;key.c: 124: lcd_clear();
	fcall	_lcd_clear
	line	125
	
l4296:	
;key.c: 125: START();
	fcall	_START
	line	126
;key.c: 126: }
	goto	l789
	line	127
	
l757:	
	
l4298:	
;key.c: 127: else if(ch=='2')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	032h
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l4302
u3470:
	line	129
	
l4300:	
;key.c: 128: {
;key.c: 129: lcd_putch('1');
	movlw	(031h)
	fcall	_lcd_putch
	line	130
;key.c: 130: }
	goto	l789
	line	131
	
l759:	
	
l4302:	
;key.c: 131: else if(ch=='3')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	033h
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l4306
u3480:
	line	133
	
l4304:	
;key.c: 132: {
;key.c: 133: lcd_putch('4');
	movlw	(034h)
	fcall	_lcd_putch
	line	134
;key.c: 134: }
	goto	l789
	line	135
	
l761:	
	
l4306:	
;key.c: 135: else if(ch=='4')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	034h
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l4310
u3490:
	line	137
	
l4308:	
;key.c: 136: {
;key.c: 137: lcd_putch('7');
	movlw	(037h)
	fcall	_lcd_putch
	line	138
;key.c: 138: }
	goto	l789
	line	139
	
l763:	
	
l4310:	
;key.c: 139: else if(ch=='5')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	035h
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l4314
u3500:
	line	141
	
l4312:	
;key.c: 140: {
;key.c: 141: lcd_putch('0');
	movlw	(030h)
	fcall	_lcd_putch
	line	142
;key.c: 142: }
	goto	l789
	line	143
	
l765:	
	
l4314:	
;key.c: 143: else if(ch=='6')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	036h
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l4318
u3510:
	line	145
	
l4316:	
;key.c: 144: {
;key.c: 145: lcd_putch('2');
	movlw	(032h)
	fcall	_lcd_putch
	line	146
;key.c: 146: }
	goto	l789
	line	147
	
l767:	
	
l4318:	
;key.c: 147: else if(ch=='7')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	037h
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l4322
u3520:
	line	149
	
l4320:	
;key.c: 148: {
;key.c: 149: lcd_putch('5');
	movlw	(035h)
	fcall	_lcd_putch
	line	150
;key.c: 150: }
	goto	l789
	line	151
	
l769:	
	
l4322:	
;key.c: 151: else if(ch=='8')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	038h
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l4326
u3530:
	line	153
	
l4324:	
;key.c: 152: {
;key.c: 153: lcd_putch('8');
	movlw	(038h)
	fcall	_lcd_putch
	line	154
;key.c: 154: }
	goto	l789
	line	155
	
l771:	
	
l4326:	
;key.c: 155: else if(ch=='9')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	039h
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l4330
u3540:
	line	157
	
l4328:	
;key.c: 156: {
;key.c: 157: lcd_putch('=');
	movlw	(03Dh)
	fcall	_lcd_putch
	line	158
;key.c: 158: }
	goto	l789
	line	159
	
l773:	
	
l4330:	
;key.c: 159: else if(ch==':')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	03Ah
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l4334
u3550:
	line	161
	
l4332:	
;key.c: 160: {
;key.c: 161: lcd_putch('3');
	movlw	(033h)
	fcall	_lcd_putch
	line	162
;key.c: 162: }
	goto	l789
	line	163
	
l775:	
	
l4334:	
;key.c: 163: else if(ch==';')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	03Bh
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l4338
u3560:
	line	165
	
l4336:	
;key.c: 164: {
;key.c: 165: lcd_putch('6');
	movlw	(036h)
	fcall	_lcd_putch
	line	166
;key.c: 166: }
	goto	l789
	line	167
	
l777:	
	
l4338:	
;key.c: 167: else if(ch=='<')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	03Ch
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l4342
u3570:
	line	169
	
l4340:	
;key.c: 168: {
;key.c: 169: lcd_putch('9');
	movlw	(039h)
	fcall	_lcd_putch
	line	170
;key.c: 170: }
	goto	l789
	line	171
	
l779:	
	
l4342:	
;key.c: 171: else if(ch=='=')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	03Dh
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l4346
u3580:
	line	173
	
l4344:	
;key.c: 172: {
;key.c: 173: lcd_putch('+');
	movlw	(02Bh)
	fcall	_lcd_putch
	line	174
;key.c: 174: }
	goto	l789
	line	175
	
l781:	
	
l4346:	
;key.c: 175: else if(ch=='>')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	03Eh
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l4350
u3590:
	line	177
	
l4348:	
;key.c: 176: {
;key.c: 177: lcd_putch('-');
	movlw	(02Dh)
	fcall	_lcd_putch
	line	178
;key.c: 178: }
	goto	l789
	line	179
	
l783:	
	
l4350:	
;key.c: 179: else if(ch=='?')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	03Fh
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l4354
u3600:
	line	181
	
l4352:	
;key.c: 180: {
;key.c: 181: lcd_putch('x');
	movlw	(078h)
	fcall	_lcd_putch
	line	182
;key.c: 182: }
	goto	l789
	line	183
	
l785:	
	
l4354:	
;key.c: 183: else if(ch=='@')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	xorlw	040h
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l4358
u3610:
	line	185
	
l4356:	
;key.c: 184: {
;key.c: 185: lcd_putch('/');
	movlw	(02Fh)
	fcall	_lcd_putch
	line	186
;key.c: 186: }
	goto	l789
	line	187
	
l787:	
	line	188
	
l4358:	
;key.c: 187: else
;key.c: 188: lcd_putch(ch);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(putchar@ch),w
	fcall	_lcd_putch
	goto	l789
	
l788:	
	goto	l789
	
l786:	
	goto	l789
	
l784:	
	goto	l789
	
l782:	
	goto	l789
	
l780:	
	goto	l789
	
l778:	
	goto	l789
	
l776:	
	goto	l789
	
l774:	
	goto	l789
	
l772:	
	goto	l789
	
l770:	
	goto	l789
	
l768:	
	goto	l789
	
l766:	
	goto	l789
	
l764:	
	goto	l789
	
l762:	
	goto	l789
	
l760:	
	goto	l789
	
l758:	
	line	189
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_putchar
	__end_of_putchar:
;; =============== function _putchar ends ============

	signat	_putchar,4216
	global	_START
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _START *****************
;; Defined at:
;;		line 190 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  digit           2   10[BANK0 ] int 
;;  count           2    8[BANK0 ] int 
;;  first_three     2    6[BANK0 ] int 
;;  sum             2    4[BANK0 ] int 
;;  sumLastTow      2    2[BANK0 ] int 
;;  oddEven         2    0[BANK0 ] int 
;;  ch              1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___llmod
;;		___wmul
;;		___lldiv
;;		_lcd_goto
;;		___awdiv
;;		_lcd_putch
;;		___awmod
;;		_lcd_puts
;; This function is called by:
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	line	190
	global	__size_of_START
	__size_of_START	equ	__end_of_START-_START
	
_START:	
	opt	stack 4
; Regs used in _START: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	199
	
l4240:	
;key.c: 191: int digit;
;key.c: 192: int count;
;key.c: 193: char ch;
;key.c: 194: int first_three;
;key.c: 195: int sum;
;key.c: 196: int oddEven;
;key.c: 197: int sumLastTow;
;key.c: 199: while(num != 0){
	goto	l4274
	
l793:	
	line	200
	
l4242:	
;key.c: 200: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(START@count),f
	skipnc
	incf	(START@count+1),f
	movlw	high(01h)
	addwf	(START@count+1),f
	line	203
	
l4244:	
;key.c: 203: digit = num % 10;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	movf	(_num+3),w
	movwf	3+(?___llmod)+04h
	movf	(_num+2),w
	movwf	2+(?___llmod)+04h
	movf	(_num+1),w
	movwf	1+(?___llmod)+04h
	movf	(_num),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	1+(((0+(?___llmod)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(START@digit+1)
	addwf	(START@digit+1)
	movf	0+(((0+(?___llmod)))),w
	clrf	(START@digit)
	addwf	(START@digit)

	line	204
	
l4246:	
;key.c: 204: if(count == 5){
	movlw	05h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l794
u3350:
	line	205
	
l4248:	
;key.c: 205: first_three += digit;
	movf	(START@digit),w
	addwf	(START@first_three),f
	skipnc
	incf	(START@first_three+1),f
	movf	(START@digit+1),w
	addwf	(START@first_three+1),f
	line	206
;key.c: 206: sum += digit;
	movf	(START@digit),w
	addwf	(START@sum),f
	skipnc
	incf	(START@sum+1),f
	movf	(START@digit+1),w
	addwf	(START@sum+1),f
	line	207
	
l794:	
	line	208
;key.c: 207: }
;key.c: 208: if(count == 6){
	movlw	06h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l4254
u3360:
	line	209
	
l4250:	
;key.c: 209: first_three += digit *10;
	movf	(START@digit+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(START@digit),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(START@first_three),f
	skipnc
	incf	(START@first_three+1),f
	movf	(1+(?___wmul)),w
	addwf	(START@first_three+1),f
	line	210
	
l4252:	
;key.c: 210: sum += digit;
	movf	(START@digit),w
	addwf	(START@sum),f
	skipnc
	incf	(START@sum+1),f
	movf	(START@digit+1),w
	addwf	(START@sum+1),f
	goto	l4254
	line	211
	
l795:	
	line	212
	
l4254:	
;key.c: 211: }
;key.c: 212: if(count == 7){
	movlw	07h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l4260
u3370:
	line	213
	
l4256:	
;key.c: 213: first_three += digit *100;
	movf	(START@digit+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(START@digit),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(START@first_three),f
	skipnc
	incf	(START@first_three+1),f
	movf	(1+(?___wmul)),w
	addwf	(START@first_three+1),f
	line	214
	
l4258:	
;key.c: 214: sum += digit;
	movf	(START@digit),w
	addwf	(START@sum),f
	skipnc
	incf	(START@sum+1),f
	movf	(START@digit+1),w
	addwf	(START@sum+1),f
	goto	l4260
	line	215
	
l796:	
	line	216
	
l4260:	
;key.c: 215: }
;key.c: 216: if(count == 4){
	movlw	04h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l4264
u3380:
	line	217
	
l4262:	
;key.c: 217: oddEven += digit*10;
	movf	(START@digit+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(START@digit),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(START@oddEven),f
	skipnc
	incf	(START@oddEven+1),f
	movf	(1+(?___wmul)),w
	addwf	(START@oddEven+1),f
	goto	l4264
	line	218
	
l797:	
	line	219
	
l4264:	
;key.c: 218: }
;key.c: 219: if(count == 3){
	movlw	03h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l798
u3390:
	line	220
	
l4266:	
;key.c: 220: oddEven += digit;
	movf	(START@digit),w
	addwf	(START@oddEven),f
	skipnc
	incf	(START@oddEven+1),f
	movf	(START@digit+1),w
	addwf	(START@oddEven+1),f
	line	221
	
l798:	
	line	222
;key.c: 221: }
;key.c: 222: if(count == 2){
	movlw	02h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l799
u3400:
	line	223
	
l4268:	
;key.c: 223: sumLastTow += digit;
	movf	(START@digit),w
	addwf	(START@sumLastTow),f
	skipnc
	incf	(START@sumLastTow+1),f
	movf	(START@digit+1),w
	addwf	(START@sumLastTow+1),f
	line	224
	
l799:	
	line	225
;key.c: 224: }
;key.c: 225: if(count == 1){
	movlw	01h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l4272
u3410:
	line	226
	
l4270:	
;key.c: 226: sumLastTow += digit;
	movf	(START@digit),w
	addwf	(START@sumLastTow),f
	skipnc
	incf	(START@sumLastTow+1),f
	movf	(START@digit+1),w
	addwf	(START@sumLastTow+1),f
	goto	l4272
	line	227
	
l800:	
	line	228
	
l4272:	
;key.c: 227: }
;key.c: 228: num = num /10;
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	0Ah
	movwf	(?___lldiv)

	movf	(_num+3),w
	movwf	3+(?___lldiv)+04h
	movf	(_num+2),w
	movwf	2+(?___lldiv)+04h
	movf	(_num+1),w
	movwf	1+(?___lldiv)+04h
	movf	(_num),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_num+3)
	movf	(2+(?___lldiv)),w
	movwf	(_num+2)
	movf	(1+(?___lldiv)),w
	movwf	(_num+1)
	movf	(0+(?___lldiv)),w
	movwf	(_num)

	goto	l4274
	line	229
	
l792:	
	line	199
	
l4274:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_num+3),w
	iorwf	(_num+2),w
	iorwf	(_num+1),w
	iorwf	(_num),w
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l4242
u3420:
	goto	l4276
	
l801:	
	line	230
	
l4276:	
;key.c: 229: }
;key.c: 230: if(count == 7){
	movlw	07h
	xorwf	(START@count),w
	iorwf	(START@count+1),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l4288
u3430:
	line	231
	
l4278:	
;key.c: 231: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	232
;key.c: 232: lcd_putch((char)(48 + first_three/100));
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(START@first_three+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(START@first_three),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	233
;key.c: 233: lcd_putch((char)(48 + first_three/10));
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(START@first_three+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(START@first_three),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	234
;key.c: 234: lcd_putch((char)(48 + first_three%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(START@first_three+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(START@first_three),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_putch
	line	235
;key.c: 235: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	236
;key.c: 236: lcd_putch((char)(48 + sum/10));
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(START@sum+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(START@sum),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	237
;key.c: 237: lcd_putch((char)(48 + sum%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(START@sum+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(START@sum),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_putch
	line	239
	
l4280:	
;key.c: 239: if(oddEven % 2 == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(START@oddEven),(0)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l803
u3440:
	line	240
	
l4282:	
;key.c: 240: RC0 = 1;
	bsf	(56/8),(56)&7
	line	241
;key.c: 241: RC1 = 0;
	bcf	(57/8),(57)&7
	line	242
;key.c: 242: RC2 = 1;
	bsf	(58/8),(58)&7
	line	243
;key.c: 243: }else{
	goto	l4284
	
l803:	
	line	244
;key.c: 244: RC0 = 0;
	bcf	(56/8),(56)&7
	line	245
;key.c: 245: RC1 = 1;
	bsf	(57/8),(57)&7
	line	246
;key.c: 246: RC2 = 1;
	bsf	(58/8),(58)&7
	goto	l4284
	line	247
	
l804:	
	line	248
	
l4284:	
;key.c: 247: }
;key.c: 248: if(sumLastTow >10){
	movf	(START@sumLastTow+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3455
	movlw	low(0Bh)
	subwf	(START@sumLastTow),w
u3455:

	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l805
u3450:
	line	249
	
l4286:	
;key.c: 249: RC7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(63/8),(63)&7
	line	250
;key.c: 250: }else{
	goto	l808
	
l805:	
	line	251
;key.c: 251: RC7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7
	goto	l808
	line	252
	
l806:	
	line	253
;key.c: 252: }
;key.c: 253: }
	goto	l808
	line	254
	
l802:	
	line	255
	
l4288:	
;key.c: 254: else{
;key.c: 255: lcd_goto(64+3);
	movlw	(043h)
	fcall	_lcd_goto
	line	256
	
l4290:	
;key.c: 256: lcd_puts("error");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	goto	l808
	line	257
	
l807:	
	line	258
	
l808:	
	return
	opt stack 0
GLOBAL	__end_of_START
	__end_of_START:
;; =============== function _START ends ============

	signat	_START,88
	global	_lcd_puts
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(6), 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_START
;; This function uses a non-reentrant model
;;
psect	text356
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	38
	
l4232:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l4238
	
l1505:	
	line	40
	
l4234:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_write
	
l4236:	
	movlw	(01h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	addwf	(lcd_puts@s),f
	goto	l4238
	
l1504:	
	line	39
	
l4238:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l4234
u3340:
	goto	l1507
	
l1506:	
	line	41
	
l1507:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 52 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    3[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_START
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
	line	52
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	53
	
l4228:	
;lcd.c: 53: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	54
	
l4230:	
;lcd.c: 54: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	55
	
l1516:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_getkey
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _getkey *****************
;; Defined at:
;;		line 40 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
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
psect	text358
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\key.c"
	line	40
	global	__size_of_getkey
	__size_of_getkey	equ	__end_of_getkey-_getkey
	
_getkey:	
	opt	stack 6
; Regs used in _getkey: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	42
	
l4158:	
;key.c: 41: char colVar, rowVar;
;key.c: 42: int flag=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getkey@flag)
	clrf	(getkey@flag+1)
	line	43
	
l4160:	
;key.c: 43: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l4162
	line	46
;key.c: 46: do {
	
l731:	
	line	47
	
l4162:	
;key.c: 47: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	48
	
l4164:	
;key.c: 48: TRISB = 0xf0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	49
	
l4166:	
;key.c: 49: } while ( (PORTB >> 4) != 0xf );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u3195:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u3195
	movf	0+(??_getkey+0)+0,w
	xorlw	0Fh
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l4162
u3200:
	goto	l4168
	
l732:	
	line	51
	
l4168:	
;key.c: 51: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l4170
	line	54
;key.c: 54: while (1)
	
l733:	
	line	56
	
l4170:	
;key.c: 55: {
;key.c: 56: if ( flag == 1 ){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getkey@flag),w
	iorwf	(getkey@flag+1),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l4174
u3210:
	goto	l4208
	line	57
	
l4172:	
;key.c: 57: break;
	goto	l4208
	line	58
	
l734:	
	line	61
	
l4174:	
;key.c: 58: }
;key.c: 61: for ( col = 0; col < 4; col++ ) {
	clrf	(_col)
	clrf	(_col+1)
	
l4176:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3225
	movlw	low(04h)
	subwf	(_col),w
u3225:

	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l4180
u3220:
	goto	l4170
	
l4178:	
	goto	l4170
	
l736:	
	line	62
	
l4180:	
;key.c: 62: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	68
	
l4182:	
;key.c: 68: if ( col == 0 ){
	movf	((_col+1)),w
	iorwf	((_col)),w
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l4186
u3230:
	line	69
	
l4184:	
;key.c: 69: colVar = 1;
	clrf	(getkey@colVar)
	bsf	status,0
	rlf	(getkey@colVar),f
	line	70
;key.c: 70: }
	goto	l4196
	line	71
	
l738:	
	
l4186:	
;key.c: 71: else if ( col == 1 ){
	movlw	01h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l4190
u3240:
	line	72
	
l4188:	
;key.c: 72: colVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	73
;key.c: 73: }
	goto	l4196
	line	74
	
l740:	
	
l4190:	
;key.c: 74: else if ( col == 2 ){
	movlw	02h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l4194
u3250:
	line	75
	
l4192:	
;key.c: 75: colVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	76
;key.c: 76: }
	goto	l4196
	line	77
	
l742:	
	line	78
	
l4194:	
;key.c: 77: else{
;key.c: 78: colVar = 8;
	movlw	(08h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	goto	l4196
	line	79
	
l743:	
	goto	l4196
	
l741:	
	goto	l4196
	
l739:	
	line	82
	
l4196:	
;key.c: 79: }
;key.c: 82: TRISB = colVar ^ 0xff;
	comf	(getkey@colVar),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	85
	
l4198:	
;key.c: 85: row = PORTB >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u3265:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u3265
	movf	0+(??_getkey+0)+0,w
	movwf	(??_getkey+1)+0
	clrf	(??_getkey+1)+0+1
	movf	0+(??_getkey+1)+0,w
	movwf	(_row)
	movf	1+(??_getkey+1)+0,w
	movwf	(_row+1)
	line	88
	
l4200:	
;key.c: 88: if ( row != 0xf ) {
	movlw	0Fh
	xorwf	(_row),w
	iorwf	(_row+1),w
	skipnz
	goto	u3271
	goto	u3270
u3271:
	goto	l4204
u3270:
	line	89
	
l4202:	
;key.c: 89: flag = 1;
	movlw	low(01h)
	movwf	(getkey@flag)
	movlw	high(01h)
	movwf	((getkey@flag))+1
	line	90
;key.c: 90: break;
	goto	l4170
	line	91
	
l744:	
	line	61
	
l4204:	
	movlw	low(01h)
	addwf	(_col),f
	skipnc
	incf	(_col+1),f
	movlw	high(01h)
	addwf	(_col+1),f
	
l4206:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3285
	movlw	low(04h)
	subwf	(_col),w
u3285:

	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l4180
u3280:
	goto	l4170
	
l737:	
	goto	l4170
	line	93
	
l745:	
	line	54
	goto	l4170
	
l735:	
	line	97
	
l4208:	
;key.c: 91: }
;key.c: 92: }
;key.c: 93: }
;key.c: 97: rowVar = row ^ 0xf;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_row),w
	xorlw	0Fh
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@rowVar)
	line	99
	
l4210:	
;key.c: 99: if ( (rowVar / 8) == 1 ){
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
	goto	u3291
	goto	u3290
u3291:
	goto	l4214
u3290:
	line	100
	
l4212:	
;key.c: 100: rowVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	101
;key.c: 101: }
	goto	l4226
	line	102
	
l746:	
	
l4214:	
;key.c: 102: else if ( (rowVar / 4) == 1 ){
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
	goto	u3301
	goto	u3300
u3301:
	goto	l4218
u3300:
	line	103
	
l4216:	
;key.c: 103: rowVar = 3;
	movlw	(03h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	104
;key.c: 104: }
	goto	l4226
	line	105
	
l748:	
	
l4218:	
;key.c: 105: else if ( (rowVar / 2) == 1 ){
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
	goto	u3311
	goto	u3310
u3311:
	goto	l4222
u3310:
	line	106
	
l4220:	
;key.c: 106: rowVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	107
;key.c: 107: }
	goto	l4226
	line	108
	
l750:	
	
l4222:	
;key.c: 108: else if ( rowVar == 1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	xorlw	01h
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l752
u3320:
	line	109
	
l4224:	
;key.c: 109: rowVar = 1;
	clrf	(getkey@rowVar)
	bsf	status,0
	rlf	(getkey@rowVar),f
	line	110
;key.c: 110: }
	goto	l4226
	line	111
	
l752:	
	line	112
;key.c: 111: else{
;key.c: 112: rowVar = 0;
	clrf	(getkey@rowVar)
	goto	l4226
	line	113
	
l753:	
	goto	l4226
	
l751:	
	goto	l4226
	
l749:	
	goto	l4226
	
l747:	
	line	115
	
l4226:	
;key.c: 113: }
;key.c: 115: pressed_key = (col * 4) + rowVar;
	movf	(_col+1),w
	movwf	(??_getkey+0)+0+1
	movf	(_col),w
	movwf	(??_getkey+0)+0
	movlw	02h
	movwf	btemp+1
u3335:
	clrc
	rlf	(??_getkey+0)+0,f
	rlf	(??_getkey+0)+1,f
	decfsz	btemp+1,f
	goto	u3335
	movf	(getkey@rowVar),w
	addwf	0+(??_getkey+0)+0,w
	movwf	(_pressed_key)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_getkey+0)+0,w
	movwf	1+(_pressed_key)
	line	116
	
l754:	
	return
	opt stack 0
GLOBAL	__end_of_getkey
	__end_of_getkey:
;; =============== function _getkey ends ============

	signat	_getkey,88
	global	_lcd_clear
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
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
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_main
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l4154:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l4156:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1501:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    6[COMMON] unsigned char 
;;  _dcnt           1    5[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l4122:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l4124:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l4126:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l4128:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l4130:	
	bcf	(73/8),(73)&7
	line	62
	
l4132:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l4134:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l4136:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l4138
	
l1520:	
	goto	l4138
	
l1519:	
	
l4138:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l4138
u3170:
	
l1521:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l4140:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l4142:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l4144:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l4146:	
	bcf	(73/8),(73)&7
	line	69
	
l4148:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2127)
	goto	l4150
	
l1523:	
	goto	l4150
	
l1522:	
	
l4150:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2127),f
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l4150
u3180:
	goto	l4152
	
l1524:	
	line	70
	
l4152:	
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
	
l1525:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___awmod
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_START
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l4088:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3081
	goto	u3080
u3081:
	goto	l4092
u3080:
	line	10
	
l4090:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l4092
	line	12
	
l2416:	
	line	13
	
l4092:	
	btfss	(___awmod@divisor+1),7
	goto	u3091
	goto	u3090
u3091:
	goto	l4096
u3090:
	line	14
	
l4094:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l4096
	
l2417:	
	line	15
	
l4096:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3101
	goto	u3100
u3101:
	goto	l4114
u3100:
	line	16
	
l4098:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l4104
	
l2420:	
	line	18
	
l4100:	
	movlw	01h
	
u3115:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3115
	line	19
	
l4102:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l4104
	line	20
	
l2419:	
	line	17
	
l4104:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l4100
u3120:
	goto	l4106
	
l2421:	
	goto	l4106
	line	21
	
l2422:	
	line	22
	
l4106:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3135
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3135:
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l4110
u3130:
	line	23
	
l4108:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l4110
	
l2423:	
	line	24
	
l4110:	
	movlw	01h
	
u3145:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3145
	line	25
	
l4112:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l4106
u3150:
	goto	l4114
	
l2424:	
	goto	l4114
	line	26
	
l2418:	
	line	27
	
l4114:	
	movf	(___awmod@sign),w
	skipz
	goto	u3160
	goto	l4118
u3160:
	line	28
	
l4116:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4118
	
l2425:	
	line	29
	
l4118:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2426
	
l4120:	
	line	30
	
l2426:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_START
;; This function uses a non-reentrant model
;;
psect	text362
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l4064:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3011
	goto	u3010
u3011:
	goto	l4084
u3010:
	line	11
	
l4066:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l4070
	
l2382:	
	line	13
	
l4068:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3025:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3025
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l4070
	line	15
	
l2381:	
	line	12
	
l4070:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l4068
u3030:
	goto	l4072
	
l2383:	
	goto	l4072
	line	16
	
l2384:	
	line	17
	
l4072:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3045:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3045
	line	18
	
l4074:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3055
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3055
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3055
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3055:
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l4080
u3050:
	line	19
	
l4076:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l4078:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l4080
	line	21
	
l2385:	
	line	22
	
l4080:	
	movlw	01h
u3065:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3065

	line	23
	
l4082:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l4072
u3070:
	goto	l4084
	
l2386:	
	goto	l4084
	line	24
	
l2380:	
	line	25
	
l4084:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l2387
	
l4086:	
	line	26
	
l2387:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___llmod
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_START
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 5
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l4044:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l4060
u2950:
	line	9
	
l4046:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l4050
	
l2363:	
	line	11
	
l4048:	
	movlw	01h
	movwf	(??___llmod+0)+0
u2965:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u2965
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l4050
	line	13
	
l2362:	
	line	10
	
l4050:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l4048
u2970:
	goto	l4052
	
l2364:	
	goto	l4052
	line	14
	
l2365:	
	line	15
	
l4052:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2985
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2985
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2985
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2985:
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l4056
u2980:
	line	16
	
l4054:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l4056
	
l2366:	
	line	17
	
l4056:	
	movlw	01h
u2995:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u2995

	line	18
	
l4058:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l4052
u3000:
	goto	l4060
	
l2367:	
	goto	l4060
	line	19
	
l2361:	
	line	20
	
l4060:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l2368
	
l4062:	
	line	21
	
l2368:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

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
;;		_START
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4004:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2851
	goto	u2850
u2851:
	goto	l4008
u2850:
	line	11
	
l4006:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4008
	line	13
	
l2348:	
	line	14
	
l4008:	
	btfss	(___awdiv@dividend+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l4014
u2860:
	line	15
	
l4010:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4012:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l4014
	line	17
	
l2349:	
	line	18
	
l4014:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l4016:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l4036
u2870:
	line	20
	
l4018:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4024
	
l2352:	
	line	22
	
l4020:	
	movlw	01h
	
u2885:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2885
	line	23
	
l4022:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4024
	line	24
	
l2351:	
	line	21
	
l4024:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l4020
u2890:
	goto	l4026
	
l2353:	
	goto	l4026
	line	25
	
l2354:	
	line	26
	
l4026:	
	movlw	01h
	
u2905:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2905
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2915
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2915:
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l4032
u2910:
	line	28
	
l4028:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4030:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4032
	line	30
	
l2355:	
	line	31
	
l4032:	
	movlw	01h
	
u2925:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2925
	line	32
	
l4034:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l4026
u2930:
	goto	l4036
	
l2356:	
	goto	l4036
	line	33
	
l2350:	
	line	34
	
l4036:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2940
	goto	l4040
u2940:
	line	35
	
l4038:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4040
	
l2357:	
	line	36
	
l4040:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2358
	
l4042:	
	line	37
	
l2358:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_START
;; This function uses a non-reentrant model
;;
psect	text365
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3992:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3994
	line	6
	
l2208:	
	line	7
	
l3994:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2209
u2810:
	line	8
	
l3996:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l2209:	
	line	9
	movlw	01h
	
u2825:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2825
	line	10
	
l3998:	
	movlw	01h
	
u2835:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2835
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l3994
u2840:
	goto	l4000
	
l2210:	
	line	12
	
l4000:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l2211
	
l4002:	
	line	13
	
l2211:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_lcd_write
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMMON] unsigned char 
;;  _dcnt           1    1[COMMON] unsigned char 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text366
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l3978:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l3980:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3982:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2795:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2795
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l3984:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3986:	
	bcf	(73/8),(73)&7
	line	28
	
l3988:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l3990
	
l1496:	
	goto	l3990
	
l1495:	
	
l3990:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3990
u2800:
	goto	l1498
	
l1497:	
	line	29
	
l1498:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_lcd_putch
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 43 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    2[COMMON] unsigned char 
;;  _dcnt           1    1[COMMON] unsigned char 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putchar
;;		_START
;; This function uses a non-reentrant model
;;
psect	text367
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\lcd.c"
	line	43
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 6
; Regs used in _lcd_putch: [wreg+status,2+status,0]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	44
	
l3962:	
;lcd.c: 44: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	45
	
l3964:	
;lcd.c: 45: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_putch@c),w
	movwf	(8)	;volatile
	line	46
	
l3966:	
;lcd.c: 46: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3968:	
	bcf	(73/8),(73)&7
	line	47
;lcd.c: 47: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0)+0
	movlw	04h
u2775:
	clrc
	rlf	(??_lcd_putch+0)+0,f
	addlw	-1
	skipz
	goto	u2775
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_putch+0)+0,w
	movwf	(8)	;volatile
	line	48
	
l3970:	
;lcd.c: 48: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3972:	
	bcf	(73/8),(73)&7
	line	49
	
l3974:	
;lcd.c: 49: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_putch+0)+0
	movf	(??_lcd_putch+0)+0,w
	movwf	(lcd_putch@_dcnt)
	goto	l3976
	
l1511:	
	goto	l3976
	
l1510:	
	
l3976:	
	movlw	low(01h)
	subwf	(lcd_putch@_dcnt),f
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3976
u2780:
	goto	l1513
	
l1512:	
	line	50
	
l1513:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_DelayMs
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\delay.c"
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
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text368
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todoBZUID\delay.c"
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
	
l3:	
	line	21
	
l3954:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l4:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l3956
	
l6:	
	goto	l3956
	
l5:	
	
l3956:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3956
u2740:
	goto	l3958
	
l7:	
	line	24
	
l3958:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l4
u2750:
	goto	l3960
	
l8:	
	line	25
	
l3960:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l3
u2760:
	goto	l10
	
l9:	
	line	27
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
