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
# 16 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	psect config,class=CONFIG,delta=2 ;#
# 16 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelaySec
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_DelayMs
	FNCALL	_main,_init_a2d
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_read_a2d
	FNCALL	_main,___ftdiv
	FNCALL	_main,_ftoa
	FNCALL	_main,___ftge
	FNCALL	_main,_putchOnSerial
	FNCALL	_main,_getch
	FNCALL	_ftoa,___fttol
	FNCALL	_ftoa,___awtoft
	FNCALL	_ftoa,___ftneg
	FNCALL	_ftoa,___ftadd
	FNCALL	_ftoa,_intToStr
	FNCALL	_ftoa,_pow
	FNCALL	_ftoa,___ftmul
	FNCALL	_pow,___ftge
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,___ftneg
	FNCALL	_pow,_log
	FNCALL	_pow,___ftmul
	FNCALL	_pow,_exp
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftmul
	FNCALL	_exp,_floor
	FNCALL	_exp,___fttol
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftsub
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_ldexp
	FNCALL	_exp,___ftdiv
	FNCALL	_log,___ftge
	FNCALL	_log,_frexp
	FNCALL	_log,___ftmul
	FNCALL	_log,___ftadd
	FNCALL	_log,_eval_poly
	FNCALL	_log,___awtoft
	FNCALL	_eval_poly,___bmul
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___ftadd
	FNCALL	_floor,_frexp
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	___ftsub,___ftadd
	FNCALL	_read_a2d,_DelayMs
	FNCALL	_read_a2d,___lbtoft
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	___lltoft,___ftpack
	FNCALL	___altoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_DelaySec,_DelayMs
	FNCALL	_intToStr,___awmod
	FNCALL	_intToStr,___awdiv
	FNCALL	_intToStr,_reverse
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNROOT	_main
	global	_send
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	24

;initializer for _send
	retlw	01h
	retlw	0

	global	exp@coeff
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
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
	global	_x
	global	_errno
	global	_str
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RB1
_RB1	set	49
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
	
STR_1:	
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_3:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"lab3 serial.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_x:
       ds      3

_errno:
       ds      2

_str:
       ds      10

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	24
_send:
       ds      2

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
	clrf	((__pbssBANK1)+10)&07Fh
	clrf	((__pbssBANK1)+11)&07Fh
	clrf	((__pbssBANK1)+12)&07Fh
	clrf	((__pbssBANK1)+13)&07Fh
	clrf	((__pbssBANK1)+14)&07Fh
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_pow$3813
_pow$3813:	; 3 bytes @ 0x0
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x3
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x4
	ds	4
	global	?_ftoa
?_ftoa:	; 0 bytes @ 0x8
	global	ftoa@n
ftoa@n:	; 3 bytes @ 0x8
	ds	3
	global	ftoa@res
ftoa@res:	; 1 bytes @ 0xB
	ds	1
	global	ftoa@afterpoint
ftoa@afterpoint:	; 2 bytes @ 0xC
	ds	2
	global	_ftoa$3812
_ftoa$3812:	; 3 bytes @ 0xE
	ds	3
	global	ftoa@ipart
ftoa@ipart:	; 2 bytes @ 0x11
	ds	2
	global	ftoa@i
ftoa@i:	; 2 bytes @ 0x13
	ds	2
	global	ftoa@fpart
ftoa@fpart:	; 3 bytes @ 0x15
	ds	3
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_a2d
?_init_a2d:	; 0 bytes @ 0x0
	global	??_init_a2d
??_init_a2d:	; 0 bytes @ 0x0
	global	?_putchOnSerial
?_putchOnSerial:	; 0 bytes @ 0x0
	global	??_putchOnSerial
??_putchOnSerial:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_reverse
?_reverse:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	putchOnSerial@byte
putchOnSerial@byte:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	reverse@len
reverse@len:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
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
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x3
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x3
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	?_DelaySec
?_DelaySec:	; 0 bytes @ 0x4
	global	??_frexp
??_frexp:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	DelaySec@sec
DelaySec@sec:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x5
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	reverse@temp
reverse@temp:	; 2 bytes @ 0x5
	ds	1
	global	??_DelaySec
??_DelaySec:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	lcd_init@_dcnt_1244
lcd_init@_dcnt_1244:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	reverse@i
reverse@i:	; 2 bytes @ 0x7
	global	DelaySec@i
DelaySec@i:	; 2 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	reverse@j
reverse@j:	; 2 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0xB
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xB
	global	reverse@str
reverse@str:	; 1 bytes @ 0xB
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xB
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	1
	global	??_read_a2d
??_read_a2d:	; 0 bytes @ 0xC
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x0
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0x0
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x0
	global	?_intToStr
?_intToStr:	; 2 bytes @ 0x0
	global	?___altoft
?___altoft:	; 3 bytes @ 0x0
	global	intToStr@x
intToStr@x:	; 2 bytes @ 0x0
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x0
	ds	2
	global	intToStr@str
intToStr@str:	; 1 bytes @ 0x2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x2
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x3
	global	intToStr@d
intToStr@d:	; 2 bytes @ 0x3
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x3
	ds	1
	global	??___altoft
??___altoft:	; 0 bytes @ 0x4
	global	?_read_a2d
?_read_a2d:	; 3 bytes @ 0x4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	ds	1
	global	??_intToStr
??_intToStr:	; 0 bytes @ 0x5
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	ds	1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x6
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x6
	ds	1
	global	read_a2d@channel
read_a2d@channel:	; 1 bytes @ 0x7
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x7
	global	intToStr@i
intToStr@i:	; 2 bytes @ 0x7
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x9
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xD
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xE
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x11
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x12
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x13
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x13
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x16
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x19
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1D
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1E
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1F
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x20
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x20
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x20
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x20
	global	floor@x
floor@x:	; 3 bytes @ 0x20
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x20
	ds	3
	global	??_floor
??_floor:	; 0 bytes @ 0x23
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x23
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x23
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x24
	ds	1
	global	??_ldexp
??_ldexp:	; 0 bytes @ 0x25
	ds	2
	global	floor@expon
floor@expon:	; 2 bytes @ 0x27
	global	_ldexp$3573
_ldexp$3573:	; 3 bytes @ 0x27
	ds	3
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x2A
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x2A
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x2D
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x2E
	ds	2
	global	??_eval_poly
??_eval_poly:	; 0 bytes @ 0x30
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x31
	ds	3
	global	?_log
?_log:	; 3 bytes @ 0x34
	global	log@x
log@x:	; 3 bytes @ 0x34
	ds	3
	global	??_log
??_log:	; 0 bytes @ 0x37
	ds	1
	global	log@exp
log@exp:	; 2 bytes @ 0x38
	ds	2
	global	?_exp
?_exp:	; 3 bytes @ 0x3A
	global	exp@x
exp@x:	; 3 bytes @ 0x3A
	ds	3
	global	??_exp
??_exp:	; 0 bytes @ 0x3D
	ds	1
	global	_exp$3527
_exp$3527:	; 3 bytes @ 0x3E
	ds	3
	global	exp@exp
exp@exp:	; 2 bytes @ 0x41
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x43
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0x44
	global	pow@x
pow@x:	; 3 bytes @ 0x44
	ds	3
	global	pow@y
pow@y:	; 3 bytes @ 0x47
	ds	3
	global	??_pow
??_pow:	; 0 bytes @ 0x4A
	ds	1
	global	??_ftoa
??_ftoa:	; 0 bytes @ 0x4B
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4D
	ds	1
	global	main@rec
main@rec:	; 1 bytes @ 0x4E
	ds	1
