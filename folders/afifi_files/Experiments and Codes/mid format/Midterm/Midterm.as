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
# 8 "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_InitMain
	FNCALL	_main,_read_a2d
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftmul
	FNCALL	_main,_ftoa
	FNCALL	_main,___ftge
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_DelayMs
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
	FNCALL	_InitMain,_init_a2d
	FNCALL	_InitMain,_lcd_init
	FNCALL	_InitMain,_lcd_clear
	FNCALL	_InitMain,_lcd_puts
	FNCALL	_InitMain,_DelayMs
	FNCALL	_ldexp,___ftge
	FNCALL	_ldexp,___ftneg
	FNCALL	___lltoft,___ftpack
	FNCALL	___altoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_intToStr,___lwmod
	FNCALL	_intToStr,___lwdiv
	FNCALL	_intToStr,_reverse
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	FNCALL	intlevel1,_IntVector
	global	intlevel1
	FNROOT	intlevel1
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
	global	_avg
	global	_s1
	global	_s2
	global	_s3
	global	_s4
	global	_tempreture
	global	_Counter
	global	_str
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_ADCON1
_ADCON1	set	159
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
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
	
STR_2:	
	retlw	65	;'A'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
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
	
STR_6:	
	retlw	72	;'H'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	strings
STR_5	equ	STR_6+5
	file	"Midterm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_errno:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_avg:
       ds      3

_s1:
       ds      3

_s2:
       ds      3

_s3:
       ds      3

_s4:
       ds      3

_tempreture:
       ds      3

_Counter:
       ds      2

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_str:
       ds      10

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+014h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+0Ah)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	?_log
?_log:	; 3 bytes @ 0x0
	global	log@x
log@x:	; 3 bytes @ 0x0
	ds	3
	global	log@exp
log@exp:	; 2 bytes @ 0x3
	ds	2
	global	?_exp
?_exp:	; 3 bytes @ 0x5
	global	exp@x
exp@x:	; 3 bytes @ 0x5
	ds	3
	global	_exp$3541
_exp$3541:	; 3 bytes @ 0x8
	ds	3
	global	exp@exp
exp@exp:	; 2 bytes @ 0xB
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0xD
	ds	1
	global	?_pow
?_pow:	; 3 bytes @ 0xE
	global	pow@x
pow@x:	; 3 bytes @ 0xE
	ds	3
	global	pow@y
pow@y:	; 3 bytes @ 0x11
	ds	3
	global	??_pow
??_pow:	; 0 bytes @ 0x14
	ds	1
	global	_pow$3830
_pow$3830:	; 3 bytes @ 0x15
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x18
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x19
	ds	4
	global	?_ftoa
?_ftoa:	; 0 bytes @ 0x1D
	global	ftoa@n
ftoa@n:	; 3 bytes @ 0x1D
	ds	3
	global	ftoa@res
ftoa@res:	; 1 bytes @ 0x20
	ds	1
	global	ftoa@afterpoint
ftoa@afterpoint:	; 2 bytes @ 0x21
	ds	2
	global	??_ftoa
??_ftoa:	; 0 bytes @ 0x23
	ds	2
	global	_ftoa$3829
_ftoa$3829:	; 3 bytes @ 0x25
	ds	3
	global	ftoa@ipart
ftoa@ipart:	; 2 bytes @ 0x28
	ds	2
	global	ftoa@i
ftoa@i:	; 2 bytes @ 0x2A
	ds	2
	global	ftoa@fpart
ftoa@fpart:	; 3 bytes @ 0x2C
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x2F
	ds	1
	global	_main$3827
_main$3827:	; 3 bytes @ 0x30
	ds	3
	global	_main$3828
_main$3828:	; 3 bytes @ 0x33
	ds	3
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_a2d
?_init_a2d:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_InitMain
?_InitMain:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IntVector
?_IntVector:	; 0 bytes @ 0x0
	global	??_IntVector
??_IntVector:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	ds	4
	global	??_init_a2d
??_init_a2d:	; 0 bytes @ 0x4
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x4
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	?_reverse
?_reverse:	; 0 bytes @ 0x4
	global	?___bmul
?___bmul:	; 1 bytes @ 0x4
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x4
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	?_frexp
?_frexp:	; 3 bytes @ 0x4
	global	?___fttol
?___fttol:	; 4 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	reverse@len
reverse@len:	; 2 bytes @ 0x4
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x4
	global	frexp@value
frexp@value:	; 3 bytes @ 0x4
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x5
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x5
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x5
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x6
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x6
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x6
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x6
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x7
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x7
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x7
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0x7
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x7
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x7
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x7
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x7
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x7
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x8
	global	??_InitMain
??_InitMain:	; 0 bytes @ 0x8
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	??_frexp
??_frexp:	; 0 bytes @ 0x0
	global	??_reverse
??_reverse:	; 0 bytes @ 0x0
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x0
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x0
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	lcd_init@_dcnt_2128
lcd_init@_dcnt_2128:	; 1 bytes @ 0x2
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	reverse@temp
reverse@temp:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x5
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x5
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x5
	global	reverse@i
reverse@i:	; 2 bytes @ 0x5
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x5
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	reverse@j
reverse@j:	; 2 bytes @ 0x7
	ds	1
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
	global	reverse@str
reverse@str:	; 1 bytes @ 0x9
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x9
	ds	1
	global	?_intToStr
?_intToStr:	; 2 bytes @ 0xA
	global	?___altoft
?___altoft:	; 3 bytes @ 0xA
	global	intToStr@x
intToStr@x:	; 2 bytes @ 0xA
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0xA
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	1
	global	?_read_a2d
?_read_a2d:	; 3 bytes @ 0xC
	global	intToStr@str
intToStr@str:	; 1 bytes @ 0xC
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0xD
	global	intToStr@d
intToStr@d:	; 2 bytes @ 0xD
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0xD
	ds	1
	global	??___altoft
??___altoft:	; 0 bytes @ 0xE
	ds	1
	global	??_read_a2d
??_read_a2d:	; 0 bytes @ 0xF
	global	??_intToStr
??_intToStr:	; 0 bytes @ 0xF
	ds	1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x10
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x10
	ds	1
	global	read_a2d@channel
read_a2d@channel:	; 1 bytes @ 0x11
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x11
	global	intToStr@i
intToStr@i:	; 2 bytes @ 0x11
	ds	2
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x13
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x17
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x18
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x19
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x1A
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x1A
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1A
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x1A
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	global	floor@x
floor@x:	; 3 bytes @ 0x1A
	ds	3
	global	??_floor
??_floor:	; 0 bytes @ 0x1D
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x1D
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1D
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x1E
	ds	2
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x20
	ds	1
	global	floor@expon
floor@expon:	; 2 bytes @ 0x21
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x24
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x25
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x28
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x29
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x2A
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x2A
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x2D
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x30
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x34
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x35
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x38
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x39
	ds	1
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x3A
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x3A
	ds	3
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x3D
	ds	2
	global	??_ldexp
??_ldexp:	; 0 bytes @ 0x3F
	ds	2
	global	_ldexp$3587
_ldexp$3587:	; 3 bytes @ 0x41
	ds	3
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x44
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x44
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x47
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x48
	ds	2
	global	??_eval_poly
??_eval_poly:	; 0 bytes @ 0x4A
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x4B
	ds	3
	global	??_log
??_log:	; 0 bytes @ 0x4E
	ds	1
	global	??_exp
??_exp:	; 0 bytes @ 0x4F
	ds	1
