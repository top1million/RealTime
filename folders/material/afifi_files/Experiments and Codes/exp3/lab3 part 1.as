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
# 13 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
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
	FNCALL	_intToStr,___awmod
	FNCALL	_intToStr,___awdiv
	FNCALL	_intToStr,_reverse
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_DelaySec,_DelayMs
	FNROOT	_main
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
	global	_errno
	global	_x
	global	_str
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
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
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
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
	
STR_3:	
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	0
psect	strings
	
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
	
STR_2:	
	retlw	98	;'b'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	0
psect	strings
	file	"lab3 part 1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_errno:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_x:
       ds      3

_str:
       ds      10

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_pow$3806
_pow$3806:	; 3 bytes @ 0x0
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
	global	_ftoa$3805
_ftoa$3805:	; 3 bytes @ 0xE
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_init_a2d
?_init_a2d:	; 0 bytes @ 0x0
	global	??_init_a2d
??_init_a2d:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	?_reverse
?_reverse:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
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
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??_frexp
??_frexp:	; 0 bytes @ 0x4
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
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x5
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
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
	global	lcd_init@_dcnt_2125
lcd_init@_dcnt_2125:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	DelaySec@i
DelaySec@i:	; 2 bytes @ 0x7
	global	reverse@i
reverse@i:	; 2 bytes @ 0x7
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
	global	_ldexp$3584
_ldexp$3584:	; 3 bytes @ 0x27
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
	global	_exp$3538
_exp$3538:	; 3 bytes @ 0x3E
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
;;Data sizes: Strings 37, constant 57, data 0, bss 15, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     78      80
;; BANK1           80     24      37
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
;; ?_read_a2d	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
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
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 14
;;		 -> STR_3(CODE[14]), STR_2(CODE[11]), str(BANK1[10]), STR_1(CODE[12]), 
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
;;   _intToStr->___fttol
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;   _DelaySec->_DelayMs
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
;; (0) _main                                                 2     2      0   18983
;;                                             77 BANK0      1     1      0
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
;; (2) _intToStr                                             9     4      5    1177
;;                                              0 BANK0      9     4      5
;;                            ___awmod
;;                            ___awdiv
;;                            _reverse
;;                            ___fttol (ARG)
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
;; (1) _lcd_init                                             3     3      0     181
;;                                              4 COMMON     3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _DelaySec                                             5     3      2     114
;;                                              4 COMMON     5     3      2
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
;; (3) _reverse                                             12    10      2     269
;;                                              0 COMMON    12    10      2
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _init_a2d                                             0     0      0       0
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
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      83       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4E      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     18      25       7       46.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      89      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rec             1    0        unsigned char 
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l6191:	
;ADC_EXMAPLE.c: 22: unsigned char rec;
;ADC_EXMAPLE.c: 23: TRISD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	24
;ADC_EXMAPLE.c: 24: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	25
;ADC_EXMAPLE.c: 25: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	26
	
l6193:	
;ADC_EXMAPLE.c: 26: ADCON1 = 3;
	movlw	(03h)
	movwf	(159)^080h	;volatile
	line	27
	
l6195:	
;ADC_EXMAPLE.c: 27: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	28
	
l6197:	
;ADC_EXMAPLE.c: 28: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	29
	
l6199:	
;ADC_EXMAPLE.c: 29: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	30
	
l6201:	
;ADC_EXMAPLE.c: 30: DelaySec(1);
	movlw	low(01h)
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	33
	
l6203:	
;ADC_EXMAPLE.c: 33: lcd_init();
	fcall	_lcd_init
	line	34
	
l6205:	
;ADC_EXMAPLE.c: 34: lcd_clear();
	fcall	_lcd_clear
	line	35
	
l6207:	
;ADC_EXMAPLE.c: 35: lcd_puts("Starting...");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	36
	
l6209:	
;ADC_EXMAPLE.c: 36: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	38
	
l6211:	
;ADC_EXMAPLE.c: 38: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	41
	
l6213:	
;ADC_EXMAPLE.c: 41: init_a2d();
	fcall	_init_a2d
	line	42
	
l6215:	
;ADC_EXMAPLE.c: 42: DelayMs(500);
	movlw	(0F4h)
	fcall	_DelayMs
	line	44
	
l6217:	
;ADC_EXMAPLE.c: 44: lcd_clear();
	fcall	_lcd_clear
	line	45
	
l6219:	
;ADC_EXMAPLE.c: 45: GIE=0;
	bcf	(95/8),(95)&7
	goto	l6221
	line	46