;;Data sizes: Strings 30, constant 57, data 2, bss 15, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     79      79
;; BANK1           80     24      41
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_frexp	 size(1) Largest target is 0
;;
;; ?_ldexp	 size(1) Largest target is 0
;;
;; ?_eval_poly	 size(1) Largest target is 0
;;
;; ?_floor	 size(1) Largest target is 0
;;
;; ?___altoft	float  size(1) Largest target is 0
;;
;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_exp	float  size(1) Largest target is 0
;;
;; ?_log	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?_read_a2d	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?_pow	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?_intToStr	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; eval_poly@d	PTR const  size(1) Largest target is 30
;;		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;;
;; frexp@eptr	PTR int  size(1) Largest target is 2
;;		 -> log@exp(BANK0[2]), floor@expon(BANK0[2]), 
;;
;; ftoa@res	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK1[10]), 
;;
;; intToStr@str	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK1[10]), 
;;
;; reverse@str	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK1[10]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 12
;;		 -> STR_3(CODE[9]), STR_2(CODE[9]), str(BANK1[10]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_read_a2d
;;   _main->___ftdiv
;;   _ftoa->___fttol
;;   _ftoa->___awtoft
;;   _pow->___fttol
;;   _pow->___lltoft
;;   _exp->___fttol
;;   _exp->___awtoft
;;   _exp->___ftdiv
;;   _log->___awtoft
;;   _floor->___fttol
;;   ___ftsub->___awtoft
;;   _read_a2d->___lbtoft
;;   ___lltoft->___ftpack
;;   ___altoft->___fttol
;;   ___awtoft->___ftneg
;;   ___lbtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___ftpack
;;   ___ftadd->___awtoft
;;   _DelaySec->_DelayMs
;;   _intToStr->___fttol
;;   _lcd_init->_DelayMs
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_DelayMs
;;   ___ftneg->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ftoa
;;   _ftoa->_pow
;;   _pow->_exp
;;   _exp->_log
;;   _log->_eval_poly
;;   _eval_poly->_ldexp
;;   _floor->___ftadd
;;   ___ftsub->___ftadd
;;   _read_a2d->___lbtoft
;;   _ldexp->___ftadd
;;   ___ftmul->___awtoft
;;   ___ftadd->___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_ftoa
;;   _ftoa->_pow
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
;; (0) _main                                                 2     2      0   19072
;;                                             77 BANK0      2     2      0
;;                           _DelaySec
;;                           _lcd_init
;;                          _lcd_clear
;;                           _lcd_puts
;;                            _DelayMs
;;                           _init_a2d
;;                           _lcd_goto
;;                           _read_a2d
;;                            ___ftdiv
;;                               _ftoa
;;                             ___ftge
;;                      _putchOnSerial
;;                              _getch
;; ---------------------------------------------------------------------------------
;; (1) _ftoa                                                18    12      6   17337
;;                                             75 BANK0      2     2      0
;;                                              8 BANK1     16    10      6
;;                            ___fttol
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                           _intToStr
;;                                _pow
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (2) _pow                                                 15     9      6   13644
;;                                             68 BANK0      7     1      6
;;                                              0 BANK1      8     8      0
;;                             ___ftge
;;                            ___fttol
;;                           ___lltoft
;;                            ___ftneg
;;                                _log
;;                            ___ftmul
;;                                _exp
;; ---------------------------------------------------------------------------------
;; (3) _exp                                                 10     7      3    7799
;;                                             58 BANK0     10     7      3
;;                             ___ftge
;;                            ___ftneg
;;                            ___ftmul
;;                              _floor
;;                            ___fttol
;;                           ___awtoft
;;                            ___ftsub
;;                          _eval_poly
;;                              _ldexp
;;                            ___ftdiv
;;                                _log (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _log                                                  6     3      3    4263
;;                                             52 BANK0      6     3      3
;;                             ___ftge
;;                              _frexp
;;                            ___ftmul
;;                            ___ftadd
;;                          _eval_poly
;;                           ___awtoft
;; ---------------------------------------------------------------------------------
;; (4) _eval_poly                                           10     4      6    1854
;;                                             42 BANK0     10     4      6
;;                             ___bmul
;;                            ___ftmul
;;                            ___ftadd
;;                              _ldexp (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _floor                                                9     6      3    2259
;;                                             32 BANK0      9     6      3
;;                              _frexp
;;                             ___ftge
;;                            ___fttol
;;                           ___altoft
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (4) ___ftsub                                              6     0      6    1094
;;                                             32 BANK0      6     0      6
;;                            ___ftadd
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _read_a2d                                             6     3      3     322
;;                                             12 COMMON     2     2      0
;;                                              4 BANK0      4     1      3
;;                            _DelayMs
;;                           ___lbtoft
;; ---------------------------------------------------------------------------------
;; (4) _ldexp                                               10     5      5     453
;;                                             32 BANK0     10     5      5
;;                             ___ftge
;;                            ___ftneg
;;                             ___bmul (ARG)
;;                            ___ftmul (ARG)
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             6     2      4     278
;;                                              8 COMMON     6     2      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (5) ___altoft                                             8     4      4     347
;;                                              0 BANK0      8     4      4
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awtoft                                             6     3      3     300
;;                                             11 COMMON     3     0      3
;;                                              0 BANK0      3     3      0
;;                           ___ftpack
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbtoft                                             8     5      3     231
;;                                              8 COMMON     4     1      3
;;                                              0 BANK0      4     4      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                              3 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                              _frexp (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftdiv                                             16    10      6     489
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0     10    10      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (5) ___ftadd                                             13     7      6    1049
;;                                             19 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___ftmul (ARG)
;;                              _frexp (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _DelaySec                                             5     3      2     114
;;                                              4 COMMON     5     3      2
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _intToStr                                             9     4      5    1177
;;                                              0 BANK0      9     4      5
;;                            ___awmod
;;                            ___awdiv
;;                            _reverse
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     181
;;                                              4 COMMON     3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      89
;;                                              3 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     112
;;                                              3 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (5) _frexp                                                6     2      4     224
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (5) ___ftneg                                              3     0      3      45
;;                                              8 COMMON     3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (4) ___fttol                                             14    10      4     252
;;                                              0 COMMON    14    10      4
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (5) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _putchOnSerial                                        1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _init_a2d                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _reverse                                             12    10      2     269
;;                                              0 COMMON    12    10      2
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      68
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DelaySec
;;     _DelayMs
;;   _lcd_init
;;     _DelayMs
;;     _lcd_write
;;   _lcd_clear
;;     _lcd_write
;;     _DelayMs
;;   _lcd_puts
;;     _lcd_write
;;   _DelayMs
;;   _init_a2d
;;   _lcd_goto
;;     _lcd_write
;;   _read_a2d
;;     _DelayMs
;;     ___lbtoft
;;       ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;   _ftoa
;;     ___fttol
;;     ___awtoft
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         _frexp (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;     _intToStr
;;       ___awmod
;;       ___awdiv
;;       _reverse
;;       ___fttol (ARG)
;;     _pow
;;       ___ftge
;;       ___fttol
;;       ___lltoft
;;         ___ftpack
;;       ___ftneg
;;         ___ftpack (ARG)
;;       _log
;;         ___ftge
;;         _frexp
;;         ___ftmul
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           _frexp (ARG)
;;         ___ftadd
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         _eval_poly
;;           ___bmul
;;           ___ftmul
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;           ___ftadd
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _ldexp (ARG)
;;             ___ftge
;;             ___ftneg
;;               ___ftpack (ARG)
;;             ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               ___ftmul (ARG)
;;                 ___ftpack
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         ___awtoft
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         _frexp (ARG)
;;       _exp
;;         ___ftge
;;         ___ftneg
;;           ___ftpack (ARG)
;;         ___ftmul
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           _frexp (ARG)
;;         _floor
;;           _frexp
;;           ___ftge
;;           ___fttol
;;           ___altoft
;;             ___ftpack
;;             ___fttol (ARG)
;;           ___ftadd
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         ___fttol
;;         ___awtoft
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___ftsub
;;           ___ftadd
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;         _eval_poly
;;           ___bmul
;;           ___ftmul
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;           ___ftadd
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _ldexp (ARG)
;;             ___ftge
;;             ___ftneg
;;               ___ftpack (ARG)
;;             ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               ___ftmul (ARG)
;;                 ___ftpack
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         _ldexp
;;           ___ftge
;;           ___ftneg
;;             ___ftpack (ARG)
;;           ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         ___ftdiv
;;           ___ftpack
;;         _log (ARG)
;;           ___ftge
;;           _frexp
;;           ___ftmul
;;             ___ftpack
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;           ___ftadd
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _eval_poly
;;             ___bmul
;;             ___ftmul
;;               ___ftpack
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;             ___ftadd
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               ___ftmul (ARG)
;;                 ___ftpack
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _ldexp (ARG)
;;               ___ftge
;;               ___ftneg
;;                 ___ftpack (ARG)
;;               ___bmul (ARG)
;;               ___ftmul (ARG)
;;                 ___ftpack
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 ___ftmul (ARG)
;;                   ___ftpack
;;                   ___awtoft (ARG)
;;                     ___ftpack
;;                     ___ftneg (ARG)
;;                       ___ftpack (ARG)
;;                   _frexp (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           ___awtoft
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       _frexp (ARG)
;;   ___ftge
;;   _putchOnSerial
;;   _getch
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
;;BANK1               50     18      29       7       51.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      8C      12        0.0%
;;ABS                  0      0      86       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       6       2        0.0%
;;BANK0               50     4F      4F       5       98.8%
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
;;		line 26 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rec             1   78[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DelaySec
;;		_lcd_init
;;		_lcd_clear
;;		_lcd_puts
;;		_DelayMs
;;		_init_a2d
;;		_lcd_goto
;;		_read_a2d
;;		___ftdiv
;;		_ftoa
;;		___ftge
;;		_putchOnSerial
;;		_getch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	26
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	28
	
l6262:	
;USART_main.c: 27: unsigned char rec;
;USART_main.c: 28: TRISD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	29
;USART_main.c: 29: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	30
;USART_main.c: 30: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	31
	
l6264:	
;USART_main.c: 31: ADCON1 = 3;
	movlw	(03h)
	movwf	(159)^080h	;volatile
	line	32
	
l6266:	
;USART_main.c: 32: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	33
	
l6268:	
;USART_main.c: 33: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	34
	
l6270:	
;USART_main.c: 34: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	35
	
l6272:	
;USART_main.c: 35: DelaySec(1);
	movlw	low(01h)
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	38
	
l6274:	
;USART_main.c: 38: lcd_init();
	fcall	_lcd_init
	line	39
	
l6276:	
;USART_main.c: 39: lcd_clear();
	fcall	_lcd_clear
	line	40
	
l6278:	
;USART_main.c: 40: lcd_puts("Starting...");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	41
	
l6280:	
;USART_main.c: 41: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	43
	
l6282:	
;USART_main.c: 43: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	45
	
l6284:	
;USART_main.c: 45: SPBRG = ((int)(4000000L/(16UL * 9600) -1));
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	46
	
l6286:	
;USART_main.c: 46: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	47
	
l6288:	
;USART_main.c: 47: TXSTA =0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	49
	
l6290:	
;USART_main.c: 49: init_a2d();
	fcall	_init_a2d
	line	50
	
l6292:	
;USART_main.c: 50: DelayMs(500);
	movlw	(0F4h)
	fcall	_DelayMs
	line	52
	
l6294:	
;USART_main.c: 52: lcd_clear();
	fcall	_lcd_clear
	line	53
	
l6296:	
;USART_main.c: 53: GIE=0;
	bcf	(95/8),(95)&7
	goto	l6298
	line	54
;USART_main.c: 54: while ( 1 ) {
	
l2143:	
	line	56
	
l6298:	
;USART_main.c: 56: if(send==1) {
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_send)^080h,w
	iorwf	(_send+1)^080h,w
	skipz
	goto	u4201
	goto	u4200
u4201:
	goto	l6312
u4200:
	line	57
	
l6300:	
;USART_main.c: 57: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	58
;USART_main.c: 58: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	61
;USART_main.c: 61: x= read_a2d(0);
	movlw	(0)
	fcall	_read_a2d
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+2)^080h
	line	62
;USART_main.c: 62: x = x/51.0;
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x4c
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	movf	(_x)^080h,w
	movwf	0+(?___ftdiv)+03h
	movf	(_x+1)^080h,w
	movwf	1+(?___ftdiv)+03h
	movf	(_x+2)^080h,w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	movf	(1+(?___ftdiv)),w
	movwf	(_x+1)^080h
	movf	(2+(?___ftdiv)),w
	movwf	(_x+2)^080h
	line	64
	
l6302:	
;USART_main.c: 64: ftoa(x, str, 2);
	movf	(_x)^080h,w
	movwf	(?_ftoa)^080h
	movf	(_x+1)^080h,w
	movwf	(?_ftoa+1)^080h
	movf	(_x+2)^080h,w
	movwf	(?_ftoa+2)^080h
	movlw	(_str)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(0+?_ftoa+03h)^080h
	movlw	low(02h)
	movwf	0+(?_ftoa)^080h+04h
	movlw	high(02h)
	movwf	(0+(?_ftoa)^080h+04h)+1
	fcall	_ftoa
	line	66
	
l6304:	
;USART_main.c: 66: lcd_puts(str);
	movlw	(_str&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	68
;USART_main.c: 68: if(x>2.0){
	movlw	0x0
	movwf	(?___ftge)
	movlw	0x0
	movwf	(?___ftge+1)
	movlw	0x40
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	movwf	0+(?___ftge)+03h
	movf	(_x+1)^080h,w
	movwf	1+(?___ftge)+03h
	movf	(_x+2)^080h,w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4211
	goto	u4210
u4211:
	goto	l6308
u4210:
	line	69
	
l6306:	
;USART_main.c: 69: putchOnSerial('n');
	movlw	(06Eh)
	fcall	_putchOnSerial
	line	70
;USART_main.c: 70: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	71
;USART_main.c: 71: putchOnSerial('o');
	movlw	(06Fh)
	fcall	_putchOnSerial
	line	72
;USART_main.c: 72: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	73
;USART_main.c: 73: }
	goto	l6310
	line	74
	
l2145:	
	
l6308:	
;USART_main.c: 74: else {putchOnSerial('l');
	movlw	(06Ch)
	fcall	_putchOnSerial
	line	75
;USART_main.c: 75: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	goto	l6310
	line	76
	
l2146:	
	line	77
	
l6310:	
;USART_main.c: 76: }
;USART_main.c: 77: send=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_send)^080h
	clrf	(_send+1)^080h
	line	78
;USART_main.c: 78: }
	goto	l6298
	line	79
	
l2144:	
	line	80
	
l6312:	
;USART_main.c: 79: else {
;USART_main.c: 80: rec = getch();
	fcall	_getch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@rec)
	line	81
	
l6314:	
;USART_main.c: 81: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	83
	
l6316:	
;USART_main.c: 83: if(rec!=(0)) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@rec),w
	skipz
	goto	u4220
	goto	l6334
u4220:
	line	84
	
l6318:	
;USART_main.c: 84: if(rec=='d') {
	movf	(main@rec),w
	xorlw	064h
	skipz
	goto	u4231
	goto	u4230
u4231:
	goto	l6326
u4230:
	line	85
	
l6320:	
;USART_main.c: 85: RB1=0;
	bcf	(49/8),(49)&7
	line	86
	
l6322:	
;USART_main.c: 86: lcd_goto(8);
	movlw	(08h)
	fcall	_lcd_goto
	line	87
	
l6324:	
;USART_main.c: 87: lcd_puts("Disabled");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	88
;USART_main.c: 88: }
	goto	l6334
	line	90
	
l2149:	
	
l6326:	
;USART_main.c: 90: else if(rec=='e') {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@rec),w
	xorlw	065h
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l6334
u4240:
	line	91
	
l6328:	
;USART_main.c: 91: RB1=1;
	bsf	(49/8),(49)&7
	line	92
	
l6330:	
;USART_main.c: 92: lcd_goto(8);
	movlw	(08h)
	fcall	_lcd_goto
	line	93
	
l6332:	
;USART_main.c: 93: lcd_puts("Enabled ");
	movlw	low((STR_3-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	goto	l6334
	line	94
	
l2151:	
	goto	l6334
	line	95
	
l2150:	
	goto	l6334
	
l2148:	
	line	96
	
l6334:	
;USART_main.c: 94: }
;USART_main.c: 95: }
;USART_main.c: 96: send=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_send)^080h
	movlw	high(01h)
	movwf	((_send)^080h)+1
	goto	l6298
	line	97
	
l2147:	
	goto	l6298
	line	98
	
l2152:	
	line	54
	goto	l6298
	
l2153:	
	line	100
	
l2154:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ftoa
psect	text791,local,class=CODE,delta=2
global __ptext791
__ptext791:

;; *************** function _ftoa *****************
;; Defined at:
;;		line 44 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
;; Parameters:    Size  Location     Type
;;  n               3    8[BANK1 ] float 
;;  res             1   11[BANK1 ] PTR unsigned char 
;;		 -> str(10), 
;;  afterpoint      2   12[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  fpart           3   21[BANK1 ] float 
;;  i               2   19[BANK1 ] int 
;;  ipart           2   17[BANK1 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0      10       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      16       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___fttol
;;		___awtoft
;;		___ftneg
;;		___ftadd
;;		_intToStr
;;		_pow
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text791
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
	line	44
	global	__size_of_ftoa
	__size_of_ftoa	equ	__end_of_ftoa-_ftoa
	
_ftoa:	
	opt	stack 2
; Regs used in _ftoa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l6248:	
;string.c: 46: int ipart = (int)n;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@n)^080h,w
	movwf	(?___fttol)
	movf	(ftoa@n+1)^080h,w
	movwf	(?___fttol+1)
	movf	(ftoa@n+2)^080h,w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ftoa@ipart+1)^080h
	addwf	(ftoa@ipart+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(ftoa@ipart)^080h
	addwf	(ftoa@ipart)^080h

	line	49
;string.c: 49: float fpart = n - (float)ipart;
	movf	(ftoa@n)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@n+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@n+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@ipart+1)^080h,w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(ftoa@ipart)^080h,w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(?___ftneg)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftneg+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ftoa@fpart)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ftoa@fpart+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ftoa@fpart+2)^080h
	line	52
	
l6250:	
;string.c: 52: int i = intToStr(ipart, res, 0);
	movf	(ftoa@ipart+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@ipart)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@res)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ftoa+0)+0
	movf	(??_ftoa+0)+0,w
	movwf	(0+?_intToStr+02h)
	movlw	low(0)
	movwf	0+(?_intToStr)+03h
	movlw	high(0)
	movwf	(0+(?_intToStr)+03h)+1
	fcall	_intToStr
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_intToStr)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ftoa@i+1)^080h
	addwf	(ftoa@i+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_intToStr)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ftoa@i)^080h
	addwf	(ftoa@i)^080h

	line	55
	