;;Data sizes: Strings 55, constant 57, data 0, bss 32, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      10
;; BANK0           80     80      80
;; BANK1           80     54      74
;; BANK3           96      0      10
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
;; ?_pow	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?_intToStr	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_read_a2d	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; eval_poly@d	PTR const  size(1) Largest target is 30
;;		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), 
;;
;; frexp@eptr	PTR int  size(1) Largest target is 2
;;		 -> log@exp(BANK1[2]), floor@expon(BANK0[2]), 
;;
;; ftoa@res	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK3[10]), 
;;
;; intToStr@str	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK3[10]), 
;;
;; reverse@str	PTR unsigned char  size(1) Largest target is 10
;;		 -> str(BANK3[10]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 13
;;		 -> STR_6(CODE[12]), STR_5(CODE[7]), STR_4(CODE[10]), STR_3(CODE[8]), 
;;		 -> STR_2(CODE[13]), str(BANK3[10]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_goto
;;   _main->_DelayMs
;;   _ftoa->___fttol
;;   _ftoa->___awtoft
;;   _pow->___fttol
;;   _pow->___lltoft
;;   _exp->___fttol
;;   _exp->___awtoft
;;   _log->_frexp
;;   _log->___awtoft
;;   _eval_poly->___bmul
;;   _floor->_frexp
;;   _floor->___fttol
;;   ___ftsub->___awtoft
;;   _read_a2d->_DelayMs
;;   _read_a2d->___lbtoft
;;   _InitMain->_DelayMs
;;   _ldexp->___bmul
;;   ___lltoft->___ftpack
;;   ___altoft->___fttol
;;   ___awtoft->___ftpack
;;   ___lbtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftmul->_frexp
;;   ___ftadd->___awtoft
;;   ___ftadd->_frexp
;;   ___ftadd->___bmul
;;   _intToStr->___lwmod
;;   _intToStr->___lwdiv
;;   _intToStr->___fttol
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;   ___ftneg->___ftpack
;;
;; Critical Paths under _IntVector in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _pow->_exp
;;   _exp->_log
;;   _log->_eval_poly
;;   _eval_poly->_ldexp
;;   _floor->___ftadd
;;   ___ftsub->___ftadd
;;   _read_a2d->___lbtoft
;;   _InitMain->_lcd_init
;;   _ldexp->___ftmul
;;   ___lltoft->___ftpack
;;   ___altoft->___fttol
;;   ___awtoft->___ftneg
;;   ___lbtoft->___ftpack
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___ftadd
;;   ___ftadd->___awtoft
;;   _intToStr->_reverse
;;   _intToStr->___fttol
;;   ___ftneg->___ftpack
;;
;; Critical Paths under _IntVector in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_ftoa
;;   _ftoa->_pow
;;   _pow->_exp
;;   _exp->_log
;;
;; Critical Paths under _IntVector in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _IntVector in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _IntVector in BANK2
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
;; (0) _main                                                 7     7      0   29174
;;                                             47 BANK1      7     7      0
;;                           _InitMain
;;                           _read_a2d
;;                            ___ftdiv
;;                            ___ftadd
;;                            ___ftmul
;;                               _ftoa
;;                             ___ftge
;;                           _lcd_goto
;;                          _lcd_clear
;;                           _lcd_puts
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _ftoa                                                18    12      6   24432
;;                                             29 BANK1     18    12      6
;;                            ___fttol
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                           _intToStr
;;                                _pow
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (2) _pow                                                 15     9      6   19567
;;                                             14 BANK1     15     9      6
;;                             ___ftge
;;                            ___fttol
;;                           ___lltoft
;;                            ___ftneg
;;                                _log
;;                            ___ftmul
;;                                _exp
;; ---------------------------------------------------------------------------------
;; (3) _exp                                                 10     7      3   11140
;;                                             79 BANK0      1     1      0
;;                                              5 BANK1      9     6      3
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
;; (3) _log                                                  6     3      3    6235
;;                                             78 BANK0      1     1      0
;;                                              0 BANK1      5     2      3
;;                             ___ftge
;;                              _frexp
;;                            ___ftmul
;;                            ___ftadd
;;                          _eval_poly
;;                           ___awtoft
;; ---------------------------------------------------------------------------------
;; (4) _eval_poly                                           10     4      6    2683
;;                                             68 BANK0     10     4      6
;;                             ___bmul
;;                            ___ftmul
;;                            ___ftadd
;;                              _ldexp (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _floor                                                9     6      3    3193
;;                                             26 BANK0      9     6      3
;;                              _frexp
;;                             ___ftge
;;                            ___fttol
;;                           ___altoft
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (4) ___ftsub                                              6     0      6    1602
;;                                             26 BANK0      6     0      6
;;                            ___ftadd
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _read_a2d                                             6     3      3     445
;;                                             12 BANK0      6     3      3
;;                            _DelayMs
;;                           ___lbtoft
;; ---------------------------------------------------------------------------------
;; (1) _InitMain                                             0     0      0     538
;;                           _init_a2d
;;                           _lcd_init
;;                          _lcd_clear
;;                           _lcd_puts
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (4) _ldexp                                               10     5      5     639
;;                                             58 BANK0     10     5      5
;;                             ___ftge
;;                            ___ftneg
;;                             ___bmul (ARG)
;;                            ___ftmul (ARG)
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             6     2      4     414
;;                                              7 COMMON     1     1      0
;;                                              5 BANK0      5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (5) ___altoft                                             8     4      4     516
;;                                             10 BANK0      8     4      4
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awtoft                                             6     3      3     445
;;                                              7 COMMON     1     1      0
;;                                              8 BANK0      5     2      3
;;                           ___ftpack
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbtoft                                             8     5      3     343
;;                                              7 COMMON     1     1      0
;;                                              5 BANK0      7     4      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     800
;;                                             42 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                            ___ftadd (ARG)
;;                           ___awtoft (ARG)
;;                              _frexp (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftdiv                                             16    10      6     732
;;                                             26 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (5) ___ftadd                                             13     7      6    1537
;;                                             13 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                              _frexp (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _intToStr                                             9     4      5    1306
;;                                             10 BANK0      9     4      5
;;                            ___lwmod
;;                            ___lwdiv
;;                            _reverse
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      89
;;                                              7 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     132
;;                                              0 BANK0      2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             3     3      0     203
;;                                              0 BANK0      3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (5) _frexp                                                6     2      4     322
;;                                              4 COMMON     4     0      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     198
;;                                              0 BANK0     12     6      6
;; ---------------------------------------------------------------------------------
;; (5) ___ftneg                                              3     0      3      45
;;                                              5 BANK0      3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___fttol                                             14    10      4     252
;;                                              4 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                              4 COMMON     3     3      0
;;                                              0 BANK0      5     0      5
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              6     2      4     232
;;                                              4 COMMON     4     0      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     241
;;                                              4 COMMON     4     0      4
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (5) ___bmul                                               4     3      1      92
;;                                              4 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (3) _reverse                                             12    10      2     387
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      67
;;                                              4 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _DelayMs                                              4     4      0      68
;;                                              4 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _init_a2d                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _IntVector                                            4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitMain
;;     _init_a2d
;;     _lcd_init
;;       _DelayMs
;;       _lcd_write
;;     _lcd_clear
;;       _lcd_write
;;       _DelayMs
;;     _lcd_puts
;;       _lcd_write
;;     _DelayMs
;;   _read_a2d
;;     _DelayMs
;;     ___lbtoft
;;       ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;     ___ftadd (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;   ___ftadd
;;     ___ftpack
;;     ___ftneg (ARG)
;;       ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     _frexp (ARG)
;;     ___bmul (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___ftdiv (ARG)
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;     ___ftadd (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     _frexp (ARG)
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
;;       _frexp (ARG)
;;       ___bmul (ARG)
;;     _intToStr
;;       ___lwmod
;;       ___lwdiv
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
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
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
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;         _eval_poly
;;           ___bmul
;;           ___ftmul
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
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
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _ldexp (ARG)
;;             ___ftge
;;             ___ftneg
;;               ___ftpack (ARG)
;;             ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___ftdiv (ARG)
;;                 ___ftpack
;;                 ___ftadd (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                   ___awtoft (ARG)
;;                     ___ftpack
;;                     ___ftneg (ARG)
;;                       ___ftpack (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
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
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         ___awtoft
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
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
;;           ___ftdiv (ARG)
;;             ___ftpack
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
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
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
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
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _ldexp (ARG)
;;             ___ftge
;;             ___ftneg
;;               ___ftpack (ARG)
;;             ___bmul (ARG)
;;             ___ftmul (ARG)
;;               ___ftpack
;;               ___ftdiv (ARG)
;;                 ___ftpack
;;                 ___ftadd (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                   ___awtoft (ARG)
;;                     ___ftpack
;;                     ___ftneg (ARG)
;;                       ___ftpack (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
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
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;         _ldexp
;;           ___ftge
;;           ___ftneg
;;             ___ftpack (ARG)
;;           ___bmul (ARG)
;;           ___ftmul (ARG)
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
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
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         ___ftdiv
;;           ___ftpack
;;           ___ftadd (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;             ___awtoft (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;         _log (ARG)
;;           ___ftge
;;           _frexp
;;           ___ftmul
;;             ___ftpack
;;             ___ftdiv (ARG)
;;               ___ftpack
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;             ___ftadd (ARG)
;;               ___ftpack
;;               ___ftneg (ARG)
;;                 ___ftpack (ARG)
;;               ___awtoft (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;               _frexp (ARG)
;;               ___bmul (ARG)
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
;;             _frexp (ARG)
;;             ___bmul (ARG)
;;           _eval_poly
;;             ___bmul
;;             ___ftmul
;;               ___ftpack
;;               ___ftdiv (ARG)
;;                 ___ftpack
;;                 ___ftadd (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                   ___awtoft (ARG)
;;                     ___ftpack
;;                     ___ftneg (ARG)
;;                       ___ftpack (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
;;               ___ftadd (ARG)
;;                 ___ftpack
;;                 ___ftneg (ARG)
;;                   ___ftpack (ARG)
;;                 ___awtoft (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
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
;;               _frexp (ARG)
;;               ___bmul (ARG)
;;             _ldexp (ARG)
;;               ___ftge
;;               ___ftneg
;;                 ___ftpack (ARG)
;;               ___bmul (ARG)
;;               ___ftmul (ARG)
;;                 ___ftpack
;;                 ___ftdiv (ARG)
;;                   ___ftpack
;;                   ___ftadd (ARG)
;;                     ___ftpack
;;                     ___ftneg (ARG)
;;                       ___ftpack (ARG)
;;                     ___awtoft (ARG)
;;                       ___ftpack
;;                       ___ftneg (ARG)
;;                         ___ftpack (ARG)
;;                     _frexp (ARG)
;;                     ___bmul (ARG)
;;                 ___ftadd (ARG)
;;                   ___ftpack
;;                   ___ftneg (ARG)
;;                     ___ftpack (ARG)
;;                   ___awtoft (ARG)
;;                     ___ftpack
;;                     ___ftneg (ARG)
;;                       ___ftpack (ARG)
;;                   _frexp (ARG)
;;                   ___bmul (ARG)
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
;;                 _frexp (ARG)
;;                 ___bmul (ARG)
;;           ___awtoft
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___ftadd (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;           ___awtoft (ARG)
;;             ___ftpack
;;             ___ftneg (ARG)
;;               ___ftpack (ARG)
;;           _frexp (ARG)
;;           ___bmul (ARG)
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         _frexp (ARG)
;;         ___bmul (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       _frexp (ARG)
;;   ___ftge
;;   _lcd_goto
;;     _lcd_write
;;   _lcd_clear
;;     _lcd_write
;;     _DelayMs
;;   _lcd_puts
;;     _lcd_write
;;   _DelayMs
;;
;; _IntVector (ROOT)
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
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      AE       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     50      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     36      4A       7       92.5%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       A       9       10.4%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      B4      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
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
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_InitMain
;;		_read_a2d
;;		___ftdiv
;;		___ftadd
;;		___ftmul
;;		_ftoa
;;		___ftge
;;		_lcd_goto
;;		_lcd_clear
;;		_lcd_puts
;;		_DelayMs
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l7345:	
;Code.c: 43: InitMain();
	fcall	_InitMain
	line	45
	
l7347:	
;Code.c: 45: TMR0 =60;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	46
	
l7349:	
;Code.c: 46: OPTION_REG = 0x47;
	movlw	(047h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l7351
	line	48
;Code.c: 48: while (1)
	
l720:	
	line	53
	
l7351:	
;Code.c: 49: {
;Code.c: 53: s1= read_a2d(0);
	movlw	(0)
	fcall	_read_a2d
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s1+2)^080h
	line	54
	
l7353:	
;Code.c: 54: s1 = s1/51.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x4c
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s1+2)^080h
	line	56
	
l7355:	
;Code.c: 56: s2= read_a2d(1);
	movlw	(01h)
	fcall	_read_a2d
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s2+2)^080h
	line	57
	
l7357:	
;Code.c: 57: s2 = s2/51.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x4c
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s2+2)^080h
	line	59
	
l7359:	
;Code.c: 59: s3= read_a2d(2);
	movlw	(02h)
	fcall	_read_a2d
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s3+2)^080h
	line	60
	
l7361:	
;Code.c: 60: s3 = s3/51.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x4c
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s3+2)^080h
	line	62
	
l7363:	
;Code.c: 62: s4= read_a2d(3);
	movlw	(03h)
	fcall	_read_a2d
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s4)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s4+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_read_a2d)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s4+2)^080h
	line	63
	
l7365:	
;Code.c: 63: s4 = s4/51.0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x4c
	movwf	(?___ftdiv+1)
	movlw	0x42
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s4+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s4+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s4)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s4+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_s4+2)^080h
	line	66
	
l7367:	
;Code.c: 66: avg =((s1+s2+s3+s4)/20)*100;
	movf	(_s2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$3827)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$3827+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$3827+2)^080h
	
l7369:	
;Code.c: 66: avg =((s1+s2+s3+s4)/20)*100;
	movf	(_s3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$3827)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$3827+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$3827+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$3828)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$3828+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_main$3828+2)^080h
	
l7371:	
;Code.c: 66: avg =((s1+s2+s3+s4)/20)*100;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0xa0
	movwf	(?___ftdiv+1)
	movlw	0x41
	movwf	(?___ftdiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s4)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s4+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_s4+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$3828)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$3828+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_main$3828+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_avg)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_avg+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_avg+2)^080h
	line	67
	
l7373:	
;Code.c: 67: ftoa(avg, str, 2);
	movf	(_avg)^080h,w
	movwf	(?_ftoa)^080h
	movf	(_avg+1)^080h,w
	movwf	(?_ftoa+1)^080h
	movf	(_avg+2)^080h,w
	movwf	(?_ftoa+2)^080h
	movlw	(_str)&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(0+?_ftoa+03h)^080h
	movlw	low(02h)
	movwf	0+(?_ftoa)^080h+04h
	movlw	high(02h)
	movwf	(0+(?_ftoa)^080h+04h)+1
	fcall	_ftoa
	line	69
	
l7375:	
;Code.c: 69: GIE=1;
	bsf	(95/8),(95)&7
	line	70
	
l7377:	
;Code.c: 70: T0IE = 1;
	bsf	(93/8),(93)&7
	line	72
;Code.c: 72: if(avg<40){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x42
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5421
	goto	u5420
u5421:
	goto	l7387
u5420:
	line	73
	
l7379:	
;Code.c: 73: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	74
;Code.c: 74: lcd_clear();
	fcall	_lcd_clear
	line	75
	
l7381:	
;Code.c: 75: lcd_puts("Average Temp");
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	76
	
l7383:	
;Code.c: 76: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	77
;Code.c: 77: lcd_puts(str);
	movlw	(_str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	(0x3/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	78
	
l7385:	
;Code.c: 78: DelayMs(300);
	movlw	(02Ch)
	fcall	_DelayMs
	line	79
;Code.c: 79: }
	goto	l7351
	line	80
	
l721:	
	
l7387:	
;Code.c: 80: else if(avg>40 && avg<51){
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0x20
	movwf	(?___ftge+1)
	movlw	0x42
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5431
	goto	u5430
u5431:
	goto	l7409
u5430:
	
l7389:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x4c
	movwf	1+(?___ftge)+03h
	movlw	0x42
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5441
	goto	u5440
u5441:
	goto	l7409
u5440:
	line	82
	
l7391:	
;Code.c: 82: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	83
	
l7393:	
;Code.c: 83: lcd_puts("Warning");
	movlw	low((STR_3-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	85
	
l7395:	
;Code.c: 85: if (Counter==10){
	movlw	0Ah
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_Counter)^080h,w
	iorwf	(_Counter+1)^080h,w
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l7401
u5450:
	line	86
	
l7397:	
;Code.c: 86: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	87
	
l7399:	
;Code.c: 87: lcd_puts(str);
	movlw	(_str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	(0x3/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	goto	l7401
	line	88
	
l724:	
	line	89
	
l7401:	
;Code.c: 88: }
;Code.c: 89: if (Counter==20){
	movlw	014h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_Counter)^080h,w
	iorwf	(_Counter+1)^080h,w
	skipz
	goto	u5461
	goto	u5460
u5461:
	goto	l7351
u5460:
	line	90
	
l7403:	
;Code.c: 90: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	91
	
l7405:	
;Code.c: 91: lcd_puts("         ");
	movlw	low((STR_4-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	92
	
l7407:	
;Code.c: 92: Counter=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Counter)^080h
	clrf	(_Counter+1)^080h
	goto	l7351
	line	93
	
l725:	
	line	99
;Code.c: 93: }
;Code.c: 99: }
	goto	l7351
	line	101
	
l723:	
	
l7409:	
;Code.c: 101: else if(avg>50 && avg<61){
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0x48
	movwf	(?___ftge+1)
	movlw	0x42
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5471
	goto	u5470
u5471:
	goto	l7419
u5470:
	
l7411:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x74
	movwf	1+(?___ftge)+03h
	movlw	0x42
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5481
	goto	u5480
u5481:
	goto	l7419
u5480:
	line	102
	
l7413:	
;Code.c: 102: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	103
;Code.c: 103: lcd_clear();
	fcall	_lcd_clear
	line	104
	
l7415:	
;Code.c: 104: lcd_puts("Danger");
	movlw	low((STR_5-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	105
	
l7417:	
;Code.c: 105: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	106
;Code.c: 106: lcd_puts(str);
	movlw	(_str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	(0x3/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	108
;Code.c: 108: }
	goto	l7351
	line	110
	
l727:	
	
l7419:	
;Code.c: 110: else if(avg>70){
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0x8c
	movwf	(?___ftge+1)
	movlw	0x42
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_avg+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5491
	goto	u5490
u5491:
	goto	l7351
u5490:
	line	111
	
l7421:	
;Code.c: 111: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	112
;Code.c: 112: lcd_clear();
	fcall	_lcd_clear
	line	113
	
l7423:	
;Code.c: 113: lcd_puts("High Danger");
	movlw	low((STR_6-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	114
	
l7425:	
;Code.c: 114: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	115
;Code.c: 115: lcd_puts(str);
	movlw	(_str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	(0x3/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	goto	l7351
	line	117
	
l729:	
	goto	l7351
	line	122
	
l728:	
	goto	l7351
	
l726:	
	goto	l7351
	
l722:	
	goto	l7351
	
l730:	
	line	48
	goto	l7351
	
l731:	
	line	123
	
l732:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ftoa
psect	text1243,local,class=CODE,delta=2
global __ptext1243
__ptext1243:

;; *************** function _ftoa *****************
;; Defined at:
;;		line 44 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\string.c"
;; Parameters:    Size  Location     Type
;;  n               3   29[BANK1 ] float 
;;  res             1   32[BANK1 ] PTR unsigned char 
;;		 -> str(10), 
;;  afterpoint      2   33[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  fpart           3   44[BANK1 ] float 
;;  i               2   42[BANK1 ] int 
;;  ipart           2   40[BANK1 ] int 
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
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
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
psect	text1243
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\string.c"
	line	44
	global	__size_of_ftoa
	__size_of_ftoa	equ	__end_of_ftoa-_ftoa
	
_ftoa:	
	opt	stack 1
; Regs used in _ftoa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l7331:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@ipart)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftneg)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftneg+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
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
	
l7333:	
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
	movwf	(??_ftoa+0)^080h+0
	movf	(??_ftoa+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l7335:	
;string.c: 55: if (afterpoint != 0)
	movf	(ftoa@afterpoint+1)^080h,w
	iorwf	(ftoa@afterpoint)^080h,w
	skipnz
	goto	u5411
	goto	u5410
u5411:
	goto	l2175
u5410:
	line	57
	
l7337:	
;string.c: 56: {
;string.c: 57: res[i] = '.';
	movlw	(02Eh)
	movwf	(??_ftoa+0)^080h+0
	movf	(ftoa@i)^080h,w
	addwf	(ftoa@res)^080h,w
	movwf	(??_ftoa+1)^080h+0
	movf	0+(??_ftoa+1)^080h+0,w
	movwf	fsr0
	movf	(??_ftoa+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	line	62
	
l7339:	
;string.c: 62: fpart = fpart * pow(10, afterpoint);
	movf	(ftoa@afterpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@afterpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(?_pow)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(?_pow)^080h+03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___awtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	2+(?_pow)^080h+03h
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x20
	movwf	(?_pow+1)^080h
	movlw	0x41
	movwf	(?_pow+2)^080h
	fcall	_pow
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	movwf	(_ftoa$3829)^080h
	movf	(1+(?_pow))^080h,w
	movwf	(_ftoa$3829+1)^080h
	movf	(2+(?_pow))^080h,w
	movwf	(_ftoa$3829+2)^080h
	
l7341:	
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
	movf	(_ftoa$3829)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3829+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3829+2)^080h,w
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
	
l7343:	
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
	movwf	(??_ftoa+0)^080h+0
	movf	(??_ftoa+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	l2175
	line	65
	
l2174:	
	line	66
	
l2175:	
	return
	opt stack 0
GLOBAL	__end_of_ftoa
	__end_of_ftoa:
;; =============== function _ftoa ends ============

	signat	_ftoa,12408
	global	_pow
psect	text1244,local,class=CODE,delta=2
global __ptext1244
__ptext1244:

;; *************** function _pow *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3   14[BANK1 ] int 
;;  y               3   17[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  yi              4   25[BANK1 ] unsigned long 
;;  sign            1   24[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       6       0       0
;;      Locals:         0       0       8       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
psect	text1244
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
	line	6
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
	opt	stack 1
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l7293:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l7295:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u5351
	goto	u5350
u5351:
	goto	l7303
u5350:
	line	11
	
l7297:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0x0
	movwf	(?___ftge+1)
	movlw	0x0
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u5361
	goto	u5360
u5361:
	goto	l2859
u5360:
	line	12
	
l7299:	
	movlw	low(021h)
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	13
	
l2859:	
	line	14
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l2860
	
l7301:	
	goto	l2860
	line	15
	
l2858:	
	line	16
	
l7303:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l7309
u5370:
	line	17
	
l7305:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l2860
	
l7307:	
	goto	l2860
	
l2861:	
	line	18
	
l7309:	
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5381
	goto	u5380
u5381:
	goto	l7321
u5380:
	line	19
	
l7311:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	movwf	(?___fttol)
	movf	(pow@y+1)^080h,w
	movwf	(?___fttol+1)
	movf	(pow@y+2)^080h,w
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lltoft)

	fcall	___lltoft
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(2+(?___lltoft)),w
	skipz
	goto	u5395
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u5395
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?___lltoft)),w
u5395:
	skipnz
	goto	u5391
	goto	u5390
u5391:
	goto	l7317
u5390:
	line	21
	
l7313:	
	movlw	low(021h)
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	22
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow+2)^080h
	goto	l2860
	
l7315:	
	goto	l2860
	line	23
	
l2863:	
	line	24
	
l7317:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi)^080h,w
	andlw	01h
	movwf	(??_pow+0)^080h+0
	movf	(??_pow+0)^080h+0,w
	movwf	(pow@sign)^080h
	line	25
	
l7319:	
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	goto	l7321
	line	26
	
l2862:	
	line	27
	
l7321:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	movwf	(?_log)^080h
	movf	(pow@x+1)^080h,w
	movwf	(?_log+1)^080h
	movf	(pow@x+2)^080h,w
	movwf	(?_log+2)^080h
	fcall	_log
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_log))^080h,w
	movwf	(_pow$3830)^080h
	movf	(1+(?_log))^080h,w
	movwf	(_pow$3830+1)^080h
	movf	(2+(?_log))^080h,w
	movwf	(_pow$3830+2)^080h
	
l7323:	
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3830)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3830+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3830+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+2)^080h
	fcall	_exp
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_exp))^080h,w
	movwf	(pow@x)^080h
	movf	(1+(?_exp))^080h,w
	movwf	(pow@x+1)^080h
	movf	(2+(?_exp))^080h,w
	movwf	(pow@x+2)^080h
	line	28
	
l7325:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u5400
	goto	l2864
u5400:
	line	29
	
l7327:	
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_pow+2)^080h
	goto	l2860
	
l7329:	
	goto	l2860
	
l2864:	
	line	30
	line	31
	
l2860:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
;; =============== function _pow ends ============

	signat	_pow,8315
	global	_exp
psect	text1245,local,class=CODE,delta=2
global __ptext1245
__ptext1245:

;; *************** function _exp *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3    5[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2   11[BANK1 ] int 
;;  sign            1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    5[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       9       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
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
psect	text1245
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	13
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
	opt	stack 1
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l7241:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	iorwf	(exp@x+1)^080h,w
	iorwf	(exp@x)^080h,w
	skipz
	goto	u5291
	goto	u5290
u5291:
	goto	l7247
u5290:
	line	32
	
l7243:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x80
	movwf	(?_exp+1)^080h
	movlw	0x3f
	movwf	(?_exp+2)^080h
	goto	l3218
	
l7245:	
	goto	l3218
	
l3217:	
	line	34
	
l7247:	
	movlw	0x72
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0x31
	movwf	(?___ftge+1)
	movlw	0x44
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5301
	goto	u5300
u5301:
	goto	l7257
u5300:
	line	35
	
l7249:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	36
	goto	l7253
	
l7251:	
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	movlw	0x80
	movwf	(?_exp+1)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	goto	l3218
	
l3221:	
	
l7253:	
	movlw	0xff
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	movlw	0x7f
	movwf	(?_exp+1)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	goto	l3218
	
l3223:	
	goto	l3218
	
l7255:	
	goto	l3218
	line	37
	
l3219:	
	line	38
	
l7257:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x49
	movwf	0+(?___ftge)+03h
	movlw	0x3a
	movwf	1+(?___ftge)+03h
	movlw	0xc4
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5311
	goto	u5310
u5311:
	goto	l7263
u5310:
	line	39
	
l7259:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	40
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp+2)^080h
	goto	l3218
	
l7261:	
	goto	l3218
	line	41
	
l3224:	
	line	43
	
l7263:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l7265:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u5320
	goto	l7269
u5320:
	line	45
	
l7267:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	goto	l7269
	
l3225:	
	line	46
	
l7269:	
	movlw	0xaa
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movlw	0xb8
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	47
	
l7271:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(exp@exp+1)^080h
	addwf	(exp@exp+1)^080h
	movf	0+(((0+(?___fttol)))),w
	clrf	(exp@exp)^080h
	addwf	(exp@exp)^080h

	line	48
	
l7273:	
	movf	(exp@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftsub)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	49
	
l7275:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_ldexp)+03h
	addwf	1+(?_ldexp)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_ldexp)+03h
	addwf	0+(?_ldexp)+03h

	fcall	_ldexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@x+2)^080h
	line	50
	
l7277:	
	movf	(exp@sign)^080h,w
	skipz
	goto	u5330
	goto	l3226
u5330:
	goto	l7283
	line	52
	
l7279:	
	goto	l7283
	
l7281:	
	movlw	0x0
	movwf	(_exp$3541)^080h
	movlw	0x80
	movwf	(_exp$3541+1)^080h
	movlw	0x7f
	movwf	(_exp$3541+2)^080h
	goto	l3231
	
l3229:	
	
l7283:	
	movlw	0xff
	movwf	(_exp$3541)^080h
	movlw	0x7f
	movwf	(_exp$3541+1)^080h
	movlw	0x7f
	movwf	(_exp$3541+2)^080h
	
l3231:	
	movf	(exp@x+2)^080h,w
	xorwf	(_exp$3541+2)^080h,w
	skipz
	goto	u5345
	movf	(exp@x+1)^080h,w
	xorwf	(_exp$3541+1)^080h,w
	skipz
	goto	u5345
	movf	(exp@x)^080h,w
	xorwf	(_exp$3541)^080h,w
u5345:
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l7289
u5340:
	line	53
	
l7285:	
	movlw	0x0
	movwf	(?_exp)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp+2)^080h
	goto	l3218
	
l7287:	
	goto	l3218
	
l3227:	
	line	54
	
l7289:	
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv+2)
	movlw	0x0
	movwf	0+(?___ftdiv)+03h
	movlw	0x80
	movwf	1+(?___ftdiv)+03h
	movlw	0x3f
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+2)^080h
	goto	l3218
	
l7291:	
	goto	l3218
	line	55
	
l3226:	
	line	56
	line	57
	
l3218:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
;; =============== function _exp ends ============

	signat	_exp,4219
	global	_log
psect	text1246,local,class=CODE,delta=2
global __ptext1246
__ptext1246:

;; *************** function _log *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
;; Parameters:    Size  Location     Type
;;  x               3    0[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2    3[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       5       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
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
psect	text1246
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	6
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
	opt	stack 1
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l7219:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5271
	goto	u5270
u5271:
	goto	l7225
u5270:
	line	25
	
l7221:	
	movlw	low(021h)
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	26
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_log)^080h
	movlw	0x0
	movwf	(?_log+1)^080h
	movlw	0x0
	movwf	(?_log+2)^080h
	goto	l3252
	
l7223:	
	goto	l3252
	line	27
	
l3251:	
	line	28
	
l7225:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+2)^080h,w
	iorwf	(log@x+1)^080h,w
	iorwf	(log@x)^080h,w
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l7231
u5280:
	line	29
	
l7227:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	30
	movlw	0x0
	movwf	(?_log)^080h
	movlw	0x0
	movwf	(?_log+1)^080h
	movlw	0x0
	movwf	(?_log+2)^080h
	goto	l3252
	
l7229:	
	goto	l3252
	line	31
	
l3253:	
	line	32
	
l7231:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x)^080h,w
	movwf	(?_frexp)
	movf	(log@x+1)^080h,w
	movwf	(?_frexp+1)
	movf	(log@x+2)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log@x+2)^080h
	line	33
	
l7233:	
	movlw	low(-1)
	addwf	(log@exp)^080h,f
	skipnc
	incf	(log@exp+1)^080h,f
	movlw	high(-1)
	addwf	(log@exp+1)^080h,f
	line	34
	
l7235:	
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eval_poly+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_eval_poly)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log@x+2)^080h
	line	35
	
l7237:	
	movf	(log@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	movlw	0x72
	movwf	(?___ftmul)
	movlw	0x31
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(log@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_log)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_log+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_log+2)^080h
	goto	l3252
	
l7239:	
	line	36
	
l3252:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
;; =============== function _log ends ============

	signat	_log,4219
	global	_eval_poly
psect	text1247,local,class=CODE,delta=2
global __ptext1247
__ptext1247:

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   68[BANK0 ] int 
;;  d               1   71[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   72[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   75[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   68[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___bmul
;;		___ftmul
;;		___ftadd
;; This function is called by:
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text1247
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
	line	5
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
	opt	stack 1
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l7209:	
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
	goto	l7213
	
l3301:	
	line	10
	
l7211:	
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
	goto	l7213
	
l3300:	
	line	9
	
l7213:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l7211
u5260:
	goto	l7215
	
l3302:	
	line	11
	
l7215:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l3303
	
l7217:	
	line	12
	
l3303:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
;; =============== function _eval_poly ends ============

	signat	_eval_poly,12411
	global	_floor
psect	text1248,local,class=CODE,delta=2
global __ptext1248
__ptext1248:

;; *************** function _floor *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   26[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   30[BANK0 ] int 
;;  expon           2   33[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
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
psect	text1248
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
	line	14
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
	opt	stack 1
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l7181:	
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
	
l7183:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u5221
	goto	u5220
u5221:
	goto	l7195
u5220:
	line	20
	
l7185:	
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
	goto	u5231
	goto	u5230
u5231:
	goto	l7191
u5230:
	line	21
	
l7187:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l3238
	
l7189:	
	goto	l3238
	
l3237:	
	line	22
	
l7191:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l3238
	
l7193:	
	goto	l3238
	line	23
	
l3236:	
	line	24
	
l7195:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u5241
	goto	u5240
u5241:
	goto	l7199
u5240:
	line	25
	
l7197:	
	goto	l3238
	
l3239:	
	line	26
	
l7199:	
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
	goto	u5251
	goto	u5250
u5251:
	goto	l7205
u5250:
	line	28
	
l7201:	
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
	goto	l3238
	
l7203:	
	goto	l3238
	
l3240:	
	line	29
	
l7205:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l3238
	
l7207:	
	line	30
	
l3238:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
;; =============== function _floor ends ============

	signat	_floor,4219
	global	___ftsub
psect	text1249,local,class=CODE,delta=2
global __ptext1249
__ptext1249:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   26[BANK0 ] float 
;;  f1              3   29[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text1249
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 1
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7175:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l7177:	
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
	goto	l2958
	
l7179:	
	line	20
	
l2958:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_read_a2d
psect	text1250,local,class=CODE,delta=2
global __ptext1250
__ptext1250:

;; *************** function _read_a2d *****************
;; Defined at:
;;		line 135 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   12[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;;		___lbtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1250
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	line	135
	global	__size_of_read_a2d
	__size_of_read_a2d	equ	__end_of_read_a2d-_read_a2d
	
_read_a2d:	
	opt	stack 4
; Regs used in _read_a2d: [wreg+status,2+status,0+pclath+cstack]
;read_a2d@channel stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_a2d@channel)
	line	136
	
l7163:	
;Code.c: 136: channel &=0x07;
	movlw	(07h)
	movwf	(??_read_a2d+0)+0
	movf	(??_read_a2d+0)+0,w
	andwf	(read_a2d@channel),f
	line	137
;Code.c: 137: ADCON0 = 0x41;
	movlw	(041h)
	movwf	(31)	;volatile
	line	138
;Code.c: 138: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	139
	
l7165:	
;Code.c: 139: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	140
	
l7167:	
;Code.c: 140: ADCON0 |=(channel<<3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_a2d@channel),w
	movwf	(??_read_a2d+0)+0
	movlw	(03h)-1
u5205:
	clrc
	rlf	(??_read_a2d+0)+0,f
	addlw	-1
	skipz
	goto	u5205
	clrc
	rlf	(??_read_a2d+0)+0,w
	movwf	(??_read_a2d+1)+0
	movf	(??_read_a2d+1)+0,w
	iorwf	(31),f	;volatile
	line	141
	
l7169:	
;Code.c: 141: GO_nDONE = 1;
	bsf	(250/8),(250)&7
	line	142
;Code.c: 142: while(GO_nDONE)
	goto	l738
	
l739:	
	line	143
;Code.c: 143: continue;
	
l738:	
	line	142
	btfsc	(250/8),(250)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l738
u5210:
	goto	l7171
	
l740:	
	line	144
	
l7171:	
;Code.c: 144: return( (float) ADRESH);
	movf	(30),w	;volatile
	fcall	___lbtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lbtoft)),w
	movwf	(?_read_a2d)
	movf	(1+(?___lbtoft)),w
	movwf	(?_read_a2d+1)
	movf	(2+(?___lbtoft)),w
	movwf	(?_read_a2d+2)
	goto	l741
	
l7173:	
	line	145
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d
	__end_of_read_a2d:
;; =============== function _read_a2d ends ============

	signat	_read_a2d,4219
	global	_InitMain
psect	text1251,local,class=CODE,delta=2
global __ptext1251
__ptext1251:

;; *************** function _InitMain *****************
;; Defined at:
;;		line 19 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init_a2d
;;		_lcd_init
;;		_lcd_clear
;;		_lcd_puts
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1251
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	line	19
	global	__size_of_InitMain
	__size_of_InitMain	equ	__end_of_InitMain-_InitMain
	
_InitMain:	
	opt	stack 4
; Regs used in _InitMain: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	20
	
l7143:	
;Code.c: 20: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	21
	
l7145:	
;Code.c: 21: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	22
;Code.c: 22: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	23
;Code.c: 23: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	24
;Code.c: 24: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	25
	
l7147:	
;Code.c: 25: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	27
	
l7149:	
;Code.c: 27: ADCON1 = 3;
	movlw	(03h)
	movwf	(159)^080h	;volatile
	line	28
	
l7151:	
;Code.c: 28: init_a2d();
	fcall	_init_a2d
	line	31
	
l7153:	
;Code.c: 31: lcd_init();
	fcall	_lcd_init
	line	32
	
l7155:	
;Code.c: 32: lcd_clear();
	fcall	_lcd_clear
	line	33
	
l7157:	
;Code.c: 33: lcd_puts("Starting...");
	movlw	low((STR_1-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	34
	
l7159:	
;Code.c: 34: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	35
	
l7161:	
;Code.c: 35: lcd_clear();
	fcall	_lcd_clear
	line	38
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_InitMain
	__end_of_InitMain:
;; =============== function _InitMain ends ============

	signat	_InitMain,88
	global	_ldexp
psect	text1252,local,class=CODE,delta=2
global __ptext1252
__ptext1252:

;; *************** function _ldexp *****************
;; Defined at:
;;		line 278 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   58[BANK0 ] float 
;;  newexp          2   61[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   58[BANK0 ] int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text1252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	278
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
	opt	stack 2
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l7093:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u5141
	goto	u5140
u5141:
	goto	l7099
u5140:
	line	280
	
l7095:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3266
	
l7097:	
	goto	l3266
	
l3265:	
	line	282
	
l7099:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u5155:
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	decfsz	btemp+1,f
	goto	u5155
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	
l7101:	
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
	
l7103:	
	btfss	(ldexp@newexp+1),7
	goto	u5161
	goto	u5160
u5161:
	goto	l7111
u5160:
	line	288
	
l7105:	
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
	goto	l3266
	
l7107:	
	goto	l3266
	line	290
	
l7109:	
	goto	l7139
	line	291
	
l3267:	
	
l7111:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5175
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u5175:

	skipc
	goto	u5171
	goto	u5170
u5171:
	goto	l7135
u5170:
	line	292
	
l7113:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	293
	
l7115:	
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
	goto	u5181
	goto	u5180
u5181:
	goto	l7131
u5180:
	goto	l7121
	line	294
	
l7117:	
	goto	l7121
	
l7119:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3587)
	movlw	0x80
	movwf	(_ldexp$3587+1)
	movlw	0x7f
	movwf	(_ldexp$3587+2)
	goto	l7123
	
l3272:	
	
l7121:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3587)
	movlw	0x7f
	movwf	(_ldexp$3587+1)
	movlw	0x7f
	movwf	(_ldexp$3587+2)
	goto	l7123
	
l3274:	
	
l7123:	
	movf	(_ldexp$3587),w
	movwf	(?___ftneg)
	movf	(_ldexp$3587+1),w
	movwf	(?___ftneg+1)
	movf	(_ldexp$3587+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(?_ldexp)
	movf	(1+(?___ftneg)),w
	movwf	(?_ldexp+1)
	movf	(2+(?___ftneg)),w
	movwf	(?_ldexp+2)
	goto	l3266
	
l7125:	
	goto	l3266
	
l7127:	
	goto	l7139
	line	295
	
l3270:	
	line	296
	goto	l7131
	
l7129:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3266
	
l3277:	
	
l7131:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp)
	movlw	0x7f
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3266
	
l3279:	
	goto	l3266
	
l7133:	
	goto	l3266
	
l3275:	
	line	297
	goto	l7139
	line	298
	
l3269:	
	line	300
	
l7135:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	movlw	01h
	movwf	btemp+1
u5195:
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	decfsz	btemp+1,f
	goto	u5195
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	
l7137:	
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
	goto	l7139
	line	305
	
l3280:	
	goto	l7139
	
l3268:	
	line	306
	
l7139:	
	goto	l3266
	
l7141:	
	line	307
	
l3266:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
;; =============== function _ldexp ends ============

	signat	_ldexp,8315
	global	___lltoft
psect	text1253,local,class=CODE,delta=2
global __ptext1253
__ptext1253:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    5[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    5[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text1253
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 3
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l7083:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@exp)
	line	41
	goto	l7087
	
l3113:	
	line	42
	
l7085:	
	movlw	01h
u5125:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u5125

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l7087
	line	44
	
l3112:	
	line	41
	
l7087:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l7085
u5130:
	goto	l7089
	
l3114:	
	line	45
	
l7089:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l3115
	
l7091:	
	line	46
	
l3115:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text1254,local,class=CODE,delta=2
global __ptext1254
__ptext1254:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   10[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   17[BANK0 ] unsigned char 
;;  exp             1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text1254
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 1
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l7065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l7067:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l7069:	
	btfss	(___altoft@c+3),7
	goto	u5091
	goto	u5090
u5091:
	goto	l7077
u5090:
	line	48
	
l7071:	
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
	
l7073:	
	clrf	(___altoft@sign)
	bsf	status,0
	rlf	(___altoft@sign),f
	goto	l7077
	line	50
	
l3103:	
	line	52
	goto	l7077
	
l3105:	
	line	53
	
l7075:	
	movlw	01h
u5105:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u5105

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l7077
	line	55
	
l3104:	
	line	52
	
l7077:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l7075
u5110:
	goto	l7079
	
l3106:	
	line	56
	
l7079:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	l3107
	
l7081:	
	line	57
	
l3107:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___awtoft
psect	text1255,local,class=CODE,delta=2
global __ptext1255
__ptext1255:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ftoa
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text1255
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l7057:	
	clrf	(___awtoft@sign)
	line	37
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awtoft@c+1),7
	goto	u5081
	goto	u5080
u5081:
	goto	l7061
u5080:
	line	38
	
l7059:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l7061
	line	40
	
l3011:	
	line	41
	
l7061:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l3012
	
l7063:	
	line	42
	
l3012:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text1256,local,class=CODE,delta=2
global __ptext1256
__ptext1256:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    5[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_a2d
;; This function uses a non-reentrant model
;;
psect	text1256
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 4
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l7053:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	goto	l3000
	
l7055:	
	line	30
	
l3000:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text1257,local,class=CODE,delta=2
global __ptext1257
__ptext1257:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   42[BANK0 ] float 
;;  f2              3   45[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   53[BANK0 ] unsigned um
;;  sign            1   57[BANK0 ] unsigned char 
;;  cntr            1   56[BANK0 ] unsigned char 
;;  exp             1   52[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_ftoa
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;;		_log10
;; This function uses a non-reentrant model
;;
psect	text1257
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l7003:	
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
	goto	u4941
	goto	u4940
u4941:
	goto	l7009
u4940:
	line	57
	
l7005:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2974
	
l7007:	
	goto	l2974
	
l2973:	
	line	58
	
l7009:	
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
	goto	u4951
	goto	u4950
u4951:
	goto	l7015
u4950:
	line	59
	
l7011:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2974
	
l7013:	
	goto	l2974
	
l2975:	
	line	60
	
l7015:	
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
u4965:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4960:
	addlw	-1
	skipz
	goto	u4965
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
u4975:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4970:
	addlw	-1
	skipz
	goto	u4975
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
	
l7017:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l7019:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l7021:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l7023:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l7025:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l7027
	line	70
	
l2976:	
	line	71
	
l7027:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l7031
u4980:
	line	72
	
l7029:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4991
	addwf	(___ftmul@f3_as_product+1),f
u4991:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4992
	addwf	(___ftmul@f3_as_product+2),f
u4992:

	goto	l7031
	
l2977:	
	line	73
	
l7031:	
	movlw	01h
u5005:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5005

	line	74
	
l7033:	
	movlw	01h
u5015:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u5015
	line	75
	
l7035:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l7027
u5020:
	goto	l7037
	
l2978:	
	line	76
	
l7037:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l7039
	line	77
	
l2979:	
	line	78
	
l7039:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5031
	goto	u5030
u5031:
	goto	l7043
u5030:
	line	79
	
l7041:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5041
	addwf	(___ftmul@f3_as_product+1),f
u5041:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5042
	addwf	(___ftmul@f3_as_product+2),f
u5042:

	goto	l7043
	
l2980:	
	line	80
	
l7043:	
	movlw	01h
u5055:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5055

	line	81
	
l7045:	
	movlw	01h
u5065:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u5065

	line	82
	
l7047:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l7039
u5070:
	goto	l7049
	
l2981:	
	line	83
	
l7049:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l2974
	
l7051:	
	line	84
	
l2974:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text1258,local,class=CODE,delta=2
global __ptext1258
__ptext1258:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   26[BANK0 ] float 
;;  f1              3   29[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   37[BANK0 ] float 
;;  sign            1   41[BANK0 ] unsigned char 
;;  exp             1   40[BANK0 ] unsigned char 
;;  cntr            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text1258
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6961:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
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
	goto	u4861
	goto	u4860
u4861:
	goto	l6967
u4860:
	line	56
	
l6963:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2964
	
l6965:	
	goto	l2964
	
l2963:	
	line	57
	
l6967:	
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
	goto	u4871
	goto	u4870
u4871:
	goto	l6973
u4870:
	line	58
	
l6969:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2964
	
l6971:	
	goto	l2964
	
l2965:	
	line	59
	
l6973:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l6975:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6977:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4885:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4880:
	addlw	-1
	skipz
	goto	u4885
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l6979:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4895:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4890:
	addlw	-1
	skipz
	goto	u4895
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6981:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l6983:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6985:	
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
	goto	l6987
	line	69
	
l2966:	
	line	70
	
l6987:	
	movlw	01h
u4905:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4905
	line	71
	
l6989:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4915
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4915
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4915:
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l6995
u4910:
	line	72
	
l6991:	
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
	
l6993:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l6995
	line	74
	
l2967:	
	line	75
	
l6995:	
	movlw	01h
u4925:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u4925
	line	76
	
l6997:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l6987
u4930:
	goto	l6999
	
l2968:	
	line	77
	
l6999:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l2964
	
l7001:	
	line	78
	
l2964:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text1259,local,class=CODE,delta=2
global __ptext1259
__ptext1259:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   13[BANK0 ] float 
;;  f2              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   25[BANK0 ] unsigned char 
;;  exp2            1   24[BANK0 ] unsigned char 
;;  sign            1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_ftoa
;;		___ftsub
;;		_floor
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text1259
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6891:	
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
	
l6893:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4620
	goto	l6899
u4620:
	
l6895:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4631
	goto	u4630
u4631:
	goto	l6903
u4630:
	
l6897:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4641
	goto	u4640
u4641:
	goto	l6903
u4640:
	goto	l6899
	
l2921:	
	line	93
	
l6899:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2922
	
l6901:	
	goto	l2922
	
l2919:	
	line	94
	
l6903:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4650
	goto	l2925
u4650:
	
l6905:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4661
	goto	u4660
u4661:
	goto	l6909
u4660:
	
l6907:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l6909
u4670:
	
l2925:	
	line	95
	goto	l2922
	
l2923:	
	line	96
	
l6909:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l6911:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l2926
u4680:
	line	98
	
l6913:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2926:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l2927
u4690:
	line	100
	
l6915:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2927:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6917:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6919:	
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
	goto	u4701
	goto	u4700
u4701:
	goto	l6931
u4700:
	goto	l6921
	line	109
	
l2929:	
	line	110
	
l6921:	
	movlw	01h
u4715:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u4715
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l6923:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4721
	goto	u4720
u4721:
	goto	l6929
u4720:
	
l6925:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l6921
u4730:
	goto	l6929
	
l2931:	
	goto	l6929
	
l2932:	
	line	113
	goto	l6929
	
l2934:	
	line	114
	
l6927:	
	movlw	01h
u4745:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u4745

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l6929
	line	116
	
l2933:	
	line	113
	
l6929:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4751
	goto	u4750
u4751:
	goto	l6927
u4750:
	goto	l2936
	
l2935:	
	line	117
	goto	l2936
	
l2928:	
	
l6931:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4761
	goto	u4760
u4761:
	goto	l2936
u4760:
	goto	l6933
	line	120
	
l2938:	
	line	121
	
l6933:	
	movlw	01h
u4775:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4775
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l6935:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4781
	goto	u4780
u4781:
	goto	l6941
u4780:
	
l6937:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4791
	goto	u4790
u4791:
	goto	l6933
u4790:
	goto	l6941
	
l2940:	
	goto	l6941
	
l2941:	
	line	124
	goto	l6941
	
l2943:	
	line	125
	
l6939:	
	movlw	01h
u4805:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4805

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l6941
	line	127
	
l2942:	
	line	124
	
l6941:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4811
	goto	u4810
u4811:
	goto	l6939
u4810:
	goto	l2936
	
l2944:	
	goto	l2936
	line	128
	
l2937:	
	line	129
	
l2936:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l6945
u4820:
	line	131
	
l6943:	
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
	goto	l6945
	line	133
	
l2945:	
	line	134
	
l6945:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l6949
u4830:
	line	136
	
l6947:	
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
	goto	l6949
	line	138
	
l2946:	
	line	139
	
l6949:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4841
	addwf	(___ftadd@f2+1),f
u4841:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4842
	addwf	(___ftadd@f2+2),f
u4842:

	line	141
	
l6951:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4851
	goto	u4850
u4851:
	goto	l6957
u4850:
	line	142
	
l6953:	
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
	
l6955:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l6957
	line	145
	
l2947:	
	line	146
	
l6957:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l2922
	
l6959:	
	line	148
	
l2922:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_intToStr
psect	text1260,local,class=CODE,delta=2
global __ptext1260
__ptext1260:

;; *************** function _intToStr *****************
;; Defined at:
;;		line 24 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\string.c"
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
;;		_ftoa
;; This function uses a non-reentrant model
;;
psect	text1260
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\string.c"
	line	24
	global	__size_of_intToStr
	__size_of_intToStr	equ	__end_of_intToStr-_intToStr
	
_intToStr:	
	opt	stack 4
; Regs used in _intToStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l6867:	
;string.c: 25: unsigned int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@i)
	clrf	(intToStr@i+1)
	line	26
;string.c: 26: while (x)
	goto	l6875
	
l2166:	
	line	28
	
l6869:	
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
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l6871:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	line	29
	
l6873:	
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

	goto	l6875
	line	30
	
l2165:	
	line	26
	
l6875:	
	movf	((intToStr@x+1)),w
	iorwf	((intToStr@x)),w
	skipz
	goto	u4601
	goto	u4600
u4601:
	goto	l6869
u4600:
	goto	l6881
	
l2167:	
	line	34
;string.c: 30: }
;string.c: 34: while (i < d)
	goto	l6881
	
l2169:	
	line	35
	
l6877:	
;string.c: 35: str[i++] = '0';
	movlw	(030h)
	movwf	(??_intToStr+0)+0
	movf	(intToStr@i),w
	addwf	(intToStr@str),w
	movwf	(??_intToStr+1)+0
	movf	0+(??_intToStr+1)+0,w
	movwf	fsr0
	movf	(??_intToStr+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l6879:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	goto	l6881
	
l2168:	
	line	34
	
l6881:	
	movf	(intToStr@d+1),w
	subwf	(intToStr@i+1),w
	skipz
	goto	u4615
	movf	(intToStr@d),w
	subwf	(intToStr@i),w
u4615:
	skipc
	goto	u4611
	goto	u4610
u4611:
	goto	l6877
u4610:
	goto	l6883
	
l2170:	
	line	37
	
l6883:	
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
	
l6885:	
;string.c: 38: str[i] = '\0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(intToStr@i),w
	addwf	(intToStr@str),w
	movwf	(??_intToStr+0)+0
	movf	0+(??_intToStr+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	line	39
	
l6887:	
;string.c: 39: return i;
	movf	(intToStr@i+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(intToStr@i),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	goto	l2171
	
l6889:	
	line	40
	
l2171:	
	return
	opt stack 0
GLOBAL	__end_of_intToStr
	__end_of_intToStr:
;; =============== function _intToStr ends ============

	signat	_intToStr,12410
	global	_lcd_goto
psect	text1261,local,class=CODE,delta=2
global __ptext1261
__ptext1261:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 52 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    7[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1261
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
	line	52
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	53
	
l5977:	
;lcd.c: 53: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	54
	
l5979:	
;lcd.c: 54: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	55
	
l1463:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text1262,local,class=CODE,delta=2
global __ptext1262
__ptext1262:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_6(12), STR_5(7), STR_4(10), STR_3(8), 
;;		 -> STR_2(13), str(10), STR_1(12), 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_InitMain
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1262
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 5
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l6859:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l6865
	
l1452:	
	line	40
	
l6861:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l6863:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(lcd_puts@s+1),f
	goto	l6865
	
l1451:	
	line	39
	
l6865:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4591
	goto	u4590
u4591:
	goto	l6861
u4590:
	goto	l1454
	
l1453:	
	line	41
	
l1454:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text1263,local,class=CODE,delta=2
global __ptext1263
__ptext1263:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
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
;;		_InitMain
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1263
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l5965:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l5967:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1448:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text1264,local,class=CODE,delta=2
global __ptext1264
__ptext1264:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
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
;;		_InitMain
;; This function uses a non-reentrant model
;;
psect	text1264
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l6827:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l6829:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l6831:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l6833:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6835:	
	bcf	(73/8),(73)&7
	line	62
	
l6837:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l6839:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l6841:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l6843
	
l1467:	
	goto	l6843
	
l1466:	
	
l6843:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l6843
u4570:
	
l1468:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l6845:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l6847:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l6849:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6851:	
	bcf	(73/8),(73)&7
	line	69
	
l6853:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2128)
	goto	l6855
	
l1470:	
	goto	l6855
	
l1469:	
	
l6855:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2128),f
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l6855
u4580:
	goto	l6857
	
l1471:	
	line	70
	
l6857:	
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
	
l1472:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_frexp
psect	text1265,local,class=CODE,delta=2
global __ptext1265
__ptext1265:

;; *************** function _frexp *****************
;; Defined at:
;;		line 255 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    4[COMMON] unsigned char 
;;  eptr            1    7[COMMON] PTR int 
;;		 -> log@exp(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    4[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text1265
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	255
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
	opt	stack 2
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l6799:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l6807
u4550:
	line	257
	
l6801:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	258
	
l6803:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l3262
	
l6805:	
	goto	l3262
	line	259
	
l3261:	
	line	261
	
l6807:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u4565:
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	decfsz	btemp+1,f
	goto	u4565
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	
l6809:	
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
	
l6811:	
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
	
l6813:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l6815:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l6817:	
	goto	l3262
	
l6819:	
	line	274
	
l3262:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
;; =============== function _frexp ends ============

	signat	_frexp,8315
	global	___ftge
psect	text1266,local,class=CODE,delta=2
global __ptext1266
__ptext1266:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
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
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
psect	text1266
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6761:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u4491
	goto	u4490
u4491:
	goto	l6765
u4490:
	line	7
	
l6763:	
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
	goto	u4501
	goto	u4502
u4501:
	addwf	(??___ftge+0)+1,f
	
u4502:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4503
	goto	u4504
u4503:
	addwf	(??___ftge+0)+2,f
	
u4504:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l6765
	
l3042:	
	line	8
	
l6765:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l6769
u4510:
	line	9
	
l6767:	
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
	goto	u4521
	goto	u4522
u4521:
	addwf	(??___ftge+0)+1,f
	
u4522:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4523
	goto	u4524
u4523:
	addwf	(??___ftge+0)+2,f
	
u4524:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l6769
	
l3043:	
	line	10
	
l6769:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6771:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6773:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u4535
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u4535
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u4535:
	skipnc
	goto	u4531
	goto	u4530
u4531:
	goto	l6777
u4530:
	
l6775:	
	clrc
	
	goto	l3044
	
l6655:	
	
l6777:	
	setc
	
	goto	l3044
	
l6657:	
	goto	l3044
	
l6779:	
	line	13
	
l3044:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text1267,local,class=CODE,delta=2
global __ptext1267
__ptext1267:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    5[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    5[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;;		_pow
;;		_exp
;;		_ldexp
;; This function uses a non-reentrant model
;;
psect	text1267
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
l5859:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3211
	goto	u3210
u3211:
	goto	l5863
u3210:
	line	18
	
l5861:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l5863
	
l3038:	
	line	19
	
l5863:	
	goto	l3039
	
l5865:	
	line	20
	
l3039:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___fttol
psect	text1268,local,class=CODE,delta=2
global __ptext1268
__ptext1268:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    4[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ftoa
;;		_pow
;;		_exp
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text1268
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5807:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3101
	goto	u3100
u3101:
	goto	l5813
u3100:
	line	50
	
l5809:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2985
	
l5811:	
	goto	l2985
	
l2984:	
	line	51
	
l5813:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3115:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3110:
	addlw	-1
	skipz
	goto	u3115
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5815:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5817:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5819:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5821:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5823:	
	btfss	(___fttol@exp1),7
	goto	u3121
	goto	u3120
u3121:
	goto	l5833
u3120:
	line	57
	
l5825:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l5831
u3130:
	line	58
	
l5827:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2985
	
l5829:	
	goto	l2985
	
l2987:	
	goto	l5831
	line	59
	
l2988:	
	line	60
	
l5831:	
	movlw	01h
u3145:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3145

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l5831
u3150:
	goto	l5843
	
l2989:	
	line	62
	goto	l5843
	
l2986:	
	line	63
	
l5833:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l5841
u3160:
	line	64
	
l5835:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2985
	
l5837:	
	goto	l2985
	
l2991:	
	line	65
	goto	l5841
	
l2993:	
	line	66
	
l5839:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3175:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3175
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l5841
	line	68
	
l2992:	
	line	65
	
l5841:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l5839
u3180:
	goto	l5843
	
l2994:	
	goto	l5843
	line	69
	
l2990:	
	line	70
	
l5843:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3190
	goto	l5847
u3190:
	line	71
	
l5845:	
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
	goto	l5847
	
l2995:	
	line	72
	
l5847:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2985
	
l5849:	
	line	73
	
l2985:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1269,local,class=CODE,delta=2
global __ptext1269
__ptext1269:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       5       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
psect	text1269
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6723:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4370
	goto	l6727
u4370:
	
l6725:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l6733
u4380:
	goto	l6727
	
l3285:	
	line	65
	
l6727:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3286
	
l6729:	
	goto	l3286
	
l3283:	
	line	66
	goto	l6733
	
l3288:	
	line	67
	
l6731:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4395:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4395

	goto	l6733
	line	69
	
l3287:	
	line	66
	
l6733:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l6731
u4400:
	goto	l3290
	
l3289:	
	line	70
	goto	l3290
	
l3291:	
	line	71
	
l6735:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l6737:	
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
	
l6739:	
	movlw	01h
u4415:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4415

	line	74
	
l3290:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l6735
u4420:
	goto	l6743
	
l3292:	
	line	75
	goto	l6743
	
l3294:	
	line	76
	
l6741:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4435:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u4435
	goto	l6743
	line	78
	
l3293:	
	line	75
	
l6743:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l6741
u4440:
	
l3295:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l3296
u4450:
	line	80
	
l6745:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3296:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l6747:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u4465:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u4460:
	addlw	-1
	skipz
	goto	u4465
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l6749:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4470
	goto	l3297
u4470:
	line	84
	
l6751:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3297:	
	line	85
	line	86
	
l3286:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text1270,local,class=CODE,delta=2
global __ptext1270
__ptext1270:

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
psect	text1270
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l6701:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u4311
	goto	u4310
u4311:
	goto	l6719
u4310:
	line	9
	
l6703:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l6709
	
l2893:	
	line	11
	
l6705:	
	movlw	01h
	
u4325:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4325
	line	12
	
l6707:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l6709
	line	13
	
l2892:	
	line	10
	
l6709:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l6705
u4330:
	goto	l6711
	
l2894:	
	goto	l6711
	line	14
	
l2895:	
	line	15
	
l6711:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4345
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4345:
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l6715
u4340:
	line	16
	
l6713:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l6715
	
l2896:	
	line	17
	
l6715:	
	movlw	01h
	
u4355:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u4355
	line	18
	
l6717:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l6711
u4360:
	goto	l6719
	
l2897:	
	goto	l6719
	line	19
	
l2891:	
	line	20
	
l6719:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2898
	
l6721:	
	line	21
	
l2898:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1271,local,class=CODE,delta=2
global __ptext1271
__ptext1271:

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
psect	text1271
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l6675:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l6677:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4241
	goto	u4240
u4241:
	goto	l6697
u4240:
	line	11
	
l6679:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l6685
	
l2883:	
	line	13
	
l6681:	
	movlw	01h
	
u4255:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4255
	line	14
	
l6683:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l6685
	line	15
	
l2882:	
	line	12
	
l6685:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l6681
u4260:
	goto	l6687
	
l2884:	
	goto	l6687
	line	16
	
l2885:	
	line	17
	
l6687:	
	movlw	01h
	
u4275:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4275
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4285
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4285:
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l6693
u4280:
	line	19
	
l6689:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l6691:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l6693
	line	21
	
l2886:	
	line	22
	
l6693:	
	movlw	01h
	
u4295:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4295
	line	23
	
l6695:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l6687
u4300:
	goto	l6697
	
l2887:	
	goto	l6697
	line	24
	
l2881:	
	line	25
	
l6697:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2888
	
l6699:	
	line	26
	
l2888:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text1272,local,class=CODE,delta=2
global __ptext1272
__ptext1272:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    7[COMMON] unsigned char 
;;  product         1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text1272
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 2
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l5715:	
	clrf	(___bmul@product)
	line	6
	
l2869:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l5719
u2840:
	line	8
	
l5717:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l5719
	
l2870:	
	line	9
	
l5719:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l5721:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l5723:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l2869
u2850:
	goto	l5725
	
l2871:	
	line	12
	
l5725:	
	movf	(___bmul@product),w
	goto	l2872
	
l5727:	
	line	13
	
l2872:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_reverse
psect	text1273,local,class=CODE,delta=2
global __ptext1273
__ptext1273:

;; *************** function _reverse *****************
;; Defined at:
;;		line 9 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\string.c"
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
psect	text1273
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\string.c"
	line	9
	global	__size_of_reverse
	__size_of_reverse	equ	__end_of_reverse-_reverse
	
_reverse:	
	opt	stack 4
; Regs used in _reverse: [wreg-fsr0h+status,2+status,0]
;reverse@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(reverse@str)
	line	10
	
l6663:	
;string.c: 10: int i=0, j=len-1, temp;
	clrf	(reverse@i)
	clrf	(reverse@i+1)
	
l6665:	
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
	goto	l6673
	
l2160:	
	line	13
	
l6667:	
;string.c: 12: {
;string.c: 13: temp = str[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(reverse@i),w
	addwf	(reverse@str),w
	movwf	(??_reverse+0)+0
	movf	0+(??_reverse+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
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
	
l6669:	
;string.c: 16: i++; j--;
	movlw	low(01h)
	addwf	(reverse@i),f
	skipnc
	incf	(reverse@i+1),f
	movlw	high(01h)
	addwf	(reverse@i+1),f
	
l6671:	
	movlw	low(-1)
	addwf	(reverse@j),f
	skipnc
	incf	(reverse@j+1),f
	movlw	high(-1)
	addwf	(reverse@j+1),f
	goto	l6673
	line	17
	
l2159:	
	line	11
	
l6673:	
	movf	(reverse@i+1),w
	xorlw	80h
	movwf	(??_reverse+0)+0
	movf	(reverse@j+1),w
	xorlw	80h
	subwf	(??_reverse+0)+0,w
	skipz
	goto	u4235
	movf	(reverse@j),w
	subwf	(reverse@i),w
u4235:

	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l6667
u4230:
	goto	l2162
	
l2161:	
	line	18
	
l2162:	
	return
	opt stack 0
GLOBAL	__end_of_reverse
	__end_of_reverse:
;; =============== function _reverse ends ============

	signat	_reverse,8312
	global	_lcd_write
psect	text1274,local,class=CODE,delta=2
global __ptext1274
__ptext1274:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
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
;;		_lcd_goto
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text1274
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l5689:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l5691:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5693:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2815:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2815
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l5695:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5697:	
	bcf	(73/8),(73)&7
	line	28
	
l5699:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l5701
	
l1443:	
	goto	l5701
	
l1442:	
	
l5701:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l5701
u2820:
	goto	l1445
	
l1444:	
	line	29
	
l1445:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_DelayMs
psect	text1275,local,class=CODE,delta=2
global __ptext1275
__ptext1275:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\delay.c"
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
;;		_InitMain
;;		_main
;;		_read_a2d
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text1275
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\delay.c"
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
	
l748:	
	line	21
	
l5673:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l749:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l5675
	
l751:	
	goto	l5675
	
l750:	
	
l5675:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l5675
u2760:
	goto	l5677
	
l752:	
	line	24
	
l5677:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l749
u2770:
	goto	l5679
	
l753:	
	line	25
	
l5679:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l748
u2780:
	goto	l755
	
l754:	
	line	27
	
l755:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_init_a2d
psect	text1276,local,class=CODE,delta=2
global __ptext1276
__ptext1276:

;; *************** function _init_a2d *****************
;; Defined at:
;;		line 127 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InitMain
;; This function uses a non-reentrant model
;;
psect	text1276
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	line	127
	global	__size_of_init_a2d
	__size_of_init_a2d	equ	__end_of_init_a2d-_init_a2d
	
_init_a2d:	
	opt	stack 5
; Regs used in _init_a2d: [wreg]
	line	128
	
l5669:	
;Code.c: 128: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	129
;Code.c: 129: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	130
	
l5671:	
;Code.c: 130: ADON=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	131
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_init_a2d
	__end_of_init_a2d:
;; =============== function _init_a2d ends ============

	signat	_init_a2d,88
	global	_IntVector
psect	text1277,local,class=CODE,delta=2
global __ptext1277
__ptext1277:

;; *************** function _IntVector *****************
;; Defined at:
;;		line 147 in file "C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
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
psect	text1277
	file	"C:\Users\USER\OneDrive\Desktop\Studying\Midterm\Code.c"
	line	147
	global	__size_of_IntVector
	__size_of_IntVector	equ	__end_of_IntVector-_IntVector
	
_IntVector:	
	opt	stack 1
; Regs used in _IntVector: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_IntVector+0)
	movf	fsr0,w
	movwf	(??_IntVector+1)
	movf	pclath,w
	movwf	(??_IntVector+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_IntVector+3)
	ljmp	_IntVector
psect	text1277
	line	148
	
i1l5681:	
;Code.c: 148: if (T0IE && T0IF)
	btfss	(93/8),(93)&7
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l745
u279_20:
	
i1l5683:	
	btfss	(90/8),(90)&7
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l745
u280_20:
	line	150
	
i1l5685:	
;Code.c: 149: {
;Code.c: 150: T0IF = 0;
	bcf	(90/8),(90)&7
	line	151
	
i1l5687:	
;Code.c: 151: TMR0 =61;
	movlw	(03Dh)
	movwf	(1)	;volatile
	line	154
;Code.c: 154: Counter++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_Counter)^080h,f
	skipnc
	incf	(_Counter+1)^080h,f
	movlw	high(01h)
	addwf	(_Counter+1)^080h,f
	goto	i1l745
	line	157
	
i1l744:	
	line	158
	
i1l745:	
	movf	(??_IntVector+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_IntVector+2),w
	movwf	pclath
	movf	(??_IntVector+1),w
	movwf	fsr0
	swapf	(??_IntVector+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_IntVector
	__end_of_IntVector:
;; =============== function _IntVector ends ============

	signat	_IntVector,88
psect	text1278,local,class=CODE,delta=2
global __ptext1278
__ptext1278:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