;ADC_EXMAPLE.c: 46: while ( 1 ) {
	
l707:	
	line	48
	
l6221:	
;ADC_EXMAPLE.c: 48: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	49
	
l6223:	
;ADC_EXMAPLE.c: 49: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	52
	
l6225:	
;ADC_EXMAPLE.c: 52: x= read_a2d(0);
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
	line	53
	
l6227:	
;ADC_EXMAPLE.c: 53: x = x/51.0;
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
	line	55
	
l6229:	
;ADC_EXMAPLE.c: 55: ftoa(x, str, 2);
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
	line	57
	
l6231:	
;ADC_EXMAPLE.c: 57: lcd_puts(str);
	movlw	(_str&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	58
	
l6233:	
;ADC_EXMAPLE.c: 58: if(x > 2.0){
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
	goto	u4121
	goto	u4120
u4121:
	goto	l6243
u4120:
	line	59
	
l6235:	
;ADC_EXMAPLE.c: 59: lcd_clear();
	fcall	_lcd_clear
	line	60
	
l6237:	
;ADC_EXMAPLE.c: 60: lcd_puts("bigger 2.0");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	61
	
l6239:	
;ADC_EXMAPLE.c: 61: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	62
	
l6241:	
;ADC_EXMAPLE.c: 62: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	63
;ADC_EXMAPLE.c: 63: }
	goto	l6221
	line	64
	
l708:	
	line	65
	
l6243:	
;ADC_EXMAPLE.c: 64: else {
;ADC_EXMAPLE.c: 65: lcd_puts("less than 2.0");
	movlw	low((STR_3-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	66
	
l6245:	
;ADC_EXMAPLE.c: 66: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	67
	
l6247:	
;ADC_EXMAPLE.c: 67: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	goto	l6221
	line	69
	
l709:	
	goto	l6221
	line	71
	
l710:	
	line	46
	goto	l6221
	
l711:	
	line	73
	
l712:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ftoa
psect	text743,local,class=CODE,delta=2
global __ptext743
__ptext743:

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
psect	text743
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
	line	44
	global	__size_of_ftoa
	__size_of_ftoa	equ	__end_of_ftoa-_ftoa
	
_ftoa:	
	opt	stack 2
; Regs used in _ftoa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l6177:	
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
	
l6179:	
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
	
l6181:	
;string.c: 55: if (afterpoint != 0)
	movf	(ftoa@afterpoint+1)^080h,w
	iorwf	(ftoa@afterpoint)^080h,w
	skipnz
	goto	u4111
	goto	u4110
u4111:
	goto	l2157
u4110:
	line	57
	
l6183:	
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
	
l6185:	
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
	movwf	(_ftoa$3805)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_pow)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ftoa$3805+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_pow)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ftoa$3805+2)^080h
	
l6187:	
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
	movf	(_ftoa$3805)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3805+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3805+2)^080h,w
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
	
l6189:	
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
	goto	l2157
	line	65
	
l2156:	
	line	66
	
l2157:	
	return
	opt stack 0
GLOBAL	__end_of_ftoa
	__end_of_ftoa:
;; =============== function _ftoa ends ============

	signat	_ftoa,12408
	global	_pow
psect	text744,local,class=CODE,delta=2
global __ptext744
__ptext744:

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
psect	text744
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
	line	6
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
	opt	stack 2
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l6139:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l6141:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(pow@x+2),w
	iorwf	(pow@x+1),w
	iorwf	(pow@x),w
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l6149
u4050:
	line	11
	
l6143:	
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
	goto	u4061
	goto	u4060
u4061:
	goto	l2841
u4060:
	line	12
	
l6145:	
	movlw	low(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	13
	
l2841:	
	line	14
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_pow)
	movlw	0x0
	movwf	(?_pow+1)
	movlw	0x0
	movwf	(?_pow+2)
	goto	l2842
	
l6147:	
	goto	l2842
	line	15
	
l2840:	
	line	16
	
l6149:	
	movf	(pow@y+2),w
	iorwf	(pow@y+1),w
	iorwf	(pow@y),w
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l6155
u4070:
	line	17
	
l6151:	
	movlw	0x0
	movwf	(?_pow)
	movlw	0x80
	movwf	(?_pow+1)
	movlw	0x3f
	movwf	(?_pow+2)
	goto	l2842
	
l6153:	
	goto	l2842
	
l2843:	
	line	18
	
l6155:	
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
	goto	u4081
	goto	u4080
u4081:
	goto	l6167
u4080:
	line	19
	
l6157:	
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
	goto	u4095
	movf	(pow@y+1),w
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u4095
	movf	(pow@y),w
	xorwf	(0+(?___lltoft)),w
u4095:
	skipnz
	goto	u4091
	goto	u4090
u4091:
	goto	l6163
u4090:
	line	21
	
l6159:	
	movlw	low(021h)
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	22
	movlw	0x0
	movwf	(?_pow)
	movlw	0x0
	movwf	(?_pow+1)
	movlw	0x0
	movwf	(?_pow+2)
	goto	l2842
	
l6161:	
	goto	l2842
	line	23
	
l2845:	
	line	24
	
l6163:	
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
	
l6165:	
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
	goto	l6167
	line	26
	
l2844:	
	line	27
	
l6167:	
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
	movwf	(_pow$3806)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3806+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3806+2)^080h
	
l6169:	
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
	movf	(_pow$3806)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3806+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3806+2)^080h,w
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
	
l6171:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@sign)^080h,w
	skipz
	goto	u4100
	goto	l2846
u4100:
	line	29
	
l6173:	
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
	goto	l2842
	
l6175:	
	goto	l2842
	
l2846:	
	line	30
	line	31
	
l2842:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
;; =============== function _pow ends ============

	signat	_pow,8315
	global	_exp
psect	text745,local,class=CODE,delta=2
global __ptext745
__ptext745:

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
psect	text745
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	13
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
	opt	stack 2
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l6087:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l6093
u3990:
	line	32
	
l6089:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l3200
	
l6091:	
	goto	l3200
	
l3199:	
	line	34
	
l6093:	
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
	goto	u4001
	goto	u4000
u4001:
	goto	l6103
u4000:
	line	35
	