l6252:	
;string.c: 55: if (afterpoint != 0)
	movf	(ftoa@afterpoint+1)^080h,w
	iorwf	(ftoa@afterpoint)^080h,w
	skipnz
	goto	u4191
	goto	u4190
u4191:
	goto	l1430
u4190:
	line	57
	
l6254:	
;string.c: 56: {
;string.c: 57: res[i] = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ftoa+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@i)^080h,w
	addwf	(ftoa@res)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ftoa+1)+0
	movf	0+(??_ftoa+1)+0,w
	movwf	fsr0
	movf	(??_ftoa+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	62
	
l6256:	
;string.c: 62: fpart = fpart * pow(10, afterpoint);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@afterpoint+1)^080h,w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(ftoa@afterpoint)^080h,w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_pow)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?_pow)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?_pow)+03h
	movlw	0x0
	movwf	(?_pow)
	movlw	0x20
	movwf	(?_pow+1)
	movlw	0x41
	movwf	(?_pow+2)
	fcall	_pow
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_pow)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ftoa$3812)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_pow)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ftoa$3812+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_pow)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ftoa$3812+2)^080h
	
l6258:	
;string.c: 62: fpart = fpart * pow(10, afterpoint);
	movf	(ftoa@fpart)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@fpart+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@fpart+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3812)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3812+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3812+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ftoa@fpart)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ftoa@fpart+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ftoa@fpart+2)^080h
	line	64
	
l6260:	
;string.c: 64: intToStr((int)fpart, res + i + 1, afterpoint);
	movf	(ftoa@fpart)^080h,w
	movwf	(?___fttol)
	movf	(ftoa@fpart+1)^080h,w
	movwf	(?___fttol+1)
	movf	(ftoa@fpart+2)^080h,w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@i)^080h,w
	addwf	(ftoa@res)^080h,w
	addlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ftoa+0)+0
	movf	(??_ftoa+0)+0,w
	movwf	(0+?_intToStr+02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@afterpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_intToStr)+03h
	addwf	1+(?_intToStr)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@afterpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_intToStr)+03h
	addwf	0+(?_intToStr)+03h

	fcall	_intToStr
	goto	l1430
	line	65
	
l1429:	
	line	66
	
l1430:	
	return
	opt stack 0
GLOBAL	__end_of_ftoa
	__end_of_ftoa:
;; =============== function _ftoa ends ============

	signat	_ftoa,12408
	global	_pow
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:

;; *************** function _pow *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3   68[BANK0 ] int 
;;  y               3   71[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  yi              4    4[BANK1 ] unsigned long 
;;  sign            1    3[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   68[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       8       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftge
;;		___fttol
;;		___lltoft
;;		___ftneg
;;		_log
;;		___ftmul
;;		_exp
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text792
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
	line	6
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
	opt	stack 2
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l6210:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l6212:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@x+2),w
	iorwf	(pow@x+1),w
	iorwf	(pow@x),w
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l6220
u4130:
	line	11
	
l6214:	
	movlw	0x0
	movwf	(?___ftge)
	movlw	0x0
	movwf	(?___ftge+1)
	movlw	0x0
	movwf	(?___ftge+2)
	movf	(pow@y),w
	movwf	0+(?___ftge)+03h
	movf	(pow@y+1),w
	movwf	1+(?___ftge)+03h
	movf	(pow@y+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u4141
	goto	u4140
u4141:
	goto	l2864
u4140:
	line	12
	
l6216:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	13
	
l2864:	
	line	14
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_pow)
	movlw	0x0
	movwf	(?_pow+1)
	movlw	0x0
	movwf	(?_pow+2)
	goto	l2865
	
l6218:	
	goto	l2865
	line	15
	
l2863:	
	line	16
	
l6220:	
	movf	(pow@y+2),w
	iorwf	(pow@y+1),w
	iorwf	(pow@y),w
	skipz
	goto	u4151
	goto	u4150
u4151:
	goto	l6226
u4150:
	line	17
	
l6222:	
	movlw	0x0
	movwf	(?_pow)
	movlw	0x80
	movwf	(?_pow+1)
	movlw	0x3f
	movwf	(?_pow+2)
	goto	l2865
	
l6224:	
	goto	l2865
	
l2866:	
	line	18
	
l6226:	
	movf	(pow@x),w
	movwf	(?___ftge)
	movf	(pow@x+1),w
	movwf	(?___ftge+1)
	movf	(pow@x+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4161
	goto	u4160
u4161:
	goto	l6238
u4160:
	line	19
	
l6228:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@y),w
	movwf	(?___fttol)
	movf	(pow@y+1),w
	movwf	(?___fttol+1)
	movf	(pow@y+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	movf	(2+(?___fttol)),w
	movwf	(pow@yi+2)^080h
	movf	(1+(?___fttol)),w
	movwf	(pow@yi+1)^080h
	movf	(0+(?___fttol)),w
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	movwf	(?___lltoft+3)
	movf	(pow@yi+2)^080h,w
	movwf	(?___lltoft+2)
	movf	(pow@yi+1)^080h,w
	movwf	(?___lltoft+1)
	movf	(pow@yi)^080h,w
	movwf	(?___lltoft)

	fcall	___lltoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@y+2),w
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u4175
	movf	(pow@y+1),w
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u4175
	movf	(pow@y),w
	xorwf	(0+(?___lltoft)),w
u4175:
	skipnz
	goto	u4171
	goto	u4170
u4171:
	goto	l6234
u4170:
	line	21
	
l6230:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	22
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_pow)
	movlw	0x0
	movwf	(?_pow+1)
	movlw	0x0
	movwf	(?_pow+2)
	goto	l2865
	
l6232:	
	goto	l2865
	line	23
	
l2868:	
	line	24
	
l6234:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi)^080h,w
	andlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_pow+0)+0
	movf	(??_pow+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@sign)^080h
	line	25
	
