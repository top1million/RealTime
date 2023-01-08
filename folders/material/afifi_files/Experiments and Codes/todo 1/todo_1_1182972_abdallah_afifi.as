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
# 6 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_get_int
	FNCALL	_main,_lcd_putch
	FNCALL	_main,_get_int_len
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_get_int_len,___awdiv
	FNCALL	_get_int,___awdiv
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	global	_id
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
	line	16

;initializer for _id
	retlw	0FCh
	retlw	0Ch

	global	_col
	global	_pressed_key
	global	_row
	global	_start_displaying
	global	_x1
	global	_x2
	global	_Chkey
	global	_op
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
	global	_RC1
_RC1	set	57
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
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"todo_1_1182972_abdallah_afifi.as"
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

_start_displaying:
       ds      2

_x1:
       ds      2

_x2:
       ds      2

_Chkey:
       ds      1

_op:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
_id:
       ds      2

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
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x1
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x2
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
	global	lcd_putch@_dcnt
lcd_putch@_dcnt:	; 1 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x4
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x4
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	lcd_init@_dcnt_2132
lcd_init@_dcnt_2132:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_get_int
?_get_int:	; 2 bytes @ 0x9
	global	?_get_int_len
?_get_int_len:	; 2 bytes @ 0x9
	global	get_int_len@id
get_int_len@id:	; 2 bytes @ 0x9
	global	get_int@id
get_int@id:	; 2 bytes @ 0x9
	ds	2
	global	??_get_int_len
??_get_int_len:	; 0 bytes @ 0xB
	global	get_int@pos
get_int@pos:	; 2 bytes @ 0xB
	ds	2
	global	??_get_int
??_get_int:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	get_int_len@len
get_int_len@len:	; 2 bytes @ 0x0
	global	get_int@i
get_int@i:	; 2 bytes @ 0x0
	ds	2
	global	get_int_len@temp
get_int_len@temp:	; 2 bytes @ 0x2
	global	get_int@val
get_int@val:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x8
	ds	2
	global	main@i_1278
main@i_1278:	; 2 bytes @ 0xA
	ds	2
	global	main@sum
main@sum:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 11, constant 0, data 2, bss 14, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     14      30
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_get_int_len	int  size(1) Largest target is 0
;;
;; ?_get_int	int  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 11
;;		 -> STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_get_int
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _get_int_len->___awdiv
;;   _get_int->___awdiv
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_get_int
;;   _main->_get_int_len
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0    2302
;;                                              4 BANK0     10    10      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                            _get_int
;;                          _lcd_putch
;;                        _get_int_len
;;                           _lcd_goto
;;                           _lcd_puts
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     2      0     112
;;                                              3 COMMON     2     2      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      89
;;                                              3 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _get_int_len                                          6     4      2     392
;;                                              9 COMMON     2     0      2
;;                                              0 BANK0      4     4      0
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _get_int                                              9     5      4     414
;;                                              9 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     181
;;                                              4 COMMON     3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putch                                            5     5      0      89
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
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
;;   _get_int
;;     ___awdiv
;;   _lcd_putch
;;   _get_int_len
;;     ___awdiv
;;   _lcd_goto
;;     _lcd_write
;;   _lcd_puts
;;     _lcd_write
;;   ___awdiv
;;   ___awmod
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
;;DATA                 0      0      2E      12        0.0%
;;ABS                  0      0      2C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      E      1E       5       37.5%
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
;;		line 21 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[BANK0 ] int 
;;  sum             2   12[BANK0 ] int 
;;  i               2    8[BANK0 ] int 
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
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayMs
;;		_lcd_init
;;		_lcd_clear
;;		_get_int
;;		_lcd_putch
;;		_get_int_len
;;		_lcd_goto
;;		_lcd_puts
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l4045:	
;key.c: 23: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	24
	
l4047:	
;key.c: 24: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	25
;key.c: 25: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	26
;key.c: 26: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	27
	
l4049:	
;key.c: 27: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	28
	
l4051:	
;key.c: 28: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	29
	
l4053:	
;key.c: 29: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	30
	
l4055:	
;key.c: 30: lcd_init();
	fcall	_lcd_init
	line	31
	