l6095:	
	movlw	low(022h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	36
	goto	l6099
	
l6097:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l3200
	
l3203:	
	
l6099:	
	movlw	0xff
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l3200
	
l3205:	
	goto	l3200
	
l6101:	
	goto	l3200
	line	37
	
l3201:	
	line	38
	
l6103:	
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
	goto	u4011
	goto	u4010
u4011:
	goto	l6109
u4010:
	line	39
	
l6105:	
	movlw	low(022h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	40
	movlw	0x0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l3200
	
l6107:	
	goto	l3200
	line	41
	
l3206:	
	line	43
	
l6109:	
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
	
l6111:	
	movf	(exp@sign),w
	skipz
	goto	u4020
	goto	l6115
u4020:
	line	45
	
l6113:	
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
	goto	l6115
	
l3207:	
	line	46
	
l6115:	
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
	
l6117:	
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
	
l6119:	
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
	
l6121:	
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
	
l6123:	
	movf	(exp@sign),w
	skipz
	goto	u4030
	goto	l3208
u4030:
	goto	l6129
	line	52
	
l6125:	
	goto	l6129
	
l6127:	
	movlw	0x0
	movwf	(_exp$3538)
	movlw	0x80
	movwf	(_exp$3538+1)
	movlw	0x7f
	movwf	(_exp$3538+2)
	goto	l3213
	
l3211:	
	
l6129:	
	movlw	0xff
	movwf	(_exp$3538)
	movlw	0x7f
	movwf	(_exp$3538+1)
	movlw	0x7f
	movwf	(_exp$3538+2)
	
l3213:	
	movf	(exp@x+2),w
	xorwf	(_exp$3538+2),w
	skipz
	goto	u4045
	movf	(exp@x+1),w
	xorwf	(_exp$3538+1),w
	skipz
	goto	u4045
	movf	(exp@x),w
	xorwf	(_exp$3538),w
u4045:
	skipz
	goto	u4041
	goto	u4040
u4041:
	goto	l6135
u4040:
	line	53
	
l6131:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l3200
	
l6133:	
	goto	l3200
	
l3209:	
	line	54
	
l6135:	
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
	goto	l3200
	
l6137:	
	goto	l3200
	line	55
	
l3208:	
	line	56
	line	57
	
l3200:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
;; =============== function _exp ends ============

	signat	_exp,4219
	global	_log
psect	text746,local,class=CODE,delta=2
global __ptext746
__ptext746:

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
psect	text746
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	6
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
	opt	stack 2
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l6065:	
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
	goto	u3971
	goto	u3970
u3971:
	goto	l6071
u3970:
	line	25
	
l6067:	
	movlw	low(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	26
	movlw	0x0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3234
	
l6069:	
	goto	l3234
	line	27
	
l3233:	
	line	28
	
l6071:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u3981
	goto	u3980
u3981:
	goto	l6077
u3980:
	line	29
	
l6073:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	30
	movlw	0x0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3234
	
l6075:	
	goto	l3234
	line	31
	
l3235:	
	line	32
	
l6077:	
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
	
l6079:	
	movlw	low(-1)
	addwf	(log@exp),f
	skipnc
	incf	(log@exp+1),f
	movlw	high(-1)
	addwf	(log@exp+1),f
	line	34
	
l6081:	
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
	
l6083:	
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
	goto	l3234
	
l6085:	
	line	36
	
l3234:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
;; =============== function _log ends ============

	signat	_log,4219
	global	_eval_poly
psect	text747,local,class=CODE,delta=2
global __ptext747
__ptext747:

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
psect	text747
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
	line	5
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
	opt	stack 2
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l6055:	
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
	goto	l6059
	
l3283:	
	line	10
	
l6057:	
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
	goto	l6059
	
l3282:	
	line	9
	
l6059:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l6057
u3960:
	goto	l6061
	
l3284:	
	line	11
	
l6061:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l3285
	
l6063:	
	line	12
	
l3285:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
;; =============== function _eval_poly ends ============

	signat	_eval_poly,12411
	global	_floor
psect	text748,local,class=CODE,delta=2
global __ptext748
__ptext748:

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
psect	text748
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
	line	14
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
	opt	stack 2
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l6027:	
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
	
l6029:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u3921
	goto	u3920
u3921:
	goto	l6041
u3920:
	line	20
	
l6031:	
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
	goto	u3931
	goto	u3930
u3931:
	goto	l6037
u3930:
	line	21
	
l6033:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l3220
	
l6035:	
	goto	l3220
	
l3219:	
	line	22
	
l6037:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l3220
	
l6039:	
	goto	l3220
	line	23
	
l3218:	
	line	24
	
l6041:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l6045
u3940:
	line	25
	
l6043:	
	goto	l3220
	
l3221:	
	line	26
	
l6045:	
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
	goto	u3951
	goto	u3950
u3951:
	goto	l6051
u3950:
	line	28
	
l6047:	
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
	goto	l3220
	
l6049:	
	goto	l3220
	
l3222:	
	line	29
	
l6051:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l3220
	
l6053:	
	line	30
	
l3220:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
;; =============== function _floor ends ============

	signat	_floor,4219
	global	___ftsub
psect	text749,local,class=CODE,delta=2
global __ptext749
__ptext749:

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
psect	text749
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 2
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l6021:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l6023:	
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
	goto	l2940
	
l6025:	
	line	20
	
l2940:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_read_a2d
psect	text750,local,class=CODE,delta=2
global __ptext750
__ptext750:

;; *************** function _read_a2d *****************
;; Defined at:
;;		line 83 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
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
psect	text750
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
	line	83
	global	__size_of_read_a2d
	__size_of_read_a2d	equ	__end_of_read_a2d-_read_a2d
	
_read_a2d:	
	opt	stack 5
; Regs used in _read_a2d: [wreg+status,2+status,0+pclath+cstack]
;read_a2d@channel stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d@channel)
	line	84
	
l6009:	
;ADC_EXMAPLE.c: 84: channel &=0x07;
	movlw	(07h)
	movwf	(??_read_a2d+0)+0
	movf	(??_read_a2d+0)+0,w
	andwf	(read_a2d@channel),f
	line	85
;ADC_EXMAPLE.c: 85: ADCON0 = 0x41;
	movlw	(041h)
	movwf	(31)	;volatile
	line	86
;ADC_EXMAPLE.c: 86: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	87
	
l6011:	
;ADC_EXMAPLE.c: 87: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	88
	
l6013:	
;ADC_EXMAPLE.c: 88: ADCON0 |=(channel<<3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_a2d@channel),w
	movwf	(??_read_a2d+0)+0
	movlw	(03h)-1
u3905:
	clrc
	rlf	(??_read_a2d+0)+0,f
	addlw	-1
	skipz
	goto	u3905
	clrc
	rlf	(??_read_a2d+0)+0,w
	movwf	(??_read_a2d+1)+0
	movf	(??_read_a2d+1)+0,w
	iorwf	(31),f	;volatile
	line	89
	
l6015:	
;ADC_EXMAPLE.c: 89: GO_nDONE = 1;
	bsf	(250/8),(250)&7
	line	90
;ADC_EXMAPLE.c: 90: while(GO_nDONE)
	goto	l718
	
l719:	
	line	91
;ADC_EXMAPLE.c: 91: continue;
	
l718:	
	line	90
	btfsc	(250/8),(250)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l718
u3910:
	goto	l6017
	
l720:	
	line	92
	
l6017:	
;ADC_EXMAPLE.c: 92: return( (float) ADRESH);
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
	goto	l721
	
l6019:	
	line	93
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d
	__end_of_read_a2d:
;; =============== function _read_a2d ends ============

	signat	_read_a2d,4219
	global	_ldexp
psect	text751,local,class=CODE,delta=2
global __ptext751
__ptext751:

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
psect	text751
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	278
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
	opt	stack 3
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l5959:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l5965
u3840:
	line	280
	
l5961:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3248
	
l5963:	
	goto	l3248
	
l3247:	
	line	282
	
l5965:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u3855:
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	decfsz	btemp+1,f
	goto	u3855
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	
l5967:	
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
	
l5969:	
	btfss	(ldexp@newexp+1),7
	goto	u3861
	goto	u3860
u3861:
	goto	l5977
u3860:
	line	288
	
l5971:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	289
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3248
	
l5973:	
	goto	l3248
	line	290
	
l5975:	
	goto	l6005
	line	291
	
l3249:	
	
l5977:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3875
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u3875:

	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l6001
u3870:
	line	292
	
l5979:	
	movlw	low(022h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	293
	
l5981:	
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
	goto	u3881
	goto	u3880
u3881:
	goto	l5997
u3880:
	goto	l5987
	line	294
	
l5983:	
	goto	l5987
	
l5985:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3584)
	movlw	0x80
	movwf	(_ldexp$3584+1)
	movlw	0x7f
	movwf	(_ldexp$3584+2)
	goto	l5989
	
l3254:	
	
l5987:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3584)
	movlw	0x7f
	movwf	(_ldexp$3584+1)
	movlw	0x7f
	movwf	(_ldexp$3584+2)
	goto	l5989
	
l3256:	
	
l5989:	
	movf	(_ldexp$3584),w
	movwf	(?___ftneg)
	movf	(_ldexp$3584+1),w
	movwf	(?___ftneg+1)
	movf	(_ldexp$3584+2),w
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
	goto	l3248
	
l5991:	
	goto	l3248
	
l5993:	
	goto	l6005
	line	295
	
l3252:	
	line	296
	goto	l5997
	
l5995:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3248
	
l3259:	
	
l5997:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3248
	
l3261:	
	goto	l3248
	
l5999:	
	goto	l3248
	
l3257:	
	line	297
	goto	l6005
	line	298
	
l3251:	
	line	300
	
l6001:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	movlw	01h
	movwf	btemp+1
u3895:
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	decfsz	btemp+1,f
	goto	u3895
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	
l6003:	
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
	goto	l6005
	line	305
	
l3262:	
	goto	l6005
	
l3250:	
	line	306
	
l6005:	
	goto	l3248
	
l6007:	
	line	307
	
l3248:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
;; =============== function _ldexp ends ============

	signat	_ldexp,8315
	global	___lltoft
psect	text752,local,class=CODE,delta=2
global __ptext752
__ptext752:

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
psect	text752
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 4
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5949:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l5953
	
l3095:	
	line	42
	
l5951:	
	movlw	01h
u3825:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3825

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l5953
	line	44
	
l3094:	
	line	41
	
l5953:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l5951
u3830:
	goto	l5955
	
l3096:	
	line	45
	
l5955:	
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
	goto	l3097
	
l5957:	
	line	46
	
l3097:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text753,local,class=CODE,delta=2
global __ptext753
__ptext753:

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
psect	text753
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 2
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l5931:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l5933:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l5935:	
	btfss	(___altoft@c+3),7
	goto	u3791
	goto	u3790
u3791:
	goto	l5943
u3790:
	line	48
	
l5937:	
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
	
l5939:	
	clrf	(___altoft@sign)
	bsf	status,0
	rlf	(___altoft@sign),f
	goto	l5943
	line	50
	
l3085:	
	line	52
	goto	l5943
	
l3087:	
	line	53
	
l5941:	
	movlw	01h
u3805:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u3805

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l5943
	line	55
	
l3086:	
	line	52
	
l5943:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l5941
u3810:
	goto	l5945
	
l3088:	
	line	56
	
l5945:	
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
	goto	l3089
	
l5947:	
	line	57
	
l3089:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___awtoft
psect	text754,local,class=CODE,delta=2
global __ptext754
__ptext754:

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
psect	text754
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 3
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5923:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3781
	goto	u3780
u3781:
	goto	l5927
u3780:
	line	38
	
l5925:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l5927
	line	40
	
l2993:	
	line	41
	
l5927:	
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
	goto	l2994
	
l5929:	
	line	42
	
l2994:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text755,local,class=CODE,delta=2
global __ptext755
__ptext755:

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
psect	text755
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
	
l5919:	
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
	goto	l2982
	
l5921:	
	line	30
	
l2982:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text756,local,class=CODE,delta=2
global __ptext756
__ptext756:

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
psect	text756
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5869:	
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
	goto	u3641
	goto	u3640
u3641:
	goto	l5875
u3640:
	line	57
	
l5871:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2956
	
l5873:	
	goto	l2956
	
l2955:	
	line	58
	
l5875:	
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
	goto	u3651
	goto	u3650
u3651:
	goto	l5881
u3650:
	line	59
	
l5877:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2956
	
l5879:	
	goto	l2956
	
l2957:	
	line	60
	
l5881:	
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
u3665:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3660:
	addlw	-1
	skipz
	goto	u3665
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
u3675:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3670:
	addlw	-1
	skipz
	goto	u3675
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
	
l5883:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5885:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5887:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5889:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l5891:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5893
	line	70
	
l2958:	
	line	71
	
l5893:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l5897
u3680:
	line	72
	
l5895:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3691
	addwf	(___ftmul@f3_as_product+1),f
u3691:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3692
	addwf	(___ftmul@f3_as_product+2),f
u3692:

	goto	l5897
	
l2959:	
	line	73
	
l5897:	
	movlw	01h
u3705:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3705

	line	74
	
l5899:	
	movlw	01h
u3715:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3715
	line	75
	
l5901:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l5893
u3720:
	goto	l5903
	
l2960:	
	line	76
	
l5903:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l5905
	line	77
	
l2961:	
	line	78
	
l5905:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l5909
u3730:
	line	79
	
l5907:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3741
	addwf	(___ftmul@f3_as_product+1),f
u3741:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3742
	addwf	(___ftmul@f3_as_product+2),f
u3742:

	goto	l5909
	
l2962:	
	line	80
	
l5909:	
	movlw	01h
u3755:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3755

	line	81
	
l5911:	
	movlw	01h
u3765:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3765

	line	82
	
l5913:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l5905
u3770:
	goto	l5915
	
l2963:	
	line	83
	
l5915:	
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
	goto	l2956
	
l5917:	
	line	84
	
l2956:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text757,local,class=CODE,delta=2
global __ptext757
__ptext757:

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
psect	text757
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l5827:	
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
	goto	u3561
	goto	u3560
u3561:
	goto	l5833
u3560:
	line	56
	
l5829:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2946
	
l5831:	
	goto	l2946
	
l2945:	
	line	57
	
l5833:	
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
	goto	u3571
	goto	u3570
u3571:
	goto	l5839
u3570:
	line	58
	
l5835:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2946
	
l5837:	
	goto	l2946
	
l2947:	
	line	59
	
l5839:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l5841:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l5843:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3585:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3580:
	addlw	-1
	skipz
	goto	u3585
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l5845:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3595:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3590:
	addlw	-1
	skipz
	goto	u3595
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l5847:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l5849:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l5851:	
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
	goto	l5853
	line	69
	
l2948:	
	line	70
	
l5853:	
	movlw	01h
u3605:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3605
	line	71
	
l5855:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3615
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3615
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3615:
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l5861
u3610:
	line	72
	
l5857:	
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
	
l5859:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l5861
	line	74
	
l2949:	
	line	75
	
l5861:	
	movlw	01h
u3625:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3625
	line	76
	
l5863:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l5853
u3630:
	goto	l5865
	
l2950:	
	line	77
	
l5865:	
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
	goto	l2946
	
l5867:	
	line	78
	
l2946:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text758,local,class=CODE,delta=2
global __ptext758
__ptext758:

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
psect	text758
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 2
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5757:	
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
	
l5759:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3320
	goto	l5765
u3320:
	
l5761:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l5769
u3330:
	
l5763:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l5769
u3340:
	goto	l5765
	
l2903:	
	line	93
	
l5765:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2904
	
l5767:	
	goto	l2904
	
l2901:	
	line	94
	
l5769:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3350
	goto	l2907
u3350:
	
l5771:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l5775
u3360:
	
l5773:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l5775
u3370:
	
l2907:	
	line	95
	goto	l2904
	
l2905:	
	line	96
	
l5775:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l5777:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2908
u3380:
	line	98
	
l5779:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2908:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l2909
u3390:
	line	100
	
l5781:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2909:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5783:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5785:	
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
	goto	u3401
	goto	u3400
u3401:
	goto	l5797
u3400:
	goto	l5787
	line	109
	
l2911:	
	line	110
	
l5787:	
	movlw	01h
u3415:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3415
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l5789:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l5795
u3420:
	
l5791:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l5787
u3430:
	goto	l5795
	
l2913:	
	goto	l5795
	
l2914:	
	line	113
	goto	l5795
	
l2916:	
	line	114
	
l5793:	
	movlw	01h
u3445:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3445

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l5795
	line	116
	
l2915:	
	line	113
	
l5795:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l5793
u3450:
	goto	l2918
	
l2917:	
	line	117
	goto	l2918
	
l2910:	
	
l5797:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l2918
u3460:
	goto	l5799
	line	120
	
l2920:	
	line	121
	
l5799:	
	movlw	01h
u3475:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3475
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l5801:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3481
	goto	u3480
u3481:
	goto	l5807
u3480:
	
l5803:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l5799
u3490:
	goto	l5807
	
l2922:	
	goto	l5807
	
l2923:	
	line	124
	goto	l5807
	
l2925:	
	line	125
	
l5805:	
	movlw	01h
u3505:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3505

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l5807
	line	127
	
l2924:	
	line	124
	
l5807:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l5805
u3510:
	goto	l2918
	
l2926:	
	goto	l2918
	line	128
	
l2919:	
	line	129
	
l2918:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l5811
u3520:
	line	131
	
l5809:	
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
	goto	l5811
	line	133
	
l2927:	
	line	134
	
l5811:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l5815
u3530:
	line	136
	
l5813:	
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
	goto	l5815
	line	138
	
l2928:	
	line	139
	
l5815:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3541
	addwf	(___ftadd@f2+1),f
u3541:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3542
	addwf	(___ftadd@f2+2),f
u3542:

	line	141
	
l5817:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l5823
u3550:
	line	142
	
l5819:	
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
	
l5821:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l5823
	line	145
	
l2929:	
	line	146
	
l5823:	
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
	goto	l2904
	
l5825:	
	line	148
	
l2904:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_intToStr
psect	text759,local,class=CODE,delta=2
global __ptext759
__ptext759:

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
psect	text759
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\string.c"
	line	24
	global	__size_of_intToStr
	__size_of_intToStr	equ	__end_of_intToStr-_intToStr
	
_intToStr:	
	opt	stack 5
; Regs used in _intToStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l5733:	
;string.c: 25: int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@i)
	clrf	(intToStr@i+1)
	line	26