l6236:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@x),w
	movwf	(?___ftneg)
	movf	(pow@x+1),w
	movwf	(?___ftneg+1)
	movf	(pow@x+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(pow@x)
	movf	(1+(?___ftneg)),w
	movwf	(pow@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(pow@x+2)
	goto	l6238
	line	26
	
l2867:	
	line	27
	
l6238:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@x),w
	movwf	(?_log)
	movf	(pow@x+1),w
	movwf	(?_log+1)
	movf	(pow@x+2),w
	movwf	(?_log+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3813)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3813+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3813+2)^080h
	
l6240:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@y),w
	movwf	(?___ftmul)
	movf	(pow@y+1),w
	movwf	(?___ftmul+1)
	movf	(pow@y+2),w
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3813)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3813+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3813+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_exp)
	movf	(1+(?___ftmul)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_exp+2)
	fcall	_exp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_exp)),w
	movwf	(pow@x)
	movf	(1+(?_exp)),w
	movwf	(pow@x+1)
	movf	(2+(?_exp)),w
	movwf	(pow@x+2)
	line	28
	
l6242:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@sign)^080h,w
	skipz
	goto	u4180
	goto	l2869
u4180:
	line	29
	
l6244:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@x),w
	movwf	(?___ftneg)
	movf	(pow@x+1),w
	movwf	(?___ftneg+1)
	movf	(pow@x+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_pow)
	movf	(1+(?___ftneg)),w
	movwf	(?_pow+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_pow+2)
	goto	l2865
	
l6246:	
	goto	l2865
	
l2869:	
	line	30
	line	31
	
l2865:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
;; =============== function _pow ends ============

	signat	_pow,8315
	global	_exp
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