l4057:	
;key.c: 31: lcd_clear();
	fcall	_lcd_clear
	line	32
	
l4059:	
;key.c: 32: op = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_op)
	line	40
	
l4061:	
;key.c: 40: for(int i = 0; i < 3; i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l4063:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3055
	movlw	low(03h)
	subwf	(main@i),w
u3055:

	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l4067
u3050:
	goto	l4073
	
l4065:	
	goto	l4073
	line	41
	
l729:	
	line	43
	
l4067:	
;key.c: 41: {
;key.c: 43: lcd_putch(get_int(id,7-i) + 48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_id+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(_id),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	comf	(main@i),w
	movwf	(??_main+0)+0
	comf	(main@i+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(07h)
	movwf	0+(?_get_int)+02h
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(07h)
	movwf	1+0+(?_get_int)+02h
	fcall	_get_int
	movf	(0+(?_get_int)),w
	addlw	030h
	fcall	_lcd_putch
	line	40
	
l4069:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l4071:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3065
	movlw	low(03h)
	subwf	(main@i),w
u3065:

	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l4067
u3060:
	goto	l4073
	
l730:	
	line	46
	
l4073:	
;key.c: 44: }
;key.c: 46: if(get_int_len(id) != 7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_id+1),w
	clrf	(?_get_int_len+1)
	addwf	(?_get_int_len+1)
	movf	(_id),w
	clrf	(?_get_int_len)
	addwf	(?_get_int_len)

	fcall	_get_int_len
	movlw	07h
	xorwf	(0+(?_get_int_len)),w
	iorwf	(1+(?_get_int_len)),w
	skipnz
	goto	u3071
	goto	u3070
u3071:
	goto	l4079
u3070:
	line	48
	
l4075:	
;key.c: 47: {
;key.c: 48: lcd_goto(64 + 3);
	movlw	(043h)
	fcall	_lcd_goto
	line	49
	
l4077:	
;key.c: 49: lcd_puts("Invalid Id");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	50
;key.c: 50: }
	goto	l732
	line	51
	
l731:	
	line	54
	
l4079:	
;key.c: 51: else
;key.c: 52: {
;key.c: 54: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	55
	
l4081:	
;key.c: 55: int sum = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sum)
	clrf	(main@sum+1)
	line	56
	
l4083:	
;key.c: 56: for(int i = 0; i < 3; i++)
	clrf	(main@i_1278)
	clrf	(main@i_1278+1)
	
l4085:	
	movf	(main@i_1278+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3085
	movlw	low(03h)
	subwf	(main@i_1278),w
u3085:

	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l4089
u3080:
	goto	l4095
	
l4087:	
	goto	l4095
	line	57
	
l733:	
	line	59
	
l4089:	
;key.c: 57: {
;key.c: 59: sum += get_int(id,7-i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_id+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(_id),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	comf	(main@i_1278),w
	movwf	(??_main+0)+0
	comf	(main@i_1278+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	low(07h)
	movwf	0+(?_get_int)+02h
	movf	1+(??_main+0)+0,w
	skipnc
	addlw	1
	addlw	high(07h)
	movwf	1+0+(?_get_int)+02h
	fcall	_get_int
	movf	(0+(?_get_int)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@sum),f
	skipnc
	incf	(main@sum+1),f
	movf	(1+(?_get_int)),w
	addwf	(main@sum+1),f
	line	56
	
l4091:	
	movlw	low(01h)
	addwf	(main@i_1278),f
	skipnc
	incf	(main@i_1278+1),f
	movlw	high(01h)
	addwf	(main@i_1278+1),f
	
l4093:	
	movf	(main@i_1278+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3095
	movlw	low(03h)
	subwf	(main@i_1278),w
u3095:

	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l4089
u3090:
	goto	l4095
	
l734:	
	line	61
	
l4095:	
;key.c: 60: }
;key.c: 61: if(sum > 9)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3105
	movlw	low(0Ah)
	subwf	(main@sum),w
u3105:

	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l4099
u3100:
	line	63
	
l4097:	
;key.c: 62: {
;key.c: 63: lcd_putch((sum / 10) + 48);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@sum),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_lcd_putch
	line	64
;key.c: 64: lcd_putch((sum % 10) + 48);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@sum),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_lcd_putch
	line	65
;key.c: 65: }
	goto	l732
	line	66
	
l735:	
	line	68
	
l4099:	
;key.c: 66: else
;key.c: 67: {
;key.c: 68: lcd_putch(sum + 48);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@sum),w
	addlw	030h
	fcall	_lcd_putch
	goto	l732
	line	69
	
l736:	
	line	70
	
l732:	
	line	72
;key.c: 69: }
;key.c: 70: }
;key.c: 72: if((get_int(id, 7 - 3) + get_int(id, 7 - 4)) % 2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_id+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(_id),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	movlw	low(04h)
	movwf	0+(?_get_int)+02h
	movlw	high(04h)
	movwf	(0+(?_get_int)+02h)+1
	fcall	_get_int
	movf	(0+?_get_int),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(1+?_get_int),w
	movwf	((??_main+0)+0+1)
	movf	(_id+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(_id),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	movlw	low(03h)
	movwf	0+(?_get_int)+02h
	movlw	high(03h)
	movwf	(0+(?_get_int)+02h)+1
	fcall	_get_int
	movf	(0+(?_get_int)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(1+(?_get_int)),w
	skipnc
	incf	(1+(?_get_int)),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	btfss	0+(??_main+2)+0,(0)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l737
u3110:
	line	74
	
l4101:	
;key.c: 73: {
;key.c: 74: RC5=1;
	bsf	(61/8),(61)&7
	line	75
;key.c: 75: RC7 = 0;
	bcf	(63/8),(63)&7
	line	76
;key.c: 76: RC6 = 1;
	bsf	(62/8),(62)&7
	line	77
;key.c: 77: }
	goto	l4103
	line	78
	
l737:	
	line	80
;key.c: 78: else
;key.c: 79: {
;key.c: 80: RC5=1;
	bsf	(61/8),(61)&7
	line	81
;key.c: 81: RC7 = 0;
	bcf	(63/8),(63)&7
	line	82
;key.c: 82: RC6 = 1;
	bsf	(62/8),(62)&7
	goto	l4103
	line	83
	
l738:	
	line	84
	
l4103:	
;key.c: 83: }
;key.c: 84: if((get_int(id, 7 - 6) + get_int(id, 7 - 7)) > 10)
	movf	(_id+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(_id),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	movlw	low(01h)
	movwf	0+(?_get_int)+02h
	movlw	high(01h)
	movwf	(0+(?_get_int)+02h)+1
	fcall	_get_int
	movf	(0+?_get_int),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(1+?_get_int),w
	movwf	((??_main+0)+0+1)
	movf	(_id+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(_id),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	movlw	low(0)
	movwf	0+(?_get_int)+02h
	movlw	high(0)
	movwf	(0+(?_get_int)+02h)+1
	fcall	_get_int
	movf	(0+(?_get_int)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(1+(?_get_int)),w
	skipnc
	incf	(1+(?_get_int)),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	1+(??_main+2)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3125
	movlw	low(0Bh)
	subwf	0+(??_main+2)+0,w
u3125:

	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l739
u3120:
	line	86
	
l4105:	
;key.c: 85: {
;key.c: 86: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	87
;key.c: 87: }
	goto	l741
	line	88
	
l739:	
	line	90
;key.c: 88: else
;key.c: 89: {
;key.c: 90: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	goto	l741
	line	91
	
l740:	
	line	93
	
l741:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_puts
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_1(11), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text303
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	38
	
l4037:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l4043
	
l1480:	
	line	40
	
l4039:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_write
	
l4041:	
	movlw	(01h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	addwf	(lcd_puts@s),f
	goto	l4043
	
l1479:	
	line	39
	
l4043:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l4039
u3040:
	goto	l1482
	
l1481:	
	line	41
	
l1482:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 53 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text304
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
	line	53
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 6
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	54
	
l4033:	
;lcd.c: 54: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	55
	
l4035:	
;lcd.c: 55: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	56
	
l1491:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_get_int_len
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:

;; *************** function _get_int_len *****************
;; Defined at:
;;		line 96 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
;; Parameters:    Size  Location     Type
;;  id              2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  temp            2    2[BANK0 ] int 
;;  len             2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text305
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
	line	96
	global	__size_of_get_int_len
	__size_of_get_int_len	equ	__end_of_get_int_len-_get_int_len
	
_get_int_len:	
	opt	stack 6
; Regs used in _get_int_len: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
l4019:	
;key.c: 97: int temp = id;
	movf	(get_int_len@id+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(get_int_len@temp+1)
	addwf	(get_int_len@temp+1)
	movf	(get_int_len@id),w
	clrf	(get_int_len@temp)
	addwf	(get_int_len@temp)

	line	98
	
l4021:	
;key.c: 98: int len = 0;
	clrf	(get_int_len@len)
	clrf	(get_int_len@len+1)
	line	99
;key.c: 99: while(temp != 0)
	goto	l4027
	
l745:	
	line	101
	
l4023:	
;key.c: 100: {
;key.c: 101: len++;
	movlw	low(01h)
	addwf	(get_int_len@len),f
	skipnc
	incf	(get_int_len@len+1),f
	movlw	high(01h)
	addwf	(get_int_len@len+1),f
	line	102
	
l4025:	
;key.c: 102: temp/=10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(get_int_len@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(get_int_len@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(get_int_len@temp+1)
	addwf	(get_int_len@temp+1)
	movf	(0+(?___awdiv)),w
	clrf	(get_int_len@temp)
	addwf	(get_int_len@temp)

	goto	l4027
	line	103
	
l744:	
	line	99
	
l4027:	
	movf	((get_int_len@temp+1)),w
	iorwf	((get_int_len@temp)),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l4023
u3030:
	goto	l4029
	
l746:	
	line	104
	
l4029:	
;key.c: 103: }
;key.c: 104: return len;
	movf	(get_int_len@len+1),w
	clrf	(?_get_int_len+1)
	addwf	(?_get_int_len+1)
	movf	(get_int_len@len),w
	clrf	(?_get_int_len)
	addwf	(?_get_int_len)

	goto	l747
	
l4031:	
	line	105
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_get_int_len
	__end_of_get_int_len:
;; =============== function _get_int_len ends ============

	signat	_get_int_len,4218
	global	_get_int
psect	text306,local,class=CODE,delta=2
global __ptext306
__ptext306:

;; *************** function _get_int *****************
;; Defined at:
;;		line 108 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
;; Parameters:    Size  Location     Type
;;  id              2    9[COMMON] int 
;;  pos             2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] int 
;;  val             2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text306
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\key.c"
	line	108
	global	__size_of_get_int
	__size_of_get_int	equ	__end_of_get_int-_get_int
	
_get_int:	
	opt	stack 6
; Regs used in _get_int: [wreg+status,2+status,0+pclath+cstack]
	line	109
	
l4005:	
;key.c: 109: int val = id;
	movf	(get_int@id+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(get_int@val+1)
	addwf	(get_int@val+1)
	movf	(get_int@id),w
	clrf	(get_int@val)
	addwf	(get_int@val)

	line	110
	
l4007:	
;key.c: 110: for(int i = 1; i < pos; i++)
	movlw	low(01h)
	movwf	(get_int@i)
	movlw	high(01h)
	movwf	((get_int@i))+1
	goto	l4013
	line	111
	
l751:	
	line	112
	
l4009:	
;key.c: 111: {
;key.c: 112: val/=10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(get_int@val+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(get_int@val),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(get_int@val+1)
	addwf	(get_int@val+1)
	movf	(0+(?___awdiv)),w
	clrf	(get_int@val)
	addwf	(get_int@val)

	line	110
	
l4011:	
	movlw	low(01h)
	addwf	(get_int@i),f
	skipnc
	incf	(get_int@i+1),f
	movlw	high(01h)
	addwf	(get_int@i+1),f
	goto	l4013
	
l750:	
	
l4013:	
	movf	(get_int@i+1),w
	xorlw	80h
	movwf	(??_get_int+0)+0
	movf	(get_int@pos+1),w
	xorlw	80h
	subwf	(??_get_int+0)+0,w
	skipz
	goto	u3025
	movf	(get_int@pos),w
	subwf	(get_int@i),w
u3025:

	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l4009
u3020:
	goto	l4015
	
l752:	
	line	114
	
l4015:	
;key.c: 113: }
;key.c: 114: return val;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(get_int@val+1),w
	clrf	(?_get_int+1)
	addwf	(?_get_int+1)
	movf	(get_int@val),w
	clrf	(?_get_int)
	addwf	(?_get_int)

	goto	l753
	
l4017:	
	line	115
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_get_int
	__end_of_get_int:
;; =============== function _get_int ends ============

	signat	_get_int,8314
	global	_lcd_clear
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
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
psect	text307
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 6
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l4001:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l4003:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1476:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 58 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
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
psect	text308
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
	line	58
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l3969:	
;lcd.c: 59: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	60
	
l3971:	
;lcd.c: 60: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	61
	
l3973:	
;lcd.c: 61: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	62
	
l3975:	
;lcd.c: 62: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3977:	
	bcf	(73/8),(73)&7
	line	63
	
l3979:	
;lcd.c: 63: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	64
	
l3981:	
;lcd.c: 64: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l3983:	
	bcf	(73/8),(73)&7
	line	65
;lcd.c: 65: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l3985
	
l1495:	
	goto	l3985
	
l1494:	
	
l3985:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l3985
u3000:
	
l1496:	
	line	66
;lcd.c: 66: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	67
	
l3987:	
;lcd.c: 67: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	68
	
l3989:	
;lcd.c: 68: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	69
	
l3991:	
;lcd.c: 69: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3993:	
	bcf	(73/8),(73)&7
	line	70
	
l3995:	
;lcd.c: 70: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2132)
	goto	l3997
	
l1498:	
	goto	l3997
	
l1497:	
	
l3997:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2132),f
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3997
u3010:
	goto	l3999
	
l1499:	
	line	71
	
l3999:	
;lcd.c: 71: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	72
;lcd.c: 72: lcd_write(0x08);
	movlw	(08h)
	fcall	_lcd_write
	line	73
;lcd.c: 73: lcd_write(0x0F);
	movlw	(0Fh)
	fcall	_lcd_write
	line	74
;lcd.c: 74: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	75
	
l1500:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___awmod
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text309
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3935:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2911
	goto	u2910
u2911:
	goto	l3939
u2910:
	line	10
	
l3937:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3939
	line	12
	
l2391:	
	line	13
	
l3939:	
	btfss	(___awmod@divisor+1),7
	goto	u2921
	goto	u2920
u2921:
	goto	l3943
u2920:
	line	14
	
l3941:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3943
	
l2392:	
	line	15
	
l3943:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2931
	goto	u2930
u2931:
	goto	l3961
u2930:
	line	16
	
l3945:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3951
	
l2395:	
	line	18
	
l3947:	
	movlw	01h
	
u2945:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2945
	line	19
	
l3949:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3951
	line	20
	
l2394:	
	line	17
	
l3951:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l3947
u2950:
	goto	l3953
	
l2396:	
	goto	l3953
	line	21
	
l2397:	
	line	22
	
l3953:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2965
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2965:
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l3957
u2960:
	line	23
	
l3955:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3957
	
l2398:	
	line	24
	
l3957:	
	movlw	01h
	
u2975:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2975
	line	25
	
l3959:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3953
u2980:
	goto	l3961
	
l2399:	
	goto	l3961
	line	26
	
l2393:	
	line	27
	
l3961:	
	movf	(___awmod@sign),w
	skipz
	goto	u2990
	goto	l3965
u2990:
	line	28
	
l3963:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3965
	
l2400:	
	line	29
	
l3965:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2401
	
l3967:	
	line	30
	
l2401:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

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
;;		_main
;;		_get_int_len
;;		_get_int
;;		_getkey
;; This function uses a non-reentrant model
;;
psect	text310
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3895:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2811
	goto	u2810
u2811:
	goto	l3899
u2810:
	line	11
	
l3897:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3899
	line	13
	
l2323:	
	line	14
	
l3899:	
	btfss	(___awdiv@dividend+1),7
	goto	u2821
	goto	u2820
u2821:
	goto	l3905
u2820:
	line	15
	
l3901:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3903:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3905
	line	17
	
l2324:	
	line	18
	
l3905:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3907:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2831
	goto	u2830
u2831:
	goto	l3927
u2830:
	line	20
	
l3909:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3915
	
l2327:	
	line	22
	
l3911:	
	movlw	01h
	
u2845:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2845
	line	23
	
l3913:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3915
	line	24
	
l2326:	
	line	21
	
l3915:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l3911
u2850:
	goto	l3917
	
l2328:	
	goto	l3917
	line	25
	
l2329:	
	line	26
	
l3917:	
	movlw	01h
	
u2865:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2865
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2875
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2875:
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l3923
u2870:
	line	28
	
l3919:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3921:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3923
	line	30
	
l2330:	
	line	31
	
l3923:	
	movlw	01h
	
u2885:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2885
	line	32
	
l3925:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l3917
u2890:
	goto	l3927
	
l2331:	
	goto	l3927
	line	33
	
l2325:	
	line	34
	
l3927:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2900
	goto	l3931
u2900:
	line	35
	
l3929:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3931
	
l2332:	
	line	36
	
l3931:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2333
	
l3933:	
	line	37
	
l2333:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_lcd_write
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
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
psect	text311
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 6
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l3881:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l3883:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3885:	
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
	
l3887:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3889:	
	bcf	(73/8),(73)&7
	line	28
	
l3891:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l3893
	
l1471:	
	goto	l3893
	
l1470:	
	
l3893:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3893
u2800:
	goto	l1473
	
l1472:	
	line	29
	
l1473:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_lcd_putch
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 43 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;;  _dcnt           1    3[COMMON] unsigned char 
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
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text312
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\lcd.c"
	line	43
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 7
; Regs used in _lcd_putch: [wreg+status,2+status,0]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	44
	
l3785:	
;lcd.c: 44: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	45
	
l3787:	
;lcd.c: 45: PORTC = !(0x31 ^ c) << 1;
	movlw	low(031h)
	xorwf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0)+0
	movlw	high(031h)
	movwf	1+(??_lcd_putch+0)+0
	movf	1+(??_lcd_putch+0)+0,w
	iorwf	0+(??_lcd_putch+0)+0,w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_lcd_putch+2)+0
	addwf	(??_lcd_putch+2)+0,w
	movwf	(7)	;volatile
	line	46
;lcd.c: 46: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_putch@c),w
	movwf	(8)	;volatile
	line	47
	
l3789:	
;lcd.c: 47: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3791:	
	bcf	(73/8),(73)&7
	line	48
;lcd.c: 48: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0)+0
	movlw	04h
u2615:
	clrc
	rlf	(??_lcd_putch+0)+0,f
	addlw	-1
	skipz
	goto	u2615
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_putch+0)+0,w
	movwf	(8)	;volatile
	line	49
	
l3793:	
;lcd.c: 49: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3795:	
	bcf	(73/8),(73)&7
	line	50
	
l3797:	
;lcd.c: 50: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_putch+0)+0
	movf	(??_lcd_putch+0)+0,w
	movwf	(lcd_putch@_dcnt)
	goto	l3799
	
l1486:	
	goto	l3799
	
l1485:	
	
l3799:	
	movlw	low(01h)
	subwf	(lcd_putch@_dcnt),f
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l3799
u2620:
	goto	l1488
	
l1487:	
	line	51
	
l1488:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_DelayMs
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\delay.c"
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
;;		_lcd_clear
;;		_lcd_init
;;		_getkey
;; This function uses a non-reentrant model
;;
psect	text313
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 1\delay.c"
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
	
l3:	
	line	21
	
l3777:	
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
	goto	l3779
	
l6:	
	goto	l3779
	
l5:	
	
l3779:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3779
u2580:
	goto	l3781
	
l7:	
	line	24
	
l3781:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l4
u2590:
	goto	l3783
	
l8:	
	line	25
	
l3783:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l3
u2600:
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
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