;string.c: 26: while (x)
	goto	l5741
	
l2148:	
	line	28
	
l5735:	
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
	
l5737:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	line	29
	
l5739:	
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

	goto	l5741
	line	30
	
l2147:	
	line	26
	
l5741:	
	movf	((intToStr@x+1)),w
	iorwf	((intToStr@x)),w
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l5735
u3300:
	goto	l5747
	
l2149:	
	line	34
;string.c: 30: }
;string.c: 34: while (i < d)
	goto	l5747
	
l2151:	
	line	35
	
l5743:	
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
	
l5745:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	goto	l5747
	
l2150:	
	line	34
	
l5747:	
	movf	(intToStr@i+1),w
	xorlw	80h
	movwf	(??_intToStr+0)+0
	movf	(intToStr@d+1),w
	xorlw	80h
	subwf	(??_intToStr+0)+0,w
	skipz
	goto	u3315
	movf	(intToStr@d),w
	subwf	(intToStr@i),w
u3315:

	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l5743
u3310:
	goto	l5749
	
l2152:	
	line	37
	
l5749:	
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
	
l5751:	
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
	
l5753:	
;string.c: 39: return i;
	movf	(intToStr@i+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(intToStr@i),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	goto	l2153
	
l5755:	
	line	40
	
l2153:	
	return
	opt stack 0
GLOBAL	__end_of_intToStr
	__end_of_intToStr:
;; =============== function _intToStr ends ============

	signat	_intToStr,12410
	global	_lcd_goto
psect	text760,local,class=CODE,delta=2
global __ptext760
__ptext760:

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
psect	text760
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
	
l5729:	
;lcd.c: 53: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	54
	
l5731:	
;lcd.c: 54: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	55
	
l1445:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text761,local,class=CODE,delta=2
global __ptext761
__ptext761:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMMON] PTR const unsigned char 
;;		 -> STR_3(14), STR_2(11), str(10), STR_1(12), 
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
psect	text761
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l5721:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l5727
	