;; *************** function _exp *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   58[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2   65[BANK0 ] int 
;;  sign            1   67[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   58[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		___ftneg
;;		___ftmul
;;		_floor
;;		___fttol
;;		___awtoft
;;		___ftsub
;;		_eval_poly
;;		_ldexp
;;		___ftdiv
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text793
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	13
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
	opt	stack 2
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l6158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l6164
u4070:
	line	32
	
l6160:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l3223
	
l6162:	
	goto	l3223
	
l3222:	
	line	34
	
l6164:	
	movlw	0x72
	movwf	(?___ftge)
	movlw	0x31
	movwf	(?___ftge+1)
	movlw	0x44
	movwf	(?___ftge+2)
	movf	(exp@x),w
	movwf	0+(?___ftge)+03h
	movf	(exp@x+1),w
	movwf	1+(?___ftge)+03h
	movf	(exp@x+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4081
	goto	u4080
u4081:
	goto	l6174
u4080:
	line	35
	
l6166:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	36
	goto	l6170
	
l6168:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l3223
	
l3226:	
	
l6170:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l3223
	
l3228:	
	goto	l3223
	
l6172:	
	goto	l3223
	line	37
	
l3224:	
	line	38
	
l6174:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(?___ftge)
	movf	(exp@x+1),w
	movwf	(?___ftge+1)
	movf	(exp@x+2),w
	movwf	(?___ftge+2)
	movlw	0x49
	movwf	0+(?___ftge)+03h
	movlw	0x3a
	movwf	1+(?___ftge)+03h
	movlw	0xc4
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4091
	goto	u4090
u4091:
	goto	l6180
u4090:
	line	39
	
l6176:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	40
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l3223
	
l6178:	
	goto	l3223
	line	41
	
l3229:	
	line	43
	
l6180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x),w
	movwf	(?___ftge)
	movf	(exp@x+1),w
	movwf	(?___ftge+1)
	movf	(exp@x+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	movlw	0
	btfss	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(exp@sign)
	line	44
	
l6182:	
	movf	(exp@sign),w
	skipz
	goto	u4100
	goto	l6186
u4100:
	line	45
	
l6184:	
	movf	(exp@x),w
	movwf	(?___ftneg)
	movf	(exp@x+1),w
	movwf	(?___ftneg+1)
	movf	(exp@x+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(exp@x)
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)
	goto	l6186
	
l3230:	
	line	46
	
l6186:	
	movlw	0xaa
	movwf	(?___ftmul)
	movlw	0xb8
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(exp@x),w
	movwf	0+(?___ftmul)+03h
	movf	(exp@x+1),w
	movwf	1+(?___ftmul)+03h
	movf	(exp@x+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(exp@x)
	movf	(1+(?___ftmul)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(exp@x+2)
	line	47
	
l6188:	
	movf	(exp@x),w
	movwf	(?_floor)
	movf	(exp@x+1),w
	movwf	(?_floor+1)
	movf	(exp@x+2),w
	movwf	(?_floor+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	movwf	(?___fttol)
	movf	(1+(?_floor)),w
	movwf	(?___fttol+1)
	movf	(2+(?_floor)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(exp@exp+1)
	addwf	(exp@exp+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(exp@exp)
	addwf	(exp@exp)

	line	48
	
l6190:	
	movf	(exp@exp+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(exp@exp),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftsub)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftsub+2)
	movf	(exp@x),w
	movwf	0+(?___ftsub)+03h
	movf	(exp@x+1),w
	movwf	1+(?___ftsub)+03h
	movf	(exp@x+2),w
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	movwf	(exp@x)
	movf	(1+(?___ftsub)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftsub)),w
	movwf	(exp@x+2)
	line	49
	
l6192:	
	movf	(exp@x),w
	movwf	(?_eval_poly)
	movf	(exp@x+1),w
	movwf	(?_eval_poly+1)
	movf	(exp@x+2),w
	movwf	(?_eval_poly+2)
	movlw	((exp@coeff-__stringbase))&0ffh
	movwf	(??_exp+0)+0
	movf	(??_exp+0)+0,w
	movwf	(0+?_eval_poly+03h)
	movlw	low(09h)
	movwf	0+(?_eval_poly)+04h
	movlw	high(09h)
	movwf	(0+(?_eval_poly)+04h)+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(?_ldexp)
	movf	(1+(?_eval_poly)),w
	movwf	(?_ldexp+1)
	movf	(2+(?_eval_poly)),w
	movwf	(?_ldexp+2)
	movf	(exp@exp+1),w
	clrf	1+(?_ldexp)+03h
	addwf	1+(?_ldexp)+03h
	movf	(exp@exp),w
	clrf	0+(?_ldexp)+03h
	addwf	0+(?_ldexp)+03h

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	movwf	(exp@x)
	movf	(1+(?_ldexp)),w
	movwf	(exp@x+1)
	movf	(2+(?_ldexp)),w
	movwf	(exp@x+2)
	line	50
	
l6194:	
	movf	(exp@sign),w
	skipz
	goto	u4110
	goto	l3231
u4110:
	goto	l6200
	line	52
	
l6196:	
	goto	l6200
	
l6198:	
	movlw	0x0
	movwf	(_exp$3527)
	movlw	0x80
	movwf	(_exp$3527+1)
	movlw	0x7f
	movwf	(_exp$3527+2)
	goto	l3236
	
l3234:	
	
l6200:	
	movlw	0xff
	movwf	(_exp$3527)
	movlw	0x7f
	movwf	(_exp$3527+1)
	movlw	0x7f
	movwf	(_exp$3527+2)
	
l3236:	
	movf	(exp@x+2),w
	xorwf	(_exp$3527+2),w
	skipz
	goto	u4125
	movf	(exp@x+1),w
	xorwf	(_exp$3527+1),w
	skipz
	goto	u4125
	movf	(exp@x),w
	xorwf	(_exp$3527),w
u4125:
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l6206
u4120:
	line	53
	
l6202:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l3223
	
l6204:	
	goto	l3223
	
l3232:	
	line	54
	
l6206:	
	movf	(exp@x),w
	movwf	(?___ftdiv)
	movf	(exp@x+1),w
	movwf	(?___ftdiv+1)
	movf	(exp@x+2),w
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	0+(?___ftdiv)+03h
	movlw	0x80
	movwf	1+(?___ftdiv)+03h
	movlw	0x3f
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movf	(1+(?___ftdiv)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_exp+2)
	goto	l3223
	
l6208:	
	goto	l3223
	line	55
	
l3231:	
	line	56
	line	57
	
l3223:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
;; =============== function _exp ends ============

	signat	_exp,4219
	global	_log
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

;; *************** function _log *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   52[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2   56[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   52[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftge
;;		_frexp
;;		___ftmul
;;		___ftadd
;;		_eval_poly
;;		___awtoft
;; This function is called by:
;;		_pow
;;		_log10
;; This function uses a non-reentrant model
;;
psect	text794
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	6
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
	opt	stack 2
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l6136:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x),w
	movwf	(?___ftge)
	movf	(log@x+1),w
	movwf	(?___ftge+1)
	movf	(log@x+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4051
	goto	u4050
u4051:
	goto	l6142
u4050:
	line	25
	
l6138:	
	movlw	low(021h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(021h)
	movwf	((_errno)^080h)+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3257
	
l6140:	
	goto	l3257
	line	27
	
l3256:	
	line	28
	
l6142:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l6148
u4060:
	line	29
	
l6144:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	30
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3257
	
l6146:	
	goto	l3257
	line	31
	
l3258:	
	line	32
	
l6148:	
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0xbf
	movwf	(?___ftadd+2)
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	movlw	(log@exp)&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	0+(?_frexp)+03h
	movf	(log@x),w
	movwf	(?_frexp)
	movf	(log@x+1),w
	movwf	(?_frexp+1)
	movf	(log@x+2),w
	movwf	(?_frexp+2)
	fcall	_frexp
	movf	(0+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_frexp)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_frexp)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(log@x)
	movf	(1+(?___ftadd)),w
	movwf	(log@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(log@x+2)
	line	33
	
l6150:	
	movlw	low(-1)
	addwf	(log@exp),f
	skipnc
	incf	(log@exp+1),f
	movlw	high(-1)
	addwf	(log@exp+1),f
	line	34
	
l6152:	
	movf	(log@x),w
	movwf	(?_eval_poly)
	movf	(log@x+1),w
	movwf	(?_eval_poly+1)
	movf	(log@x+2),w
	movwf	(?_eval_poly+2)
	movlw	((log@coeff-__stringbase))&0ffh
	movwf	(??_log+0)+0
	movf	(??_log+0)+0,w
	movwf	(0+?_eval_poly+03h)
	movlw	low(08h)
	movwf	0+(?_eval_poly)+04h
	movlw	high(08h)
	movwf	(0+(?_eval_poly)+04h)+1
	fcall	_eval_poly
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	line	35
	
l6154:	
	movf	(log@x),w
	movwf	(?___ftadd)
	movf	(log@x+1),w
	movwf	(?___ftadd+1)
	movf	(log@x+2),w
	movwf	(?___ftadd+2)
	movlw	0x72
	movwf	(?___ftmul)
	movlw	0x31
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(log@exp+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(log@exp),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l3257
	
l6156:	
	line	36
	
l3257:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
;; =============== function _log ends ============

	signat	_log,4219
	global	_eval_poly
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   42[BANK0 ] int 
;;  d               1   45[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   46[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   49[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		___ftmul
;;		___ftadd
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text795
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
	line	5
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
	opt	stack 2
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l6126:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(?___bmul)
	movf	(eval_poly@n),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(eval_poly@res)
	fcall	stringdir
	movwf	(eval_poly@res+1)
	fcall	stringdir
	movwf	(eval_poly@res+2)
	line	9
	goto	l6130
	
l3306:	
	line	10
	
l6128:	
	movlw	(03h)
	movwf	(??_eval_poly+0)+0
	movf	(??_eval_poly+0)+0,w
	movwf	(?___bmul)
	movlw	low(-1)
	addwf	(eval_poly@n),f
	skipnc
	incf	(eval_poly@n+1),f
	movlw	high(-1)
	addwf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftadd)
	fcall	stringdir
	movwf	(?___ftadd+1)
	fcall	stringdir
	movwf	(?___ftadd+2)
	movf	(eval_poly@res),w
	movwf	(?___ftmul)
	movf	(eval_poly@res+1),w
	movwf	(?___ftmul+1)
	movf	(eval_poly@res+2),w
	movwf	(?___ftmul+2)
	movf	(eval_poly@x),w
	movwf	0+(?___ftmul)+03h
	movf	(eval_poly@x+1),w
	movwf	1+(?___ftmul)+03h
	movf	(eval_poly@x+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(eval_poly@res)
	movf	(1+(?___ftadd)),w
	movwf	(eval_poly@res+1)
	movf	(2+(?___ftadd)),w
	movwf	(eval_poly@res+2)
	goto	l6130
	
l3305:	
	line	9
	
l6130:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l6128
u4040:
	goto	l6132
	
l3307:	
	line	11
	
l6132:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l3308
	
l6134:	
	line	12
	
l3308:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
;; =============== function _eval_poly ends ============

	signat	_eval_poly,12411
	global	_floor
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

;; *************** function _floor *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   32[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   36[BANK0 ] int 
;;  expon           2   39[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_frexp
;;		___ftge
;;		___fttol
;;		___altoft
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text796
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
	line	14
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
	opt	stack 2
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l6098:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(?_frexp)
	movf	(floor@x+1),w
	movwf	(?_frexp+1)
	movf	(floor@x+2),w
	movwf	(?_frexp+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	0+(?_frexp)+03h
	fcall	_frexp
	line	19
	
l6100:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u4001
	goto	u4000
u4001:
	goto	l6112
u4000:
	line	20
	
l6102:	
	movf	(floor@x),w
	movwf	(?___ftge)
	movf	(floor@x+1),w
	movwf	(?___ftge+1)
	movf	(floor@x+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4011
	goto	u4010
u4011:
	goto	l6108
u4010:
	line	21
	
l6104:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l3243
	
l6106:	
	goto	l3243
	
l3242:	
	line	22
	
l6108:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l3243
	
l6110:	
	goto	l3243
	line	23
	
l3241:	
	line	24
	
l6112:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l6116
u4020:
	line	25
	
l6114:	
	goto	l3243
	
l3244:	
	line	26
	
l6116:	
	movf	(floor@x),w
	movwf	(?___fttol)
	movf	(floor@x+1),w
	movwf	(?___fttol+1)
	movf	(floor@x+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft+3)
	movf	(2+(?___fttol)),w
	movwf	(?___altoft+2)
	movf	(1+(?___fttol)),w
	movwf	(?___altoft+1)
	movf	(0+(?___fttol)),w
	movwf	(?___altoft)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(?___ftge)
	movf	(floor@x+1),w
	movwf	(?___ftge+1)
	movf	(floor@x+2),w
	movwf	(?___ftge+2)
	movf	(floor@i),w
	movwf	0+(?___ftge)+03h
	movf	(floor@i+1),w
	movwf	1+(?___ftge)+03h
	movf	(floor@i+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u4031
	goto	u4030
u4031:
	goto	l6122
u4030:
	line	28
	
l6118:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0xbf
	movwf	(?___ftadd+2)
	movf	(floor@i),w
	movwf	0+(?___ftadd)+03h
	movf	(floor@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(floor@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	l3243
	
l6120:	
	goto	l3243
	
l3245:	
	line	29
	
l6122:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l3243
	
l6124:	
	line	30
	
l3243:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
;; =============== function _floor ends ============

	signat	_floor,4219
	global	___ftsub
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   32[BANK0 ] float 
;;  f1              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text797
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 2
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l6092:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l6094:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l2963
	
l6096:	
	line	20
	
l2963:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_read_a2d
psect	text798,local,class=CODE,delta=2
global __ptext798
__ptext798:

;; *************** function _read_a2d *****************
;; Defined at:
;;		line 123 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    4[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayMs
;;		___lbtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text798
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	123
	global	__size_of_read_a2d
	__size_of_read_a2d	equ	__end_of_read_a2d-_read_a2d
	
_read_a2d:	
	opt	stack 5
; Regs used in _read_a2d: [wreg+status,2+status,0+pclath+cstack]
;read_a2d@channel stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d@channel)
	line	124
	
l6080:	
;USART_main.c: 124: channel &=0x07;
	movlw	(07h)
	movwf	(??_read_a2d+0)+0
	movf	(??_read_a2d+0)+0,w
	andwf	(read_a2d@channel),f
	line	125
;USART_main.c: 125: ADCON0 = 0x41;
	movlw	(041h)
	movwf	(31)	;volatile
	line	126
;USART_main.c: 126: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	127
	
l6082:	
;USART_main.c: 127: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	128
	
l6084:	
;USART_main.c: 128: ADCON0 |=(channel<<3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_a2d@channel),w
	movwf	(??_read_a2d+0)+0
	movlw	(03h)-1
u3985:
	clrc
	rlf	(??_read_a2d+0)+0,f
	addlw	-1
	skipz
	goto	u3985
	clrc
	rlf	(??_read_a2d+0)+0,w
	movwf	(??_read_a2d+1)+0
	movf	(??_read_a2d+1)+0,w
	iorwf	(31),f	;volatile
	line	129
	
l6086:	
;USART_main.c: 129: GO_nDONE = 1;
	bsf	(250/8),(250)&7
	line	130
;USART_main.c: 130: while(GO_nDONE)
	goto	l2171
	
l2172:	
	line	131
;USART_main.c: 131: continue;
	
l2171:	
	line	130
	btfsc	(250/8),(250)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l2171
u3990:
	goto	l6088
	
l2173:	
	line	132
	
l6088:	
;USART_main.c: 132: return( (float) ADRESH);
	movf	(30),w	;volatile
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_read_a2d)
	movf	(1+(?___lbtoft)),w
	movwf	(?_read_a2d+1)
	movf	(2+(?___lbtoft)),w
	movwf	(?_read_a2d+2)
	goto	l2174
	
l6090:	
	line	133
	
l2174:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d
	__end_of_read_a2d:
;; =============== function _read_a2d ends ============

	signat	_read_a2d,4219
	global	_ldexp
psect	text799,local,class=CODE,delta=2
global __ptext799
__ptext799:

;; *************** function _ldexp *****************
;; Defined at:
;;		line 278 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   32[BANK0 ] float 
;;  newexp          2   35[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text799
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	278
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
	opt	stack 3
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l6030:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u3921
	goto	u3920
u3921:
	goto	l6036
u3920:
	line	280
	
l6032:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3271
	
l6034:	
	goto	l3271
	
l3270:	
	line	282
	
l6036:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u3935:
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	decfsz	btemp+1,f
	goto	u3935
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	
l6038:	
	rlf	0+(ldexp@value)+01h,w
	rlf	0+(ldexp@value)+01h,w
	andlw	1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	287
	
l6040:	
	btfss	(ldexp@newexp+1),7
	goto	u3941
	goto	u3940
u3941:
	goto	l6048
u3940:
	line	288
	
l6042:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	289
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3271
	
l6044:	
	goto	l3271
	line	290
	
l6046:	
	goto	l6076
	line	291
	
l3272:	
	
l6048:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3955
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u3955:

	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l6072
u3950:
	line	292
	
l6050:	
	movlw	low(022h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_errno)^080h
	movlw	high(022h)
	movwf	((_errno)^080h)+1
	line	293
	
l6052:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value),w
	movwf	(?___ftge)
	movf	(ldexp@value+1),w
	movwf	(?___ftge+1)
	movf	(ldexp@value+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3961
	goto	u3960
u3961:
	goto	l6068
u3960:
	goto	l6058
	line	294
	
l6054:	
	goto	l6058
	
l6056:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3573)
	movlw	0x80
	movwf	(_ldexp$3573+1)
	movlw	0x7f
	movwf	(_ldexp$3573+2)
	goto	l6060
	
l3277:	
	
l6058:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3573)
	movlw	0x7f
	movwf	(_ldexp$3573+1)
	movlw	0x7f
	movwf	(_ldexp$3573+2)
	goto	l6060
	
l3279:	
	
l6060:	
	movf	(_ldexp$3573),w
	movwf	(?___ftneg)
	movf	(_ldexp$3573+1),w
	movwf	(?___ftneg+1)
	movf	(_ldexp$3573+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l3271
	
l6062:	
	goto	l3271
	
l6064:	
	goto	l6076
	line	295
	
l3275:	
	line	296
	goto	l6068
	
l6066:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3271
	
l3282:	
	
l6068:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3271
	
l3284:	
	goto	l3271
	
l6070:	
	goto	l3271
	
l3280:	
	line	297
	goto	l6076
	line	298
	
l3274:	
	line	300
	
l6072:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	movlw	01h
	movwf	btemp+1
u3975:
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	decfsz	btemp+1,f
	goto	u3975
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	
l6074:	
	movf	(ldexp@newexp),w
	andlw	01h
	movwf	(??_ldexp+0)+0
	rrf	(??_ldexp+0)+0,f
	rrf	(??_ldexp+0)+0,f
	movf	0+(ldexp@value)+01h,w
	xorwf	(??_ldexp+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+01h
	goto	l6076
	line	305
	
l3285:	
	goto	l6076
	
l3273:	
	line	306
	
l6076:	
	goto	l3271
	
l6078:	
	line	307
	
l3271:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
;; =============== function _ldexp ends ============

	signat	_ldexp,8315
	global	___lltoft
psect	text800,local,class=CODE,delta=2
global __ptext800
__ptext800:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text800
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l6020:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l6024
	
l3118:	
	line	42
	
l6022:	
	movlw	01h
u3905:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3905

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l6024
	line	44
	
l3117:	
	line	41
	
l6024:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l6022
u3910:
	goto	l6026
	
l3119:	
	line	45
	
l6026:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l3120
	
l6028:	
	line	46
	
l3120:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text801,local,class=CODE,delta=2
global __ptext801
__ptext801:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    0[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[BANK0 ] unsigned char 
;;  exp             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text801
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 2
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l6002:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l6004:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l6006:	
	btfss	(___altoft@c+3),7
	goto	u3871
	goto	u3870
u3871:
	goto	l6014
u3870:
	line	48
	
l6008:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	
l6010:	
	clrf	(___altoft@sign)
	bsf	status,0
	rlf	(___altoft@sign),f
	goto	l6014
	line	50
	
l3108:	
	line	52
	goto	l6014
	
l3110:	
	line	53
	
l6012:	
	movlw	01h
u3885:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u3885

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l6014
	line	55
	
l3109:	
	line	52
	
l6014:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l6012
u3890:
	goto	l6016
	
l3111:	
	line	56
	
l6016:	
	movf	(___altoft@c),w
	movwf	(?___ftpack)
	movf	(___altoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___altoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l3112
	
l6018:	
	line	57
	
l3112:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___awtoft
psect	text802,local,class=CODE,delta=2
global __ptext802
__ptext802:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         3       3       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ftoa
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text802
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 3
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5994:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3861
	goto	u3860
u3861:
	goto	l5998
u3860:
	line	38
	
l5996:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l5998
	line	40
	
l3016:	
	line	41
	
l5998:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l3017
	
l6000:	
	line	42
	
l3017:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text803,local,class=CODE,delta=2
global __ptext803
__ptext803:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_a2d
;; This function uses a non-reentrant model
;;
psect	text803
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 5
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l5990:	
	movf	(___lbtoft@c),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___lbtoft+0)+0)
	clrf	((??___lbtoft+0)+0+1)
	clrf	((??___lbtoft+0)+0+2)
	movf	0+(??___lbtoft+0)+0,w
	movwf	(?___ftpack)
	movf	1+(??___lbtoft+0)+0,w
	movwf	(?___ftpack+1)
	movf	2+(??___lbtoft+0)+0,w
	movwf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lbtoft+3)+0
	movf	(??___lbtoft+3)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	goto	l3005
	
l5992:	
	line	30
	
l3005:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text804,local,class=CODE,delta=2
global __ptext804
__ptext804:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;;  f2              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   14[BANK0 ] unsigned um
;;  sign            1   18[BANK0 ] unsigned char 
;;  cntr            1   17[BANK0 ] unsigned char 
;;  exp             1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ftoa
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;;		_log10
;; This function uses a non-reentrant model
;;
psect	text804
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5940:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l5946
u3720:
	line	57
	
l5942:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2979
	
l5944:	
	goto	l2979
	
l2978:	
	line	58
	
l5946:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l5952
u3730:
	line	59
	
l5948:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2979
	
l5950:	
	goto	l2979
	
l2980:	
	line	60
	
l5952:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3745:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3740:
	addlw	-1
	skipz
	goto	u3745
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3755:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3750:
	addlw	-1
	skipz
	goto	u3755
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l5954:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5956:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5958:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5960:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l5962:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5964
	line	70
	
l2981:	
	line	71
	
l5964:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l5968
u3760:
	line	72
	
l5966:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3771
	addwf	(___ftmul@f3_as_product+1),f
u3771:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3772
	addwf	(___ftmul@f3_as_product+2),f
u3772:

	goto	l5968
	
l2982:	
	line	73
	
l5968:	
	movlw	01h
u3785:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3785

	line	74
	
l5970:	
	movlw	01h
u3795:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3795
	line	75
	
l5972:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l5964
u3800:
	goto	l5974
	
l2983:	
	line	76
	
l5974:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5976
	line	77
	
l2984:	
	line	78
	
l5976:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l5980
u3810:
	line	79
	
l5978:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3821
	addwf	(___ftmul@f3_as_product+1),f
u3821:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3822
	addwf	(___ftmul@f3_as_product+2),f
u3822:

	goto	l5980
	
l2985:	
	line	80
	
l5980:	
	movlw	01h
u3835:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3835

	line	81
	
l5982:	
	movlw	01h
u3845:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3845

	line	82
	
l5984:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l5976
u3850:
	goto	l5986
	
l2986:	
	line	83
	
l5986:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l2979
	
l5988:	
	line	84
	
l2979:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text805,local,class=CODE,delta=2
global __ptext805
__ptext805:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[COMMON] float 
;;  f1              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK0 ] float 
;;  sign            1    9[BANK0 ] unsigned char 
;;  exp             1    8[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text805
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l5898:	
	movf	(___ftdiv@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l5904
u3640:
	line	56
	
l5900:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2969
	
l5902:	
	goto	l2969
	
l2968:	
	line	57
	
l5904:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l5910
u3650:
	line	58
	
l5906:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2969
	
l5908:	
	goto	l2969
	
l2970:	
	line	59
	
l5910:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l5912:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l5914:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3665:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3660:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l5916:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3675:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3670:
	addlw	-1
	skipz
	goto	u3675
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l5918:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l5920:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l5922:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l5924
	line	69
	
l2971:	
	line	70
	
l5924:	
	movlw	01h
u3685:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3685
	line	71
	
l5926:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3695
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3695
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3695:
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l5932
u3690:
	line	72
	
l5928:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l5930:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l5932
	line	74
	
l2972:	
	line	75
	
l5932:	
	movlw	01h
u3705:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3705
	line	76
	
l5934:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l5924
u3710:
	goto	l5936
	
l2973:	
	line	77
	
l5936:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l2969
	
l5938:	
	line	78
	
l2969:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text806,local,class=CODE,delta=2
global __ptext806
__ptext806:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   19[BANK0 ] float 
;;  f2              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   31[BANK0 ] unsigned char 
;;  exp2            1   30[BANK0 ] unsigned char 
;;  sign            1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   19[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ftoa
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text806
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5828:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l5830:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3400
	goto	l5836
u3400:
	
l5832:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l5840
u3410:
	
l5834:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l5840
u3420:
	goto	l5836
	
l2926:	
	line	93
	
l5836:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2927
	
l5838:	
	goto	l2927
	
l2924:	
	line	94
	
l5840:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3430
	goto	l2930
u3430:
	
l5842:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3441
	goto	u3440
u3441:
	goto	l5846
u3440:
	
l5844:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l5846
u3450:
	
l2930:	
	line	95
	goto	l2927
	
l2928:	
	line	96
	
l5846:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l5848:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2931
u3460:
	line	98
	
l5850:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2931:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l2932
u3470:
	line	100
	
l5852:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2932:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5854:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5856:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l5868
u3480:
	goto	l5858
	line	109
	
l2934:	
	line	110
	
l5858:	
	movlw	01h
u3495:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3495
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l5860:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l5866
u3500:
	
l5862:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l5858
u3510:
	goto	l5866
	
l2936:	
	goto	l5866
	
l2937:	
	line	113
	goto	l5866
	
l2939:	
	line	114
	
l5864:	
	movlw	01h
u3525:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3525

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l5866
	line	116
	
l2938:	
	line	113
	
l5866:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l5864
u3530:
	goto	l2941
	
l2940:	
	line	117
	goto	l2941
	
l2933:	
	
l5868:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l2941
u3540:
	goto	l5870
	line	120
	
l2943:	
	line	121
	
l5870:	
	movlw	01h
u3555:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3555
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l5872:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3561
	goto	u3560
u3561:
	goto	l5878
u3560:
	
l5874:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l5870
u3570:
	goto	l5878
	
l2945:	
	goto	l5878
	
l2946:	
	line	124
	goto	l5878
	
l2948:	
	line	125
	
l5876:	
	movlw	01h
u3585:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3585

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l5878
	line	127
	
l2947:	
	line	124
	
l5878:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l5876
u3590:
	goto	l2941
	
l2949:	
	goto	l2941
	line	128
	
l2942:	
	line	129
	
l2941:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l5882
u3600:
	line	131
	
l5880:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l5882
	line	133
	
l2950:	
	line	134
	
l5882:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l5886
u3610:
	line	136
	
l5884:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l5886
	line	138
	
l2951:	
	line	139
	
l5886:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3621
	addwf	(___ftadd@f2+1),f
u3621:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3622
	addwf	(___ftadd@f2+2),f
u3622:

	line	141
	
l5888:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l5894
u3630:
	line	142
	
l5890:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l5892:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l5894
	line	145
	
l2952:	
	line	146
	
l5894:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l2927
	
l5896:	
	line	148
	
l2927:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_DelaySec
psect	text807,local,class=CODE,delta=2
global __ptext807
__ptext807:

;; *************** function _DelaySec *****************
;; Defined at:
;;		line 136 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
;; Parameters:    Size  Location     Type
;;  sec             2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text807
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	136
	global	__size_of_DelaySec
	__size_of_DelaySec	equ	__end_of_DelaySec-_DelaySec
	
_DelaySec:	
	opt	stack 6
; Regs used in _DelaySec: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
l5820:	
;USART_main.c: 137: for(int i=0;i<sec;i++)
	clrf	(DelaySec@i)
	clrf	(DelaySec@i+1)
	goto	l5826
	line	138
	
l2178:	
	
l5822:	
;USART_main.c: 138: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	137
	
l5824:	
	movlw	low(01h)
	addwf	(DelaySec@i),f
	skipnc
	incf	(DelaySec@i+1),f
	movlw	high(01h)
	addwf	(DelaySec@i+1),f
	goto	l5826
	
l2177:	
	
l5826:	
	movf	(DelaySec@i+1),w
	xorlw	80h
	movwf	(??_DelaySec+0)+0
	movf	(DelaySec@sec+1),w
	xorlw	80h
	subwf	(??_DelaySec+0)+0,w
	skipz
	goto	u3395
	movf	(DelaySec@sec),w
	subwf	(DelaySec@i),w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l5822
u3390:
	goto	l2180
	
l2179:	
	line	139
	
l2180:	
	return
	opt stack 0
GLOBAL	__end_of_DelaySec
	__end_of_DelaySec:
;; =============== function _DelaySec ends ============

	signat	_DelaySec,4216
	global	_intToStr
psect	text808,local,class=CODE,delta=2
global __ptext808
__ptext808:

;; *************** function _intToStr *****************
;; Defined at:
;;		line 24 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] int 
;;  str             1    2[BANK0 ] PTR unsigned char 
;;		 -> str(10), 
;;  d               2    3[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_reverse
;; This function is called by:
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text808
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
	line	24
	global	__size_of_intToStr
	__size_of_intToStr	equ	__end_of_intToStr-_intToStr
	
_intToStr:	
	opt	stack 5
; Regs used in _intToStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l5796:	
;string.c: 25: int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@i)
	clrf	(intToStr@i+1)
	line	26
;string.c: 26: while (x)
	goto	l5804
	
l1421:	
	line	28
	
l5798:	
;string.c: 27: {
;string.c: 28: str[i++] = (x%10) + '0';
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(intToStr@x+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(intToStr@x),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
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
	
l5800:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	line	29
	
l5802:	
;string.c: 29: x = x/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(intToStr@x+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(intToStr@x),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@x+1)
	addwf	(intToStr@x+1)
	movf	(0+(?___awdiv)),w
	clrf	(intToStr@x)
	addwf	(intToStr@x)

	goto	l5804
	line	30
	
l1420:	
	line	26
	
l5804:	
	movf	((intToStr@x+1)),w
	iorwf	((intToStr@x)),w
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l5798
u3370:
	goto	l5810
	
l1422:	
	line	34
;string.c: 30: }
;string.c: 34: while (i < d)
	goto	l5810
	
l1424:	
	line	35
	
l5806:	
;string.c: 35: str[i++] = '0';
	movlw	(030h)
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
	
l5808:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	goto	l5810
	
l1423:	
	line	34
	
l5810:	
	movf	(intToStr@i+1),w
	xorlw	80h
	movwf	(??_intToStr+0)+0
	movf	(intToStr@d+1),w
	xorlw	80h
	subwf	(??_intToStr+0)+0,w
	skipz
	goto	u3385
	movf	(intToStr@d),w
	subwf	(intToStr@i),w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l5806
u3380:
	goto	l5812
	
l1425:	
	line	37
	
l5812:	
;string.c: 37: reverse(str, i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(intToStr@i+1),w
	clrf	(?_reverse+1)
	addwf	(?_reverse+1)
	movf	(intToStr@i),w
	clrf	(?_reverse)
	addwf	(?_reverse)

	movf	(intToStr@str),w
	fcall	_reverse
	line	38
	
l5814:	
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
	
l5816:	
;string.c: 39: return i;
	movf	(intToStr@i+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(intToStr@i),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	goto	l1426
	
l5818:	
	line	40
	
l1426:	
	return
	opt stack 0
GLOBAL	__end_of_intToStr
	__end_of_intToStr:
;; =============== function _intToStr ends ============

	signat	_intToStr,12410
	global	_lcd_init
psect	text809,local,class=CODE,delta=2
global __ptext809
__ptext809:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
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
psect	text809
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l5764:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l5766:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l5768:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l5770:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5772:	
	bcf	(73/8),(73)&7
	line	62
	
l5774:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l5776:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l5778:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l5780
	
l722:	
	goto	l5780
	
l721:	
	
l5780:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l5780
u3350:
	
l723:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l5782:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l5784:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l5786:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5788:	
	bcf	(73/8),(73)&7
	line	69
	
l5790:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_1244)
	goto	l5792
	
l725:	
	goto	l5792
	
l724:	
	
l5792:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_1244),f
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l5792
u3360:
	goto	l5794
	
l726:	
	line	70
	
l5794:	
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
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_goto
psect	text810,local,class=CODE,delta=2
global __ptext810
__ptext810:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 52 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
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
psect	text810
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	52
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 6
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	53
	
l5760:	
;lcd.c: 53: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	54
	
l5762:	
;lcd.c: 54: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	55
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text811,local,class=CODE,delta=2
global __ptext811
__ptext811:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMMON] PTR const unsigned char 
;;		 -> STR_3(9), STR_2(9), str(10), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
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
psect	text811
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l5752:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l5758
	
l707:	
	line	40
	
l5754:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5756:	
	movlw	low(01h)
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(lcd_puts@s+1),f
	goto	l5758
	
l706:	
	line	39
	
l5758:	
	movf	(lcd_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l5754
u3340:
	goto	l709
	
l708:	
	line	41
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text812,local,class=CODE,delta=2
global __ptext812
__ptext812:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
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
;; This function uses a non-reentrant model
;;
psect	text812
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 6
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l5748:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l5750:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_frexp
psect	text813,local,class=CODE,delta=2
global __ptext813
__ptext813:

;; *************** function _frexp *****************
;; Defined at:
;;		line 255 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] PTR const unsigned char 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> log@exp(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text813
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	255
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
	opt	stack 3
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l5720:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l5728
u3320:
	line	257
	
l5722:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	258
	
l5724:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l3267
	
l5726:	
	goto	l3267
	line	259
	
l3266:	
	line	261
	
l5728:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u3335:
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	decfsz	btemp+1,f
	goto	u3335
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	
l5730:	
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l5732:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l5734:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l5736:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l5738:	
	goto	l3267
	
l5740:	
	line	274
	
l3267:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
;; =============== function _frexp ends ============

	signat	_frexp,8315
	global	___awmod
psect	text814,local,class=CODE,delta=2
global __ptext814
__ptext814:

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
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text814
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5668:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3221
	goto	u3220
u3221:
	goto	l5672
u3220:
	line	10
	
l5670:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5672
	line	12
	
l3088:	
	line	13
	
l5672:	
	btfss	(___awmod@divisor+1),7
	goto	u3231
	goto	u3230
u3231:
	goto	l5676
u3230:
	line	14
	
l5674:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5676
	
l3089:	
	line	15
	
l5676:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3241
	goto	u3240
u3241:
	goto	l5694
u3240:
	line	16
	
l5678:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5684
	
l3092:	
	line	18
	
l5680:	
	movlw	01h
	
u3255:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3255
	line	19
	
l5682:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5684
	line	20
	
l3091:	
	line	17
	
l5684:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l5680
u3260:
	goto	l5686
	
l3093:	
	goto	l5686
	line	21
	
l3094:	
	line	22
	
l5686:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3275
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l5690
u3270:
	line	23
	
l5688:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l5690
	
l3095:	
	line	24
	
l5690:	
	movlw	01h
	
u3285:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3285
	line	25
	
l5692:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l5686
u3290:
	goto	l5694
	
l3096:	
	goto	l5694
	line	26
	
l3090:	
	line	27
	
l5694:	
	movf	(___awmod@sign),w
	skipz
	goto	u3300
	goto	l5698
u3300:
	line	28
	
l5696:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5698
	
l3097:	
	line	29
	
l5698:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3098
	
l5700:	
	line	30
	
l3098:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text815,local,class=CODE,delta=2
global __ptext815
__ptext815:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_pow
;;		_exp
;;		_floor
;;		_log
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text815
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5648:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l5652
u3170:
	line	7
	
l5650:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3181
	goto	u3182
u3181:
	addwf	(??___ftge+0)+1,f
	
u3182:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3183
	goto	u3184
u3183:
	addwf	(??___ftge+0)+2,f
	
u3184:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l5652
	
l3047:	
	line	8
	
l5652:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l5656
u3190:
	line	9
	
l5654:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3201
	goto	u3202
u3201:
	addwf	(??___ftge+0)+1,f
	
u3202:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3203
	goto	u3204
u3203:
	addwf	(??___ftge+0)+2,f
	
u3204:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l5656
	
l3048:	
	line	10
	
l5656:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5658:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5660:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3215
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3215
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3215:
	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l5664
u3210:
	
l5662:	
	clrc
	
	goto	l3049
	
l5442:	
	
l5664:	
	setc
	
	goto	l3049
	
l5444:	
	goto	l3049
	
l5666:	
	line	13
	
l3049:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text816,local,class=CODE,delta=2
global __ptext816
__ptext816:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text816
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l5640:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3161
	goto	u3160
u3161:
	goto	l5644
u3160:
	line	18
	
l5642:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l5644
	
l3043:	
	line	19
	
l5644:	
	goto	l3044
	
l5646:	
	line	20
	
l3044:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text817,local,class=CODE,delta=2
global __ptext817
__ptext817:

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
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text817
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5600:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3061
	goto	u3060
u3061:
	goto	l5604
u3060:
	line	11
	
l5602:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l5604
	line	13
	
l3020:	
	line	14
	
l5604:	
	btfss	(___awdiv@dividend+1),7
	goto	u3071
	goto	u3070
u3071:
	goto	l5610
u3070:
	line	15
	
l5606:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5608:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l5610
	line	17
	
l3021:	
	line	18
	
l5610:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5612:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3081
	goto	u3080
u3081:
	goto	l5632
u3080:
	line	20
	
l5614:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l5620
	
l3024:	
	line	22
	
l5616:	
	movlw	01h
	
u3095:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3095
	line	23
	
l5618:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l5620
	line	24
	
l3023:	
	line	21
	
l5620:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l5616
u3100:
	goto	l5622
	
l3025:	
	goto	l5622
	line	25
	
l3026:	
	line	26
	
l5622:	
	movlw	01h
	
u3115:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3115
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3125
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3125:
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l5628
u3120:
	line	28
	
l5624:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5626:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l5628
	line	30
	
l3027:	
	line	31
	
l5628:	
	movlw	01h
	
u3135:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3135
	line	32
	
l5630:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l5622
u3140:
	goto	l5632
	
l3028:	
	goto	l5632
	line	33
	
l3022:	
	line	34
	
l5632:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3150
	goto	l5636
u3150:
	line	35
	
l5634:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l5636
	
l3029:	
	line	36
	
l5636:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3030
	
l5638:	
	line	37
	
l3030:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text818,local,class=CODE,delta=2
global __ptext818
__ptext818:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text818
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5548:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l5554
u2950:
	line	50
	
l5550:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2990
	
l5552:	
	goto	l2990
	
l2989:	
	line	51
	
l5554:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2965:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2960:
	addlw	-1
	skipz
	goto	u2965
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5556:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5558:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5560:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5562:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5564:	
	btfss	(___fttol@exp1),7
	goto	u2971
	goto	u2970
u2971:
	goto	l5574
u2970:
	line	57
	
l5566:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l5572
u2980:
	line	58
	
l5568:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2990
	
l5570:	
	goto	l2990
	
l2992:	
	goto	l5572
	line	59
	
l2993:	
	line	60
	
l5572:	
	movlw	01h
u2995:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2995

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l5572
u3000:
	goto	l5584
	
l2994:	
	line	62
	goto	l5584
	
l2991:	
	line	63
	
l5574:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l5582
u3010:
	line	64
	
l5576:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2990
	
l5578:	
	goto	l2990
	
l2996:	
	line	65
	goto	l5582
	
l2998:	
	line	66
	
l5580:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3025:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3025
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l5582
	line	68
	
l2997:	
	line	65
	
l5582:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l5580
u3030:
	goto	l5584
	
l2999:	
	goto	l5584
	line	69
	
l2995:	
	line	70
	
l5584:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3040
	goto	l5588
u3040:
	line	71
	
l5586:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l5588
	
l3000:	
	line	72
	
l5588:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2990
	
l5590:	
	line	73
	
l2990:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text819,local,class=CODE,delta=2
global __ptext819
__ptext819:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___abtoft
;;		___lwtoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text819
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5518:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2840
	goto	l5522
u2840:
	
l5520:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l5528
u2850:
	goto	l5522
	
l3290:	
	line	65
	
l5522:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3291
	
l5524:	
	goto	l3291
	
l3288:	
	line	66
	goto	l5528
	
l3293:	
	line	67
	
l5526:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2865:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2865

	goto	l5528
	line	69
	
l3292:	
	line	66
	
l5528:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l5526
u2870:
	goto	l3295
	
l3294:	
	line	70
	goto	l3295
	
l3296:	
	line	71
	
l5530:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l5532:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l5534:	
	movlw	01h
u2885:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2885

	line	74
	
l3295:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l5530
u2890:
	goto	l5538
	
l3297:	
	line	75
	goto	l5538
	
l3299:	
	line	76
	
l5536:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2905:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2905
	goto	l5538
	line	78
	
l3298:	
	line	75
	
l5538:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l5536
u2910:
	
l3300:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l3301
u2920:
	line	80
	
l5540:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3301:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5542:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2935:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2930:
	addlw	-1
	skipz
	goto	u2935
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5544:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2940
	goto	l3302
u2940:
	line	84
	
l5546:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3302:	
	line	85
	line	86
	
l3291:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___bmul
psect	text820,local,class=CODE,delta=2
global __ptext820
__ptext820:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text820
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 3
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l5504:	
	clrf	(___bmul@product)
	line	6
	
l2874:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l5508
u2820:
	line	8
	
l5506:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l5508
	
l2875:	
	line	9
	
l5508:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l5510:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l5512:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2874
u2830:
	goto	l5514
	
l2876:	
	line	12
	
l5514:	
	movf	(___bmul@product),w
	goto	l2877
	
l5516:	
	line	13
	
l2877:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_getch
psect	text821,local,class=CODE,delta=2
global __ptext821
__ptext821:

;; *************** function _getch *****************
;; Defined at:
;;		line 108 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
psect	text821
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	108
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	110
	
l5492:	
;USART_main.c: 110: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l5500
u2810:
	line	111
	
l5494:	
;USART_main.c: 111: return RCREG;
	movf	(26),w	;volatile
	goto	l2164
	
l5496:	
	goto	l2164
	
l5498:	
	goto	l2164
	line	112
	
l2163:	
	line	113
	
l5500:	
;USART_main.c: 112: else
;USART_main.c: 113: return (0);
	movlw	(0)
	goto	l2164
	
l5502:	
	goto	l2164
	
l2165:	
	line	114
	
l2164:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putchOnSerial
psect	text822,local,class=CODE,delta=2
global __ptext822
__ptext822:

;; *************** function _putchOnSerial *****************
;; Defined at:
;;		line 102 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text822
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	102
	global	__size_of_putchOnSerial
	__size_of_putchOnSerial	equ	__end_of_putchOnSerial-_putchOnSerial
	
_putchOnSerial:	
	opt	stack 7
; Regs used in _putchOnSerial: [wreg]
;putchOnSerial@byte stored from wreg
	movwf	(putchOnSerial@byte)
	line	104
	
l5488:	
;USART_main.c: 104: while(!TXIF)
	goto	l2157
	
l2158:	
	line	105
;USART_main.c: 105: continue;
	
l2157:	
	line	104
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l2157
u2800:
	goto	l5490
	
l2159:	
	line	106
	
l5490:	
;USART_main.c: 106: TXREG = byte;
	movf	(putchOnSerial@byte),w
	movwf	(25)	;volatile
	line	107
	
l2160:	
	return
	opt stack 0
GLOBAL	__end_of_putchOnSerial
	__end_of_putchOnSerial:
;; =============== function _putchOnSerial ends ============

	signat	_putchOnSerial,4216
	global	_init_a2d
psect	text823,local,class=CODE,delta=2
global __ptext823
__ptext823:

;; *************** function _init_a2d *****************
;; Defined at:
;;		line 116 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
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
psect	text823
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\USART_main.c"
	line	116
	global	__size_of_init_a2d
	__size_of_init_a2d	equ	__end_of_init_a2d-_init_a2d
	
_init_a2d:	
	opt	stack 7
; Regs used in _init_a2d: [wreg]
	line	117
	
l5484:	
;USART_main.c: 117: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	118
;USART_main.c: 118: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	119
	
l5486:	
;USART_main.c: 119: ADON=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	120
	
l2168:	
	return
	opt stack 0
GLOBAL	__end_of_init_a2d
	__end_of_init_a2d:
;; =============== function _init_a2d ends ============

	signat	_init_a2d,88
	global	_reverse
psect	text824,local,class=CODE,delta=2
global __ptext824
__ptext824:

;; *************** function _reverse *****************
;; Defined at:
;;		line 9 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR unsigned char 
;;		 -> str(10), 
;;  len             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  str             1   11[COMMON] PTR unsigned char 
;;		 -> str(10), 
;;  j               2    9[COMMON] int 
;;  i               2    7[COMMON] int 
;;  temp            2    5[COMMON] int 
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
;;      Locals:         7       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text824
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
	line	9
	global	__size_of_reverse
	__size_of_reverse	equ	__end_of_reverse-_reverse
	
_reverse:	
	opt	stack 5
; Regs used in _reverse: [wreg-fsr0h+status,2+status,0]
;reverse@str stored from wreg
	movwf	(reverse@str)
	line	10
	
l5472:	
;string.c: 10: int i=0, j=len-1, temp;
	clrf	(reverse@i)
	clrf	(reverse@i+1)
	
l5474:	
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
	goto	l5482
	
l1415:	
	line	13
	
l5476:	
;string.c: 12: {
;string.c: 13: temp = str[i];
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
	
l5478:	
;string.c: 16: i++; j--;
	movlw	low(01h)
	addwf	(reverse@i),f
	skipnc
	incf	(reverse@i+1),f
	movlw	high(01h)
	addwf	(reverse@i+1),f
	
l5480:	
	movlw	low(-1)
	addwf	(reverse@j),f
	skipnc
	incf	(reverse@j+1),f
	movlw	high(-1)
	addwf	(reverse@j+1),f
	goto	l5482
	line	17
	
l1414:	
	line	11
	
l5482:	
	movf	(reverse@i+1),w
	xorlw	80h
	movwf	(??_reverse+0)+0
	movf	(reverse@j+1),w
	xorlw	80h
	subwf	(??_reverse+0)+0,w
	skipz
	goto	u2795
	movf	(reverse@j),w
	subwf	(reverse@i),w
u2795:

	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l5476
u2790:
	goto	l1417
	
l1416:	
	line	18
	
l1417:	
	return
	opt stack 0
GLOBAL	__end_of_reverse
	__end_of_reverse:
;; =============== function _reverse ends ============

	signat	_reverse,8312
	global	_lcd_write
psect	text825,local,class=CODE,delta=2
global __ptext825
__ptext825:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
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
psect	text825
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 6
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l5458:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l5460:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5462:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2775:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2775
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l5464:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5466:	
	bcf	(73/8),(73)&7
	line	28
	
l5468:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l5470
	
l698:	
	goto	l5470
	
l697:	
	
l5470:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l5470
u2780:
	goto	l700
	
l699:	
	line	29
	
l700:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_DelayMs
psect	text826,local,class=CODE,delta=2
global __ptext826
__ptext826:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\delay.c"
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
;;		_lcd_clear
;;		_lcd_init
;;		_main
;;		_read_a2d
;;		_DelaySec
;; This function uses a non-reentrant model
;;
psect	text826
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\delay.c"
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
	
l5450:	
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
	goto	l5452
	
l6:	
	goto	l5452
	
l5:	
	
l5452:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l5452
u2740:
	goto	l5454
	
l7:	
	line	24
	
l5454:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l4
u2750:
	goto	l5456
	
l8:	
	line	25
	
l5456:	
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
psect	text827,local,class=CODE,delta=2
global __ptext827
__ptext827:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