l1434:	
	line	40
	
l5723:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5725:	
	movlw	low(01h)
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(lcd_puts@s+1),f
	goto	l5727
	
l1433:	
	line	39
	
l5727:	
	movf	(lcd_puts@s+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l5723
u3290:
	goto	l1436
	
l1435:	
	line	41
	
l1436:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text762,local,class=CODE,delta=2
global __ptext762
__ptext762:

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
psect	text762
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 6
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l5717:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l5719:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1430:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text763,local,class=CODE,delta=2
global __ptext763
__ptext763:

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
psect	text763
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\Serial-Requirements\Codes\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l5685:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l5687:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l5689:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l5691:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5693:	
	bcf	(73/8),(73)&7
	line	62
	
l5695:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l5697:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l5699:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l5701
	
l1449:	
	goto	l5701
	
l1448:	
	
l5701:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l5701
u3270:
	
l1450:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l5703:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l5705:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l5707:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5709:	
	bcf	(73/8),(73)&7
	line	69
	
l5711:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2125)
	goto	l5713
	
l1452:	
	goto	l5713
	
l1451:	
	
l5713:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2125),f
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l5713
u3280:
	goto	l5715
	
l1453:	
	line	70
	
l5715:	
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
	
l1454:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_DelaySec
psect	text764,local,class=CODE,delta=2
global __ptext764
__ptext764:

;; *************** function _DelaySec *****************
;; Defined at:
;;		line 96 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
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
psect	text764
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
	line	96
	global	__size_of_DelaySec
	__size_of_DelaySec	equ	__end_of_DelaySec-_DelaySec
	
_DelaySec:	
	opt	stack 6
; Regs used in _DelaySec: [wreg+status,2+status,0+pclath+cstack]
	line	97
	
l5677:	
;ADC_EXMAPLE.c: 97: for(int i=0;i<sec;i++)
	clrf	(DelaySec@i)
	clrf	(DelaySec@i+1)
	goto	l5683
	line	98
	
l725:	
	
l5679:	
;ADC_EXMAPLE.c: 98: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	97
	
l5681:	
	movlw	low(01h)
	addwf	(DelaySec@i),f
	skipnc
	incf	(DelaySec@i+1),f
	movlw	high(01h)
	addwf	(DelaySec@i+1),f
	goto	l5683
	
l724:	
	
l5683:	
	movf	(DelaySec@i+1),w
	xorlw	80h
	movwf	(??_DelaySec+0)+0
	movf	(DelaySec@sec+1),w
	xorlw	80h
	subwf	(??_DelaySec+0)+0,w
	skipz
	goto	u3265
	movf	(DelaySec@sec),w
	subwf	(DelaySec@i),w
u3265:

	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l5679
u3260:
	goto	l727
	
l726:	
	line	99
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_DelaySec
	__end_of_DelaySec:
;; =============== function _DelaySec ends ============

	signat	_DelaySec,4216
	global	_frexp
psect	text765,local,class=CODE,delta=2
global __ptext765
__ptext765:

;; *************** function _frexp *****************
;; Defined at:
;;		line 255 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
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
psect	text765
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	255
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
	opt	stack 3
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l5649:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l5657
u3240:
	line	257
	
l5651:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	258
	
l5653:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l3244
	
l5655:	
	goto	l3244
	line	259
	
l3243:	
	line	261
	
l5657:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u3255:
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	decfsz	btemp+1,f
	goto	u3255
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	
l5659:	
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
	
l5661:	
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
	
l5663:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l5665:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l5667:	
	goto	l3244
	
l5669:	
	line	274
	
l3244:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
;; =============== function _frexp ends ============

	signat	_frexp,8315
	global	___awmod
psect	text766,local,class=CODE,delta=2
global __ptext766
__ptext766:

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
psect	text766
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5597:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3141
	goto	u3140
u3141:
	goto	l5601
u3140:
	line	10
	
l5599:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l5601
	line	12
	
l3065:	
	line	13
	
l5601:	
	btfss	(___awmod@divisor+1),7
	goto	u3151
	goto	u3150
u3151:
	goto	l5605
u3150:
	line	14
	
l5603:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l5605
	
l3066:	
	line	15
	
l5605:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3161
	goto	u3160
u3161:
	goto	l5623
u3160:
	line	16
	
l5607:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l5613
	
l3069:	
	line	18
	
l5609:	
	movlw	01h
	
u3175:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3175
	line	19
	
l5611:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l5613
	line	20
	
l3068:	
	line	17
	
l5613:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l5609
u3180:
	goto	l5615
	
l3070:	
	goto	l5615
	line	21
	
l3071:	
	line	22
	
l5615:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3195
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3195:
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l5619
u3190:
	line	23
	
l5617:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l5619
	
l3072:	
	line	24
	
l5619:	
	movlw	01h
	
u3205:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3205
	line	25
	
l5621:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l5615
u3210:
	goto	l5623
	
l3073:	
	goto	l5623
	line	26
	
l3067:	
	line	27
	
l5623:	
	movf	(___awmod@sign),w
	skipz
	goto	u3220
	goto	l5627
u3220:
	line	28
	
l5625:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l5627
	
l3074:	
	line	29
	
l5627:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3075
	
l5629:	
	line	30
	
l3075:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text767,local,class=CODE,delta=2
global __ptext767
__ptext767:

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
psect	text767
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5577:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l5581
u3090:
	line	7
	
l5579:	
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
	goto	u3101
	goto	u3102
u3101:
	addwf	(??___ftge+0)+1,f
	
u3102:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3103
	goto	u3104
u3103:
	addwf	(??___ftge+0)+2,f
	
u3104:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l5581
	
l3024:	
	line	8
	
l5581:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l5585
u3110:
	line	9
	
l5583:	
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
	goto	u3121
	goto	u3122
u3121:
	addwf	(??___ftge+0)+1,f
	
u3122:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3123
	goto	u3124
u3123:
	addwf	(??___ftge+0)+2,f
	
u3124:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l5585
	
l3025:	
	line	10
	
l5585:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5587:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5589:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3135
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3135
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3135:
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l5593
u3130:
	
l5591:	
	clrc
	
	goto	l3026
	
l5387:	
	
l5593:	
	setc
	
	goto	l3026
	
l5389:	
	goto	l3026
	
l5595:	
	line	13
	
l3026:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text768,local,class=CODE,delta=2
global __ptext768
__ptext768:

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
psect	text768
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 3
; Regs used in ___ftneg: [wreg]
	line	17
	
l5569:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3081
	goto	u3080
u3081:
	goto	l5573
u3080:
	line	18
	
l5571:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l5573
	
l3020:	
	line	19
	
l5573:	
	goto	l3021
	
l5575:	
	line	20
	
l3021:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text769,local,class=CODE,delta=2
global __ptext769
__ptext769:

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
psect	text769
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5529:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2981
	goto	u2980
u2981:
	goto	l5533
u2980:
	line	11
	
l5531:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l5533
	line	13
	
l2997:	
	line	14
	
l5533:	
	btfss	(___awdiv@dividend+1),7
	goto	u2991
	goto	u2990
u2991:
	goto	l5539
u2990:
	line	15
	
l5535:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5537:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l5539
	line	17
	
l2998:	
	line	18
	
l5539:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5541:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3001
	goto	u3000
u3001:
	goto	l5561
u3000:
	line	20
	
l5543:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l5549
	
l3001:	
	line	22
	
l5545:	
	movlw	01h
	
u3015:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3015
	line	23
	
l5547:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l5549
	line	24
	
l3000:	
	line	21
	
l5549:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l5545
u3020:
	goto	l5551
	
l3002:	
	goto	l5551
	line	25
	
l3003:	
	line	26
	
l5551:	
	movlw	01h
	
u3035:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3035
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3045
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3045:
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l5557
u3040:
	line	28
	
l5553:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5555:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l5557
	line	30
	
l3004:	
	line	31
	
l5557:	
	movlw	01h
	
u3055:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3055
	line	32
	
l5559:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l5551
u3060:
	goto	l5561
	
l3005:	
	goto	l5561
	line	33
	
l2999:	
	line	34
	
l5561:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3070
	goto	l5565
u3070:
	line	35
	
l5563:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l5565
	
l3006:	
	line	36
	
l5565:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3007
	
l5567:	
	line	37
	
l3007:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text770,local,class=CODE,delta=2
global __ptext770
__ptext770:

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
psect	text770
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5477:	
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
	goto	u2871
	goto	u2870
u2871:
	goto	l5483
u2870:
	line	50
	
l5479:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2967
	
l5481:	
	goto	l2967
	
l2966:	
	line	51
	
l5483:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2885:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2880:
	addlw	-1
	skipz
	goto	u2885
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5485:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5487:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5489:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5491:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5493:	
	btfss	(___fttol@exp1),7
	goto	u2891
	goto	u2890
u2891:
	goto	l5503
u2890:
	line	57
	
l5495:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l5501
u2900:
	line	58
	
l5497:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2967
	
l5499:	
	goto	l2967
	
l2969:	
	goto	l5501
	line	59
	
l2970:	
	line	60
	
l5501:	
	movlw	01h
u2915:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2915

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l5501
u2920:
	goto	l5513
	
l2971:	
	line	62
	goto	l5513
	
l2968:	
	line	63
	
l5503:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l5511
u2930:
	line	64
	
l5505:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2967
	
l5507:	
	goto	l2967
	
l2973:	
	line	65
	goto	l5511
	
l2975:	
	line	66
	
l5509:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2945:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2945
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l5511
	line	68
	
l2974:	
	line	65
	
l5511:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l5509
u2950:
	goto	l5513
	
l2976:	
	goto	l5513
	line	69
	
l2972:	
	line	70
	
l5513:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2960
	goto	l5517
u2960:
	line	71
	
l5515:	
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
	goto	l5517
	
l2977:	
	line	72
	
l5517:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2967
	
l5519:	
	line	73
	
l2967:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text771,local,class=CODE,delta=2
global __ptext771
__ptext771:

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
psect	text771
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5447:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2760
	goto	l5451
u2760:
	
l5449:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l5457
u2770:
	goto	l5451
	
l3267:	
	line	65
	
l5451:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3268
	
l5453:	
	goto	l3268
	
l3265:	
	line	66
	goto	l5457
	
l3270:	
	line	67
	
l5455:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2785:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2785

	goto	l5457
	line	69
	
l3269:	
	line	66
	
l5457:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l5455
u2790:
	goto	l3272
	
l3271:	
	line	70
	goto	l3272
	
l3273:	
	line	71
	
l5459:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l5461:	
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
	
l5463:	
	movlw	01h
u2805:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2805

	line	74
	
l3272:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l5459
u2810:
	goto	l5467
	
l3274:	
	line	75
	goto	l5467
	
l3276:	
	line	76
	
l5465:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2825:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2825
	goto	l5467
	line	78
	
l3275:	
	line	75
	
l5467:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l5465
u2830:
	
l3277:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l3278
u2840:
	line	80
	
l5469:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3278:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5471:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2855:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2850:
	addlw	-1
	skipz
	goto	u2855
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5473:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2860
	goto	l3279
u2860:
	line	84
	
l5475:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3279:	
	line	85
	line	86
	
l3268:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___bmul
psect	text772,local,class=CODE,delta=2
global __ptext772
__ptext772:

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
psect	text772
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
	
l5433:	
	clrf	(___bmul@product)
	line	6
	
l2851:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l5437
u2740:
	line	8
	
l5435:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l5437
	
l2852:	
	line	9
	
l5437:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l5439:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l5441:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l2851
u2750:
	goto	l5443
	
l2853:	
	line	12
	
l5443:	
	movf	(___bmul@product),w
	goto	l2854
	
l5445:	
	line	13
	
l2854:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_reverse
psect	text773,local,class=CODE,delta=2
global __ptext773
__ptext773:

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
psect	text773
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
	
l5421:	
;string.c: 10: int i=0, j=len-1, temp;
	clrf	(reverse@i)
	clrf	(reverse@i+1)
	
l5423:	
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
	goto	l5431
	
l2142:	
	line	13
	
l5425:	
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
	
l5427:	
;string.c: 16: i++; j--;
	movlw	low(01h)
	addwf	(reverse@i),f
	skipnc
	incf	(reverse@i+1),f
	movlw	high(01h)
	addwf	(reverse@i+1),f
	
l5429:	
	movlw	low(-1)
	addwf	(reverse@j),f
	skipnc
	incf	(reverse@j+1),f
	movlw	high(-1)
	addwf	(reverse@j+1),f
	goto	l5431
	line	17
	
l2141:	
	line	11
	
l5431:	
	movf	(reverse@i+1),w
	xorlw	80h
	movwf	(??_reverse+0)+0
	movf	(reverse@j+1),w
	xorlw	80h
	subwf	(??_reverse+0)+0,w
	skipz
	goto	u2735
	movf	(reverse@j),w
	subwf	(reverse@i),w
u2735:

	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l5425
u2730:
	goto	l2144
	
l2143:	
	line	18
	
l2144:	
	return
	opt stack 0
GLOBAL	__end_of_reverse
	__end_of_reverse:
;; =============== function _reverse ends ============

	signat	_reverse,8312
	global	_lcd_write
psect	text774,local,class=CODE,delta=2
global __ptext774
__ptext774:

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
psect	text774
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
	
l5407:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l5409:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5411:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2715:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2715
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l5413:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5415:	
	bcf	(73/8),(73)&7
	line	28
	
l5417:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l5419
	
l1425:	
	goto	l5419
	
l1424:	
	
l5419:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l5419
u2720:
	goto	l1427
	
l1426:	
	line	29
	
l1427:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_init_a2d
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

;; *************** function _init_a2d *****************
;; Defined at:
;;		line 76 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
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
psect	text775
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp3\ADC (motors and LCD)\ADC_EXMAPLE.c"
	line	76
	global	__size_of_init_a2d
	__size_of_init_a2d	equ	__end_of_init_a2d-_init_a2d
	
_init_a2d:	
	opt	stack 7
; Regs used in _init_a2d: [wreg]
	line	77
	
l5403:	
;ADC_EXMAPLE.c: 77: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	78
;ADC_EXMAPLE.c: 78: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	79
	
l5405:	
;ADC_EXMAPLE.c: 79: ADON=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	80
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_init_a2d
	__end_of_init_a2d:
;; =============== function _init_a2d ends ============

	signat	_init_a2d,88
	global	_DelayMs
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

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
;;		_main
;;		_read_a2d
;;		_DelaySec
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text776
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
	
l730:	
	line	21
	
l5395:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l731:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l5397
	
l733:	
	goto	l5397
	
l732:	
	
l5397:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l5397
u2680:
	goto	l5399
	
l734:	
	line	24
	
l5399:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l731
u2690:
	goto	l5401
	
l735:	
	line	25
	
l5401:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l730
u2700:
	goto	l737
	
l736:	
	line	27
	
l737:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
