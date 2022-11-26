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
# 14 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	psect config,class=CONFIG,delta=2 ;#
# 14 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_init_a2d
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_read_a2d
	FNCALL	_main,___ftdiv
	FNCALL	_main,_read_a2d2
	FNCALL	_main,___ftadd
	FNCALL	_main,_ftoa
	FNCALL	_main,_lcd_puts
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
	FNCALL	_read_a2d2,_DelayMs
	FNCALL	_read_a2d2,___lbtoft
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
	FNCALL	_intToStr,___lwmod
	FNCALL	_intToStr,___lwdiv
	FNCALL	_intToStr,_reverse
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_goto,_lcd_write
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
	global	_d2Counter
	global	_errno
	global	_str2
	global	_x
	global	_x2
	global	_d1Counter
	global	_state
	global	_str
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_ADON
_ADON	set	248
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_PEIE
_PEIE	set	94
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
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
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
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
	
STR_1:	
	retlw	71	;'G'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_2:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	53	;'5'
	retlw	0
psect	strings
	file	"todo_2_1182972.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_d2Counter:
       ds      2

_errno:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_str2:
       ds      10

_x:
       ds      3

_x2:
       ds      3

_d1Counter:
       ds      2

_state:
       ds      2

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
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Eh)
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
	global	?_pow
?_pow:	; 3 bytes @ 0x0
	global	pow@x
pow@x:	; 3 bytes @ 0x0
	ds	3
	global	pow@y
pow@y:	; 3 bytes @ 0x3
	ds	3
	global	??_pow
??_pow:	; 0 bytes @ 0x6
	ds	1
	global	_pow$3821
_pow$3821:	; 3 bytes @ 0x7
	ds	3
	global	pow@sign
pow@sign:	; 1 bytes @ 0xA
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0xB
	ds	4
	global	?_ftoa
?_ftoa:	; 0 bytes @ 0xF
	global	ftoa@n
ftoa@n:	; 3 bytes @ 0xF
	ds	3
	global	ftoa@res
ftoa@res:	; 1 bytes @ 0x12
	ds	1
	global	ftoa@afterpoint
ftoa@afterpoint:	; 2 bytes @ 0x13
	ds	2
	global	??_ftoa
??_ftoa:	; 0 bytes @ 0x15
	ds	2
	global	_ftoa$3820
_ftoa$3820:	; 3 bytes @ 0x17
	ds	3
	global	ftoa@ipart
ftoa@ipart:	; 2 bytes @ 0x1A
	ds	2
	global	ftoa@i
ftoa@i:	; 2 bytes @ 0x1C
	ds	2
	global	ftoa@fpart
ftoa@fpart:	; 3 bytes @ 0x1E
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x21
	ds	2
	global	main@summ
main@summ:	; 3 bytes @ 0x23
	ds	3
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_init_a2d
?_init_a2d:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IntVector
?_IntVector:	; 0 bytes @ 0x0
	global	??_IntVector
??_IntVector:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	ds	4
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x4
	global	??_init_a2d
??_init_a2d:	; 0 bytes @ 0x4
	global	??_frexp
??_frexp:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	?_reverse
?_reverse:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x4
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x4
	global	??___altoft
??___altoft:	; 0 bytes @ 0x4
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0x4
	global	?___bmul
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x4
	global	reverse@len
reverse@len:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x5
	global	??___bmul
??___bmul:	; 0 bytes @ 0x5
	global	read_a2d@channel
read_a2d@channel:	; 1 bytes @ 0x5
	global	read_a2d2@channel
read_a2d2@channel:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x5
	ds	1
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_reverse
??_reverse:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?_frexp
?_frexp:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x0
	global	lcd_write@_dcnt
lcd_write@_dcnt:	; 1 bytes @ 0x0
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x1
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x1
	ds	1
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x2
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x2
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	reverse@temp
reverse@temp:	; 2 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	lcd_init@_dcnt_2131
lcd_init@_dcnt_2131:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	reverse@i
reverse@i:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	reverse@j
reverse@j:	; 2 bytes @ 0x7
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
	global	reverse@str
reverse@str:	; 1 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0xB
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xB
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0xE
	global	?_intToStr
?_intToStr:	; 2 bytes @ 0xE
	global	?___altoft
?___altoft:	; 3 bytes @ 0xE
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xE
	global	intToStr@x
intToStr@x:	; 2 bytes @ 0xE
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0xE
	ds	1
	global	?_read_a2d
?_read_a2d:	; 3 bytes @ 0xF
	global	?_read_a2d2
?_read_a2d2:	; 3 bytes @ 0xF
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xF
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xF
	ds	1
	global	intToStr@str
intToStr@str:	; 1 bytes @ 0x10
	ds	1
	global	intToStr@d
intToStr@d:	; 2 bytes @ 0x11
	ds	1
	global	??_read_a2d
??_read_a2d:	; 0 bytes @ 0x12
	global	??_read_a2d2
??_read_a2d2:	; 0 bytes @ 0x12
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x12
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x12
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x12
	ds	1
	global	??_intToStr
??_intToStr:	; 0 bytes @ 0x13
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x13
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x13
	ds	2
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x15
	global	intToStr@i
intToStr@i:	; 2 bytes @ 0x15
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x16
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x17
	ds	2
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x19
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1A
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1D
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1E
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1F
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1F
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x22
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x25
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x29
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2B
	ds	1
	global	?_floor
?_floor:	; 3 bytes @ 0x2C
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x2C
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2C
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2C
	global	floor@x
floor@x:	; 3 bytes @ 0x2C
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x2C
	ds	3
	global	??_floor
??_floor:	; 0 bytes @ 0x2F
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x2F
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2F
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x30
	ds	1
	global	??_ldexp
??_ldexp:	; 0 bytes @ 0x31
	ds	2
	global	floor@expon
floor@expon:	; 2 bytes @ 0x33
	global	_ldexp$3590
_ldexp$3590:	; 3 bytes @ 0x33
	ds	3
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x36
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x36
	ds	3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x39
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x3A
	ds	2
	global	??_eval_poly
??_eval_poly:	; 0 bytes @ 0x3C
	ds	1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x3D
	ds	3
	global	?_log
?_log:	; 3 bytes @ 0x40
	global	log@x
log@x:	; 3 bytes @ 0x40
	ds	3
	global	??_log
??_log:	; 0 bytes @ 0x43
	ds	1
	global	log@exp
log@exp:	; 2 bytes @ 0x44
	ds	2
	global	?_exp
?_exp:	; 3 bytes @ 0x46
	global	exp@x
exp@x:	; 3 bytes @ 0x46
	ds	3
	global	??_exp
??_exp:	; 0 bytes @ 0x49
	ds	1
	global	_exp$3544
_exp$3544:	; 3 bytes @ 0x4A
	ds	3
	global	exp@exp
exp@exp:	; 2 bytes @ 0x4D
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x4F
	ds	1
;;Data sizes: Strings 27, constant 57, data 0, bss 34, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80     80      80
;; BANK1           80     38      68
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
;; ?_read_a2d2	float  size(1) Largest target is 0
;;
;; ?_read_a2d	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
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
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 15
;;		 -> STR_2(CODE[12]), STR_1(CODE[15]), str(BANK1[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_init
;;   _main->_lcd_goto
;;   _main->_read_a2d
;;   _main->_read_a2d2
;;   _ftoa->___awtoft
;;   _pow->___lltoft
;;   _exp->___awtoft
;;   _log->_frexp
;;   _log->___awtoft
;;   _eval_poly->___bmul
;;   _floor->_frexp
;;   _floor->___altoft
;;   ___ftsub->___awtoft
;;   _read_a2d2->_DelayMs
;;   _read_a2d2->___lbtoft
;;   _read_a2d->_DelayMs
;;   _read_a2d->___lbtoft
;;   _ldexp->___bmul
;;   ___ftmul->___awtoft
;;   ___ftmul->_frexp
;;   ___ftadd->___awtoft
;;   ___ftadd->_frexp
;;   ___ftadd->___bmul
;;   _intToStr->___lwmod
;;   _intToStr->_reverse
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;   _lcd_init->_lcd_write
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
;;   _read_a2d2->___lbtoft
;;   _read_a2d->___lbtoft
;;   _ldexp->___ftadd
;;   ___lltoft->___ftpack
;;   ___altoft->___fttol
;;   ___awtoft->___ftneg
;;   ___lbtoft->___ftpack
;;   ___ftmul->___awtoft
;;   ___ftdiv->___ftpack
;;   ___ftadd->___ftmul
;;   _intToStr->___fttol
;;   _lcd_puts->_lcd_write
;;   _lcd_goto->_lcd_write
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0   29325
;;                                             33 BANK1      5     5      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                           _init_a2d
;;                           _lcd_goto
;;                           _read_a2d
;;                            ___ftdiv
;;                          _read_a2d2
;;                            ___ftadd
;;                               _ftoa
;;                           _lcd_puts
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (1) _ftoa                                                18    12      6   24996
;;                                             15 BANK1     18    12      6
;;                            ___fttol
;;                           ___awtoft
;;                            ___ftneg
;;                            ___ftadd
;;                           _intToStr
;;                                _pow
;;                            ___ftmul
;; ---------------------------------------------------------------------------------
;; (2) _pow                                                 15     9      6   20012
;;                                              0 BANK1     15     9      6
;;                             ___ftge
;;                            ___fttol
;;                           ___lltoft
;;                            ___ftneg
;;                                _log
;;                            ___ftmul
;;                                _exp
;; ---------------------------------------------------------------------------------
;; (3) _exp                                                 10     7      3   11422
;;                                             70 BANK0     10     7      3
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
;; (3) _log                                                  6     3      3    6279
;;                                             64 BANK0      6     3      3
;;                             ___ftge
;;                              _frexp
;;                            ___ftmul
;;                            ___ftadd
;;                          _eval_poly
;;                           ___awtoft
;; ---------------------------------------------------------------------------------
;; (4) _eval_poly                                           10     4      6    2727
;;                                             54 BANK0     10     4      6
;;                             ___bmul
;;                            ___ftmul
;;                            ___ftadd
;;                              _ldexp (ARG)
;; ---------------------------------------------------------------------------------
;; (4) _floor                                                9     6      3    3312
;;                                             44 BANK0      9     6      3
;;                              _frexp
;;                             ___ftge
;;                            ___fttol
;;                           ___altoft
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (4) ___ftsub                                              6     0      6    1602
;;                                             44 BANK0      6     0      6
;;                            ___ftadd
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _read_a2d2                                            6     3      3     476
;;                                              5 COMMON     1     1      0
;;                                             15 BANK0      5     2      3
;;                            _DelayMs
;;                           ___lbtoft
;; ---------------------------------------------------------------------------------
;; (1) _read_a2d                                             6     3      3     476
;;                                              5 COMMON     1     1      0
;;                                             15 BANK0      5     2      3
;;                            _DelayMs
;;                           ___lbtoft
;; ---------------------------------------------------------------------------------
;; (4) _ldexp                                               10     5      5     639
;;                                             44 BANK0     10     5      5
;;                             ___ftge
;;                            ___ftneg
;;                             ___bmul (ARG)
;;                            ___ftmul (ARG)
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lltoft                                             6     2      4     414
;;                                              4 COMMON     2     2      0
;;                                              8 BANK0      4     0      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (5) ___altoft                                             8     4      4     516
;;                                              4 COMMON     2     2      0
;;                                             14 BANK0      6     2      4
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___awtoft                                             6     3      3     445
;;                                              4 COMMON     2     2      0
;;                                             11 BANK0      4     1      3
;;                           ___ftpack
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbtoft                                             8     5      3     343
;;                                              4 COMMON     1     1      0
;;                                              8 BANK0      7     4      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     800
;;                                             15 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                              _frexp (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftdiv                                             16    10      6     732
;;                                              8 BANK0     16    10      6
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (5) ___ftadd                                             13     7      6    1537
;;                                             31 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;;                            ___ftmul (ARG)
;;                              _frexp (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _intToStr                                             9     4      5    1306
;;                                             14 BANK0      9     4      5
;;                            ___lwmod
;;                            ___lwdiv
;;                            _reverse
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     161
;;                                              2 BANK0      2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     127
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     195
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             3     3      0     263
;;                                              5 COMMON     1     1      0
;;                                              3 BANK0      2     2      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (5) _frexp                                                6     2      4     322
;;                                              4 COMMON     2     2      0
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     198
;;                                              0 BANK0     12     6      6
;; ---------------------------------------------------------------------------------
;; (5) ___ftneg                                              3     0      3      45
;;                                              8 BANK0      3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___fttol                                             14    10      4     371
;;                                              0 BANK0     14    10      4
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     312
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lwmod                                              6     2      4     232
;;                                              4 COMMON     2     2      0
;;                                              0 BANK0      4     0      4
;; ---------------------------------------------------------------------------------
;; (3) ___lwdiv                                              8     4      4     241
;;                                              4 COMMON     1     1      0
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (5) ___bmul                                               4     3      1     136
;;                                              4 COMMON     2     1      1
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _reverse                                             12    10      2     387
;;                                              4 COMMON     2     0      2
;;                                              0 BANK0     10    10      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      96
;;                                              4 COMMON     1     1      0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _init_a2d                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      99
;;                                              4 COMMON     1     1      0
;;                                              0 BANK0      3     3      0
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
;;   _DelayMs
;;   _lcd_init
;;     _DelayMs
;;     _lcd_write
;;   _lcd_clear
;;     _lcd_write
;;     _DelayMs
;;   _init_a2d
;;   _lcd_goto
;;     _lcd_write
;;   _read_a2d
;;     _DelayMs
;;     ___lbtoft
;;       ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;   _read_a2d2
;;     _DelayMs
;;     ___lbtoft
;;       ___ftpack
;;   ___ftadd
;;     ___ftpack
;;     ___ftneg (ARG)
;;       ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___ftmul (ARG)
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       _frexp (ARG)
;;     _frexp (ARG)
;;     ___bmul (ARG)
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
;;   _lcd_puts
;;     _lcd_write
;;   ___ftge
;;
;; _IntVector (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      9E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     50      50       5      100.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     26      44       7       85.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      A4      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  summ            3   35[BANK1 ] float 
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
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DelayMs
;;		_lcd_init
;;		_lcd_clear
;;		_init_a2d
;;		_lcd_goto
;;		_read_a2d
;;		___ftdiv
;;		_read_a2d2
;;		___ftadd
;;		_ftoa
;;		_lcd_puts
;;		___ftge
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l7241:	
;capture.c: 29: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(159)^080h	;volatile
	line	30
	
l7243:	
;capture.c: 30: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	31
	
l7245:	
;capture.c: 31: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7
	line	32
	
l7247:	
;capture.c: 32: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	33
	
l7249:	
;capture.c: 33: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	34
	
l7251:	
;capture.c: 34: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	35
	
l7253:	
;capture.c: 35: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	37
	
l7255:	
;capture.c: 37: GIE = 1;
	bsf	(95/8),(95)&7
	line	38
	
l7257:	
;capture.c: 38: PEIE = 1;
	bsf	(94/8),(94)&7
	line	39
;capture.c: 39: OPTION_REG = 0x47;
	movlw	(047h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	40
;capture.c: 40: TMR0 =103;
	movlw	(067h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	42
	
l7259:	
;capture.c: 42: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	43
	
l7261:	
;capture.c: 43: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	44
	
l7263:	
;capture.c: 44: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	45
	
l7265:	
;capture.c: 45: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	46
	
l7267:	
;capture.c: 46: T1CKPS0 = 0; T1CKPS1 = 0;
	bcf	(132/8),(132)&7
	
l7269:	
	bcf	(133/8),(133)&7
	line	47
	
l7271:	
;capture.c: 47: T1SYNC = 0;
	bcf	(130/8),(130)&7
	line	48
	
l7273:	
;capture.c: 48: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	49
	
l7275:	
;capture.c: 49: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	51
;capture.c: 51: PR2 = 71;
	movlw	(047h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	52
;capture.c: 52: T2CON = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	53
;capture.c: 53: CCP1CON = 0b00101100;
	movlw	(02Ch)
	movwf	(23)	;volatile
	line	55
	
l7277:	
;capture.c: 55: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	56
	
l7279:	
;capture.c: 56: lcd_init();
	fcall	_lcd_init
	line	57
	
l7281:	
;capture.c: 57: lcd_clear();
	fcall	_lcd_clear
	line	59
	
l7283:	
;capture.c: 59: init_a2d();
	fcall	_init_a2d
	line	60
	
l7285:	
;capture.c: 60: DelayMs(500);
	movlw	(0F4h)
	fcall	_DelayMs
	goto	l7287
	line	63
;capture.c: 63: while(1) {
	
l717:	
	line	64
	
l7287:	
;capture.c: 64: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	65
	
l7289:	
;capture.c: 65: lcd_clear();
	fcall	_lcd_clear
	line	66
	
l7291:	
;capture.c: 66: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	67
	
l7293:	
;capture.c: 67: x= read_a2d(0);
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
	line	68
	
l7295:	
;capture.c: 68: x = x/51.0;
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
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+2)^080h
	line	69
	
l7297:	
;capture.c: 69: x2 = read_a2d2(0);
	movlw	(0)
	fcall	_read_a2d2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_read_a2d2)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_a2d2)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_read_a2d2)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x2+2)^080h
	line	70
	
l7299:	
;capture.c: 70: x2/=51.0;
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
	movf	(_x2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftdiv)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x2+2)^080h
	line	71
	
l7301:	
;capture.c: 71: float summ = x+x2;
	movf	(_x2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@summ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@summ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@summ+2)^080h
	line	72
	
l7303:	
;capture.c: 72: ftoa(summ, str, 1);
	movf	(main@summ)^080h,w
	movwf	(?_ftoa)^080h
	movf	(main@summ+1)^080h,w
	movwf	(?_ftoa+1)^080h
	movf	(main@summ+2)^080h,w
	movwf	(?_ftoa+2)^080h
	movlw	(_str)&0ffh
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(0+?_ftoa+03h)^080h
	movlw	low(01h)
	movwf	0+(?_ftoa)^080h+04h
	movlw	high(01h)
	movwf	(0+(?_ftoa)^080h+04h)+1
	fcall	_ftoa
	line	74
	
l7305:	
;capture.c: 74: lcd_puts(str);
	movlw	(_str&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	75
	
l7307:	
;capture.c: 75: lcd_goto(40);
	movlw	(028h)
	fcall	_lcd_goto
	line	76
	
l7309:	
;capture.c: 76: if(summ > 5.0)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0xa0
	movwf	(?___ftge+1)
	movlw	0x40
	movwf	(?___ftge+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@summ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@summ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftge)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@summ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u5531
	goto	u5530
u5531:
	goto	l7317
u5530:
	line	78
	
l7311:	
;capture.c: 77: {
;capture.c: 78: lcd_puts("Greater than 5");
	movlw	low((STR_1-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	79
	
l7313:	
;capture.c: 79: CCPR1L = 0b00010101;
	movlw	(015h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	80
	
l7315:	
;capture.c: 80: d1Counter = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_d1Counter)^080h
	clrf	(_d1Counter+1)^080h
	line	81
;capture.c: 81: }
	goto	l7287
	line	82
	
l718:	
	line	84
	
l7317:	
;capture.c: 82: else
;capture.c: 83: {
;capture.c: 84: lcd_puts("Less Than 5");
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	85
	
l7319:	
;capture.c: 85: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	86
	
l7321:	
;capture.c: 86: if(d1Counter == 150){
	movlw	096h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_d1Counter)^080h,w
	iorwf	(_d1Counter+1)^080h,w
	skipz
	goto	u5541
	goto	u5540
u5541:
	goto	l7287
u5540:
	line	87
	
l7323:	
;capture.c: 87: state = !state;
	movf	(_state+1)^080h,w
	iorwf	(_state)^080h,w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	movwf	(_state)^080h
	movf	1+(??_main+0)^080h+0,w
	movwf	(_state+1)^080h
	line	88
	
l7325:	
;capture.c: 88: PORTC |= (state);
	movf	(_state)^080h,w
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(7),f	;volatile
	goto	l7287
	line	89
	
l720:	
	goto	l7287
	line	90
	
l719:	
	goto	l7287
	line	91
	
l721:	
	line	63
	goto	l7287
	
l722:	
	line	93
	
l723:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ftoa
psect	text1237,local,class=CODE,delta=2
global __ptext1237
__ptext1237:

;; *************** function _ftoa *****************
;; Defined at:
;;		line 44 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\string.c"
;; Parameters:    Size  Location     Type
;;  n               3   15[BANK1 ] float 
;;  res             1   18[BANK1 ] PTR unsigned char 
;;		 -> str(10), 
;;  afterpoint      2   19[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  fpart           3   30[BANK1 ] float 
;;  i               2   28[BANK1 ] int 
;;  ipart           2   26[BANK1 ] int 
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
psect	text1237
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\string.c"
	line	44
	global	__size_of_ftoa
	__size_of_ftoa	equ	__end_of_ftoa-_ftoa
	
_ftoa:	
	opt	stack 1
; Regs used in _ftoa: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l7227:	
;string.c: 46: int ipart = (int)n;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@n)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@n+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@n+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ftoa@ipart+1)^080h
	addwf	(ftoa@ipart+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	
l7229:	
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
	
l7231:	
;string.c: 55: if (afterpoint != 0)
	movf	(ftoa@afterpoint+1)^080h,w
	iorwf	(ftoa@afterpoint)^080h,w
	skipnz
	goto	u5521
	goto	u5520
u5521:
	goto	l2175
u5520:
	line	57
	
l7233:	
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
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	62
	
l7235:	
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
	movwf	(_ftoa$3820)^080h
	movf	(1+(?_pow))^080h,w
	movwf	(_ftoa$3820+1)^080h
	movf	(2+(?_pow))^080h,w
	movwf	(_ftoa$3820+2)^080h
	
l7237:	
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
	movf	(_ftoa$3820)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3820+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ftoa$3820+2)^080h,w
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
	
l7239:	
;string.c: 64: intToStr((int)fpart, res + i + 1, afterpoint);
	movf	(ftoa@fpart)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@fpart+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ftoa@fpart+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
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
psect	text1238,local,class=CODE,delta=2
global __ptext1238
__ptext1238:

;; *************** function _pow *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    0[BANK1 ] int 
;;  y               3    3[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  yi              4   11[BANK1 ] unsigned long 
;;  sign            1   10[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK1 ] unsigned char 
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
psect	text1238
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\pow.c"
	line	6
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
	opt	stack 1
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l7189:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(pow@sign)^080h
	line	10
	
l7191:	
	movf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u5461
	goto	u5460
u5461:
	goto	l7199
u5460:
	line	11
	
l7193:	
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
	goto	u5471
	goto	u5470
u5471:
	goto	l2859
u5470:
	line	12
	
l7195:	
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
	
l7197:	
	goto	l2860
	line	15
	
l2858:	
	line	16
	
l7199:	
	movf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u5481
	goto	u5480
u5481:
	goto	l7205
u5480:
	line	17
	
l7201:	
	movlw	0x0
	movwf	(?_pow)^080h
	movlw	0x80
	movwf	(?_pow+1)^080h
	movlw	0x3f
	movwf	(?_pow+2)^080h
	goto	l2860
	
l7203:	
	goto	l2860
	
l2861:	
	line	18
	
l7205:	
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
	goto	u5491
	goto	u5490
u5491:
	goto	l7217
u5490:
	line	19
	
l7207:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@yi+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
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
	goto	u5505
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(1+(?___lltoft)),w
	skipz
	goto	u5505
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(0+(?___lltoft)),w
u5505:
	skipnz
	goto	u5501
	goto	u5500
u5501:
	goto	l7213
u5500:
	line	21
	
l7209:	
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
	
l7211:	
	goto	l2860
	line	23
	
l2863:	
	line	24
	
l7213:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@yi)^080h,w
	andlw	01h
	movwf	(??_pow+0)^080h+0
	movf	(??_pow+0)^080h+0,w
	movwf	(pow@sign)^080h
	line	25
	
l7215:	
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
	goto	l7217
	line	26
	
l2862:	
	line	27
	
l7217:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log+2)
	fcall	_log
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3821)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3821+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_pow$3821+2)^080h
	
l7219:	
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
	movf	(_pow$3821)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3821+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pow$3821+2)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_exp)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+2)^080h
	line	28
	
l7221:	
	movf	(pow@sign)^080h,w
	skipz
	goto	u5510
	goto	l2864
u5510:
	line	29
	
l7223:	
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
	
l7225:	
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
psect	text1239,local,class=CODE,delta=2
global __ptext1239
__ptext1239:

;; *************** function _exp *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   70[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2   77[BANK0 ] int 
;;  sign            1   79[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   70[BANK0 ] unsigned char 
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
psect	text1239
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\exp.c"
	line	13
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
	opt	stack 1
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l7137:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(exp@x+2),w
	iorwf	(exp@x+1),w
	iorwf	(exp@x),w
	skipz
	goto	u5401
	goto	u5400
u5401:
	goto	l7143
u5400:
	line	32
	
l7139:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x3f
	movwf	(?_exp+2)
	goto	l3218
	
l7141:	
	goto	l3218
	
l3217:	
	line	34
	
l7143:	
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
	goto	u5411
	goto	u5410
u5411:
	goto	l7153
u5410:
	line	35
	
l7145:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	36
	goto	l7149
	
l7147:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x80
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l3218
	
l3221:	
	
l7149:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x7f
	movwf	(?_exp+1)
	movlw	0x7f
	movwf	(?_exp+2)
	goto	l3218
	
l3223:	
	goto	l3218
	
l7151:	
	goto	l3218
	line	37
	
l3219:	
	line	38
	
l7153:	
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
	goto	u5421
	goto	u5420
u5421:
	goto	l7159
u5420:
	line	39
	
l7155:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	40
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l3218
	
l7157:	
	goto	l3218
	line	41
	
l3224:	
	line	43
	
l7159:	
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
	
l7161:	
	movf	(exp@sign),w
	skipz
	goto	u5430
	goto	l7165
u5430:
	line	45
	
l7163:	
	movf	(exp@x),w
	movwf	(?___ftneg)
	movf	(exp@x+1),w
	movwf	(?___ftneg+1)
	movf	(exp@x+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(exp@x)
	movf	(1+(?___ftneg)),w
	movwf	(exp@x+1)
	movf	(2+(?___ftneg)),w
	movwf	(exp@x+2)
	goto	l7165
	
l3225:	
	line	46
	
l7165:	
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
	
l7167:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(exp@exp+1)
	addwf	(exp@exp+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(exp@exp)
	addwf	(exp@exp)

	line	48
	
l7169:	
	movf	(exp@exp+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(exp@exp),w
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
	
l7171:	
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
	
l7173:	
	movf	(exp@sign),w
	skipz
	goto	u5440
	goto	l3226
u5440:
	goto	l7179
	line	52
	
l7175:	
	goto	l7179
	
l7177:	
	movlw	0x0
	movwf	(_exp$3544)
	movlw	0x80
	movwf	(_exp$3544+1)
	movlw	0x7f
	movwf	(_exp$3544+2)
	goto	l3231
	
l3229:	
	
l7179:	
	movlw	0xff
	movwf	(_exp$3544)
	movlw	0x7f
	movwf	(_exp$3544+1)
	movlw	0x7f
	movwf	(_exp$3544+2)
	
l3231:	
	movf	(exp@x+2),w
	xorwf	(_exp$3544+2),w
	skipz
	goto	u5455
	movf	(exp@x+1),w
	xorwf	(_exp$3544+1),w
	skipz
	goto	u5455
	movf	(exp@x),w
	xorwf	(_exp$3544),w
u5455:
	skipz
	goto	u5451
	goto	u5450
u5451:
	goto	l7185
u5450:
	line	53
	
l7181:	
	movlw	0x0
	movwf	(?_exp)
	movlw	0x0
	movwf	(?_exp+1)
	movlw	0x0
	movwf	(?_exp+2)
	goto	l3218
	
l7183:	
	goto	l3218
	
l3227:	
	line	54
	
l7185:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(?_exp)
	movf	(1+(?___ftdiv)),w
	movwf	(?_exp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_exp+2)
	goto	l3218
	
l7187:	
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
psect	text1240,local,class=CODE,delta=2
global __ptext1240
__ptext1240:

;; *************** function _log *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   64[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp             2   68[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   64[BANK0 ] int 
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
psect	text1240
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\log.c"
	line	6
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
	opt	stack 1
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l7115:	
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
	goto	u5381
	goto	u5380
u5381:
	goto	l7121
u5380:
	line	25
	
l7117:	
	movlw	low(021h)
	movwf	(_errno)
	movlw	high(021h)
	movwf	((_errno))+1
	line	26
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_log)
	movlw	0x0
	movwf	(?_log+1)
	movlw	0x0
	movwf	(?_log+2)
	goto	l3252
	
l7119:	
	goto	l3252
	line	27
	
l3251:	
	line	28
	
l7121:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u5391
	goto	u5390
u5391:
	goto	l7127
u5390:
	line	29
	
l7123:	
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
	goto	l3252
	
l7125:	
	goto	l3252
	line	31
	
l3253:	
	line	32
	
l7127:	
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
	movwf	(0+?_frexp+03h)
	movf	(log@x),w
	movwf	(?_frexp)
	movf	(log@x+1),w
	movwf	(?_frexp+1)
	movf	(log@x+2),w
	movwf	(?_frexp+2)
	fcall	_frexp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_frexp)),w
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
	
l7129:	
	movlw	low(-1)
	addwf	(log@exp),f
	skipnc
	incf	(log@exp+1),f
	movlw	high(-1)
	addwf	(log@exp+1),f
	line	34
	
l7131:	
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
	
l7133:	
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
	movwf	(?_log)
	movf	(1+(?___ftadd)),w
	movwf	(?_log+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_log+2)
	goto	l3252
	
l7135:	
	line	36
	
l3252:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
;; =============== function _log ends ============

	signat	_log,4219
	global	_eval_poly
psect	text1241,local,class=CODE,delta=2
global __ptext1241
__ptext1241:

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   54[BANK0 ] int 
;;  d               1   57[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), 
;;  n               2   58[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   61[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   54[BANK0 ] int 
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
psect	text1241
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\evalpoly.c"
	line	5
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
	opt	stack 1
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l7105:	
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
	goto	l7109
	
l3301:	
	line	10
	
l7107:	
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
	goto	l7109
	
l3300:	
	line	9
	
l7109:	
	movf	((eval_poly@n+1)),w
	iorwf	((eval_poly@n)),w
	skipz
	goto	u5371
	goto	u5370
u5371:
	goto	l7107
u5370:
	goto	l7111
	
l3302:	
	line	11
	
l7111:	
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	goto	l3303
	
l7113:	
	line	12
	
l3303:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
;; =============== function _eval_poly ends ============

	signat	_eval_poly,12411
	global	_floor
psect	text1242,local,class=CODE,delta=2
global __ptext1242
__ptext1242:

;; *************** function _floor *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   44[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   48[BANK0 ] int 
;;  expon           2   51[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] int 
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
psect	text1242
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\floor.c"
	line	14
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
	opt	stack 1
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l7077:	
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
	movwf	(0+?_frexp+03h)
	fcall	_frexp
	line	19
	
l7079:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u5331
	goto	u5330
u5331:
	goto	l7091
u5330:
	line	20
	
l7081:	
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
	goto	u5341
	goto	u5340
u5341:
	goto	l7087
u5340:
	line	21
	
l7083:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	l3238
	
l7085:	
	goto	l3238
	
l3237:	
	line	22
	
l7087:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	l3238
	
l7089:	
	goto	l3238
	line	23
	
l3236:	
	line	24
	
l7091:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u5351
	goto	u5350
u5351:
	goto	l7095
u5350:
	line	25
	
l7093:	
	goto	l3238
	
l3239:	
	line	26
	
l7095:	
	movf	(floor@x),w
	movwf	(?___fttol)
	movf	(floor@x+1),w
	movwf	(?___fttol+1)
	movf	(floor@x+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
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
	goto	u5361
	goto	u5360
u5361:
	goto	l7101
u5360:
	line	28
	
l7097:	
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
	
l7099:	
	goto	l3238
	
l3240:	
	line	29
	
l7101:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	l3238
	
l7103:	
	line	30
	
l3238:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
;; =============== function _floor ends ============

	signat	_floor,4219
	global	___ftsub
psect	text1243,local,class=CODE,delta=2
global __ptext1243
__ptext1243:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   44[BANK0 ] float 
;;  f1              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
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
psect	text1243
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 1
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l7071:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	19
	
l7073:	
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
	
l7075:	
	line	20
	
l2958:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_read_a2d2
psect	text1244,local,class=CODE,delta=2
global __ptext1244
__ptext1244:

;; *************** function _read_a2d2 *****************
;; Defined at:
;;		line 127 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;;		___lbtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1244
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	line	127
	global	__size_of_read_a2d2
	__size_of_read_a2d2	equ	__end_of_read_a2d2-_read_a2d2
	
_read_a2d2:	
	opt	stack 4
; Regs used in _read_a2d2: [wreg+status,2+status,0+pclath+cstack]
;read_a2d2@channel stored from wreg
	movwf	(read_a2d2@channel)
	line	128
	
l7059:	
;capture.c: 128: channel &=0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_a2d2+0)+0
	movf	(??_read_a2d2+0)+0,w
	andwf	(read_a2d2@channel),f
	line	129
;capture.c: 129: ADCON0 = 0x49;
	movlw	(049h)
	movwf	(31)	;volatile
	line	133
;capture.c: 133: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	134
	
l7061:	
;capture.c: 134: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	135
	
l7063:	
;capture.c: 135: ADCON0 |=(channel<<3);
	movf	(read_a2d2@channel),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_a2d2+0)+0
	movlw	(03h)-1
u5315:
	clrc
	rlf	(??_read_a2d2+0)+0,f
	addlw	-1
	skipz
	goto	u5315
	clrc
	rlf	(??_read_a2d2+0)+0,w
	movwf	(??_read_a2d2+1)+0
	movf	(??_read_a2d2+1)+0,w
	iorwf	(31),f	;volatile
	line	136
	
l7065:	
;capture.c: 136: GO_nDONE = 1;
	bsf	(250/8),(250)&7
	line	137
;capture.c: 137: while(GO_nDONE)
	goto	l738
	
l739:	
	line	138
;capture.c: 138: continue;
	
l738:	
	line	137
	btfsc	(250/8),(250)&7
	goto	u5321
	goto	u5320
u5321:
	goto	l738
u5320:
	goto	l7067
	
l740:	
	line	139
	
l7067:	
;capture.c: 139: return( (float) ADRESH);
	movf	(30),w	;volatile
	fcall	___lbtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lbtoft)),w
	movwf	(?_read_a2d2)
	movf	(1+(?___lbtoft)),w
	movwf	(?_read_a2d2+1)
	movf	(2+(?___lbtoft)),w
	movwf	(?_read_a2d2+2)
	goto	l741
	
l7069:	
	line	140
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d2
	__end_of_read_a2d2:
;; =============== function _read_a2d2 ends ============

	signat	_read_a2d2,4219
	global	_read_a2d
psect	text1245,local,class=CODE,delta=2
global __ptext1245
__ptext1245:

;; *************** function _read_a2d *****************
;; Defined at:
;;		line 105 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;;		___lbtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1245
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	line	105
	global	__size_of_read_a2d
	__size_of_read_a2d	equ	__end_of_read_a2d-_read_a2d
	
_read_a2d:	
	opt	stack 4
; Regs used in _read_a2d: [wreg+status,2+status,0+pclath+cstack]
;read_a2d@channel stored from wreg
	movwf	(read_a2d@channel)
	line	106
	
l7047:	
;capture.c: 106: channel &=0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_a2d+0)+0
	movf	(??_read_a2d+0)+0,w
	andwf	(read_a2d@channel),f
	line	107
;capture.c: 107: ADCON0 = 0x41;
	movlw	(041h)
	movwf	(31)	;volatile
	line	111
;capture.c: 111: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	112
	
l7049:	
;capture.c: 112: DelayMs(10);
	movlw	(0Ah)
	fcall	_DelayMs
	line	113
	
l7051:	
;capture.c: 113: ADCON0 |=(channel<<3);
	movf	(read_a2d@channel),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_read_a2d+0)+0
	movlw	(03h)-1
u5295:
	clrc
	rlf	(??_read_a2d+0)+0,f
	addlw	-1
	skipz
	goto	u5295
	clrc
	rlf	(??_read_a2d+0)+0,w
	movwf	(??_read_a2d+1)+0
	movf	(??_read_a2d+1)+0,w
	iorwf	(31),f	;volatile
	line	114
	
l7053:	
;capture.c: 114: GO_nDONE = 1;
	bsf	(250/8),(250)&7
	line	115
;capture.c: 115: while(GO_nDONE)
	goto	l729
	
l730:	
	line	116
;capture.c: 116: continue;
	
l729:	
	line	115
	btfsc	(250/8),(250)&7
	goto	u5301
	goto	u5300
u5301:
	goto	l729
u5300:
	goto	l7055
	
l731:	
	line	117
	
l7055:	
;capture.c: 117: return( (float) ADRESH);
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
	goto	l732
	
l7057:	
	line	118
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_read_a2d
	__end_of_read_a2d:
;; =============== function _read_a2d ends ============

	signat	_read_a2d,4219
	global	_ldexp
psect	text1246,local,class=CODE,delta=2
global __ptext1246
__ptext1246:

;; *************** function _ldexp *****************
;; Defined at:
;;		line 278 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   44[BANK0 ] float 
;;  newexp          2   47[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] int 
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
psect	text1246
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	278
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
	opt	stack 2
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l6997:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l7003
u5230:
	line	280
	
l6999:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x0
	movwf	(?_ldexp+1)
	movlw	0x0
	movwf	(?_ldexp+2)
	goto	l3266
	
l7001:	
	goto	l3266
	
l3265:	
	line	282
	
l7003:	
	movf	0+(ldexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0)+0
	clrf	(??_ldexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u5245:
	clrc
	rlf	(??_ldexp+0)+0,f
	rlf	(??_ldexp+0)+1,f
	decfsz	btemp+1,f
	goto	u5245
	movf	0+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	movf	1+(??_ldexp+0)+0,w
	addwf	(ldexp@newexp+1),f
	line	283
	
l7005:	
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
	
l7007:	
	btfss	(ldexp@newexp+1),7
	goto	u5251
	goto	u5250
u5251:
	goto	l7015
u5250:
	line	288
	
l7009:	
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
	
l7011:	
	goto	l3266
	line	290
	
l7013:	
	goto	l7043
	line	291
	
l3267:	
	
l7015:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0100h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5265
	movlw	low(0100h)
	subwf	(ldexp@newexp),w
u5265:

	skipc
	goto	u5261
	goto	u5260
u5261:
	goto	l7039
u5260:
	line	292
	
l7017:	
	movlw	low(022h)
	movwf	(_errno)
	movlw	high(022h)
	movwf	((_errno))+1
	line	293
	
l7019:	
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
	goto	u5271
	goto	u5270
u5271:
	goto	l7035
u5270:
	goto	l7025
	line	294
	
l7021:	
	goto	l7025
	
l7023:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3590)
	movlw	0x80
	movwf	(_ldexp$3590+1)
	movlw	0x7f
	movwf	(_ldexp$3590+2)
	goto	l7027
	
l3272:	
	
l7025:	
	movlw	0xff
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ldexp$3590)
	movlw	0x7f
	movwf	(_ldexp$3590+1)
	movlw	0x7f
	movwf	(_ldexp$3590+2)
	goto	l7027
	
l3274:	
	
l7027:	
	movf	(_ldexp$3590),w
	movwf	(?___ftneg)
	movf	(_ldexp$3590+1),w
	movwf	(?___ftneg+1)
	movf	(_ldexp$3590+2),w
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
	
l7029:	
	goto	l3266
	
l7031:	
	goto	l7043
	line	295
	
l3270:	
	line	296
	goto	l7035
	
l7033:	
	movlw	0x0
	movwf	(?_ldexp)
	movlw	0x80
	movwf	(?_ldexp+1)
	movlw	0x7f
	movwf	(?_ldexp+2)
	goto	l3266
	
l3277:	
	
l7035:	
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
	
l7037:	
	goto	l3266
	
l3275:	
	line	297
	goto	l7043
	line	298
	
l3269:	
	line	300
	
l7039:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	movwf	(??_ldexp+0)+0+1
	movf	(ldexp@newexp),w
	movwf	(??_ldexp+0)+0
	movlw	01h
	movwf	btemp+1
u5285:
	rlf	(??_ldexp+0)+1,w
	rrf	(??_ldexp+0)+1,f
	rrf	(??_ldexp+0)+0,f
	decfsz	btemp+1,f
	goto	u5285
	movf	0+(ldexp@value)+02h,w
	xorwf	0+(??_ldexp+0)+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)+0,w
	movwf	0+(ldexp@value)+02h
	line	301
	
l7041:	
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
	goto	l7043
	line	305
	
l3280:	
	goto	l7043
	
l3268:	
	line	306
	
l7043:	
	goto	l3266
	
l7045:	
	line	307
	
l3266:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
;; =============== function _ldexp ends ============

	signat	_ldexp,8315
	global	___lltoft
psect	text1247,local,class=CODE,delta=2
global __ptext1247
__ptext1247:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text1247
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 3
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l6987:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l6991
	
l3113:	
	line	42
	
l6989:	
	movlw	01h
u5215:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u5215

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l6991
	line	44
	
l3112:	
	line	41
	
l6991:	
	movlw	high highword(-16777216)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u5221
	goto	u5220
u5221:
	goto	l6989
u5220:
	goto	l6993
	
l3114:	
	line	45
	
l6993:	
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
	
l6995:	
	line	46
	
l3115:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___altoft
psect	text1248,local,class=CODE,delta=2
global __ptext1248
__ptext1248:

;; *************** function ___altoft *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   14[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[BANK0 ] unsigned char 
;;  exp             1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   14[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text1248
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\altoft.c"
	line	43
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
	opt	stack 1
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
l6969:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
l6971:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
l6973:	
	btfss	(___altoft@c+3),7
	goto	u5181
	goto	u5180
u5181:
	goto	l6981
u5180:
	line	48
	
l6975:	
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
	
l6977:	
	clrf	(___altoft@sign)
	bsf	status,0
	rlf	(___altoft@sign),f
	goto	l6981
	line	50
	
l3103:	
	line	52
	goto	l6981
	
l3105:	
	line	53
	
l6979:	
	movlw	01h
u5195:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u5195

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	l6981
	line	55
	
l3104:	
	line	52
	
l6981:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u5201
	goto	u5200
u5201:
	goto	l6979
u5200:
	goto	l6983
	
l3106:	
	line	56
	
l6983:	
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
	
l6985:	
	line	57
	
l3107:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
;; =============== function ___altoft ends ============

	signat	___altoft,4219
	global	___awtoft
psect	text1249,local,class=CODE,delta=2
global __ptext1249
__ptext1249:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   11[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[BANK0 ] float 
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
;;		___ftpack
;; This function is called by:
;;		_ftoa
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text1249
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l6961:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u5171
	goto	u5170
u5171:
	goto	l6965
u5170:
	line	38
	
l6963:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l6965
	line	40
	
l3011:	
	line	41
	
l6965:	
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
	
l6967:	
	line	42
	
l3012:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___lbtoft
psect	text1250,local,class=CODE,delta=2
global __ptext1250
__ptext1250:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
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
;;      Temps:          0       4       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_a2d
;;		_read_a2d2
;; This function uses a non-reentrant model
;;
psect	text1250
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
	
l6957:	
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
	
l6959:	
	line	30
	
l3000:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text1251,local,class=CODE,delta=2
global __ptext1251
__ptext1251:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   15[BANK0 ] float 
;;  f2              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   26[BANK0 ] unsigned um
;;  sign            1   30[BANK0 ] unsigned char 
;;  cntr            1   29[BANK0 ] unsigned char 
;;  exp             1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   15[BANK0 ] float 
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
;;		_ftoa
;;		_pow
;;		_exp
;;		_log
;;		_eval_poly
;;		_log10
;; This function uses a non-reentrant model
;;
psect	text1251
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6907:	
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
	goto	u5031
	goto	u5030
u5031:
	goto	l6913
u5030:
	line	57
	
l6909:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2974
	
l6911:	
	goto	l2974
	
l2973:	
	line	58
	
l6913:	
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
	goto	u5041
	goto	u5040
u5041:
	goto	l6919
u5040:
	line	59
	
l6915:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l2974
	
l6917:	
	goto	l2974
	
l2975:	
	line	60
	
l6919:	
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
u5055:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5050:
	addlw	-1
	skipz
	goto	u5055
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
u5065:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5060:
	addlw	-1
	skipz
	goto	u5065
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
	
l6921:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l6923:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l6925:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l6927:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l6929:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6931
	line	70
	
l2976:	
	line	71
	
l6931:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l6935
u5070:
	line	72
	
l6933:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5081
	addwf	(___ftmul@f3_as_product+1),f
u5081:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5082
	addwf	(___ftmul@f3_as_product+2),f
u5082:

	goto	l6935
	
l2977:	
	line	73
	
l6935:	
	movlw	01h
u5095:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5095

	line	74
	
l6937:	
	movlw	01h
u5105:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u5105
	line	75
	
l6939:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l6931
u5110:
	goto	l6941
	
l2978:	
	line	76
	
l6941:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l6943
	line	77
	
l2979:	
	line	78
	
l6943:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5121
	goto	u5120
u5121:
	goto	l6947
u5120:
	line	79
	
l6945:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5131
	addwf	(___ftmul@f3_as_product+1),f
u5131:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5132
	addwf	(___ftmul@f3_as_product+2),f
u5132:

	goto	l6947
	
l2980:	
	line	80
	
l6947:	
	movlw	01h
u5145:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5145

	line	81
	
l6949:	
	movlw	01h
u5155:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u5155

	line	82
	
l6951:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l6943
u5160:
	goto	l6953
	
l2981:	
	line	83
	
l6953:	
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
	
l6955:	
	line	84
	
l2974:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text1252,local,class=CODE,delta=2
global __ptext1252
__ptext1252:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[BANK0 ] float 
;;  f1              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   19[BANK0 ] float 
;;  sign            1   23[BANK0 ] unsigned char 
;;  exp             1   22[BANK0 ] unsigned char 
;;  cntr            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
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
psect	text1252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 2
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l6865:	
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
	goto	u4951
	goto	u4950
u4951:
	goto	l6871
u4950:
	line	56
	
l6867:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2964
	
l6869:	
	goto	l2964
	
l2963:	
	line	57
	
l6871:	
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
	goto	u4961
	goto	u4960
u4961:
	goto	l6877
u4960:
	line	58
	
l6873:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l2964
	
l6875:	
	goto	l2964
	
l2965:	
	line	59
	
l6877:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l6879:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l6881:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4975:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4970:
	addlw	-1
	skipz
	goto	u4975
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l6883:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4985:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4980:
	addlw	-1
	skipz
	goto	u4985
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l6885:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l6887:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l6889:	
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
	goto	l6891
	line	69
	
l2966:	
	line	70
	
l6891:	
	movlw	01h
u4995:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4995
	line	71
	
l6893:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u5005
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u5005
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u5005:
	skipc
	goto	u5001
	goto	u5000
u5001:
	goto	l6899
u5000:
	line	72
	
l6895:	
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
	
l6897:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l6899
	line	74
	
l2967:	
	line	75
	
l6899:	
	movlw	01h
u5015:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u5015
	line	76
	
l6901:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l6891
u5020:
	goto	l6903
	
l2968:	
	line	77
	
l6903:	
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
	
l6905:	
	line	78
	
l2964:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text1253,local,class=CODE,delta=2
global __ptext1253
__ptext1253:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   31[BANK0 ] float 
;;  f2              3   34[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  exp2            1   42[BANK0 ] unsigned char 
;;  sign            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[BANK0 ] float 
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
psect	text1253
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6795:	
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
	
l6797:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u4710
	goto	l6803
u4710:
	
l6799:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u4721
	goto	u4720
u4721:
	goto	l6807
u4720:
	
l6801:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l6807
u4730:
	goto	l6803
	
l2921:	
	line	93
	
l6803:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2922
	
l6805:	
	goto	l2922
	
l2919:	
	line	94
	
l6807:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u4740
	goto	l2925
u4740:
	
l6809:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4751
	goto	u4750
u4751:
	goto	l6813
u4750:
	
l6811:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u4761
	goto	u4760
u4761:
	goto	l6813
u4760:
	
l2925:	
	line	95
	goto	l2922
	
l2923:	
	line	96
	
l6813:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l6815:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l2926
u4770:
	line	98
	
l6817:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2926:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4781
	goto	u4780
u4781:
	goto	l2927
u4780:
	line	100
	
l6819:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2927:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6821:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6823:	
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
	goto	u4791
	goto	u4790
u4791:
	goto	l6835
u4790:
	goto	l6825
	line	109
	
l2929:	
	line	110
	
l6825:	
	movlw	01h
u4805:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u4805
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l6827:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4811
	goto	u4810
u4811:
	goto	l6833
u4810:
	
l6829:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4821
	goto	u4820
u4821:
	goto	l6825
u4820:
	goto	l6833
	
l2931:	
	goto	l6833
	
l2932:	
	line	113
	goto	l6833
	
l2934:	
	line	114
	
l6831:	
	movlw	01h
u4835:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u4835

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l6833
	line	116
	
l2933:	
	line	113
	
l6833:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4841
	goto	u4840
u4841:
	goto	l6831
u4840:
	goto	l2936
	
l2935:	
	line	117
	goto	l2936
	
l2928:	
	
l6835:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u4851
	goto	u4850
u4851:
	goto	l2936
u4850:
	goto	l6837
	line	120
	
l2938:	
	line	121
	
l6837:	
	movlw	01h
u4865:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u4865
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l6839:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u4871
	goto	u4870
u4871:
	goto	l6845
u4870:
	
l6841:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l6837
u4880:
	goto	l6845
	
l2940:	
	goto	l6845
	
l2941:	
	line	124
	goto	l6845
	
l2943:	
	line	125
	
l6843:	
	movlw	01h
u4895:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u4895

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l6845
	line	127
	
l2942:	
	line	124
	
l6845:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u4901
	goto	u4900
u4901:
	goto	l6843
u4900:
	goto	l2936
	
l2944:	
	goto	l2936
	line	128
	
l2937:	
	line	129
	
l2936:	
	btfss	(___ftadd@sign),(7)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l6849
u4910:
	line	131
	
l6847:	
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
	goto	l6849
	line	133
	
l2945:	
	line	134
	
l6849:	
	btfss	(___ftadd@sign),(6)&7
	goto	u4921
	goto	u4920
u4921:
	goto	l6853
u4920:
	line	136
	
l6851:	
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
	goto	l6853
	line	138
	
l2946:	
	line	139
	
l6853:	
	clrf	(___ftadd@sign)
	line	140
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u4931
	addwf	(___ftadd@f2+1),f
u4931:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u4932
	addwf	(___ftadd@f2+2),f
u4932:

	line	141
	
l6855:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u4941
	goto	u4940
u4941:
	goto	l6861
u4940:
	line	142
	
l6857:	
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
	
l6859:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l6861
	line	145
	
l2947:	
	line	146
	
l6861:	
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
	
l6863:	
	line	148
	
l2922:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_intToStr
psect	text1254,local,class=CODE,delta=2
global __ptext1254
__ptext1254:

;; *************** function _intToStr *****************
;; Defined at:
;;		line 24 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\string.c"
;; Parameters:    Size  Location     Type
;;  x               2   14[BANK0 ] unsigned int 
;;  str             1   16[BANK0 ] PTR unsigned char 
;;		 -> str(10), 
;;  d               2   17[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2   21[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
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
psect	text1254
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\string.c"
	line	24
	global	__size_of_intToStr
	__size_of_intToStr	equ	__end_of_intToStr-_intToStr
	
_intToStr:	
	opt	stack 4
; Regs used in _intToStr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l6771:	
;string.c: 25: unsigned int i = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(intToStr@i)
	clrf	(intToStr@i+1)
	line	26
;string.c: 26: while (x)
	goto	l6779
	
l2166:	
	line	28
	
l6773:	
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
	
l6775:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	line	29
	
l6777:	
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

	goto	l6779
	line	30
	
l2165:	
	line	26
	
l6779:	
	movf	((intToStr@x+1)),w
	iorwf	((intToStr@x)),w
	skipz
	goto	u4691
	goto	u4690
u4691:
	goto	l6773
u4690:
	goto	l6785
	
l2167:	
	line	34
;string.c: 30: }
;string.c: 34: while (i < d)
	goto	l6785
	
l2169:	
	line	35
	
l6781:	
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
	
l6783:	
	movlw	low(01h)
	addwf	(intToStr@i),f
	skipnc
	incf	(intToStr@i+1),f
	movlw	high(01h)
	addwf	(intToStr@i+1),f
	goto	l6785
	
l2168:	
	line	34
	
l6785:	
	movf	(intToStr@d+1),w
	subwf	(intToStr@i+1),w
	skipz
	goto	u4705
	movf	(intToStr@d),w
	subwf	(intToStr@i),w
u4705:
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l6781
u4700:
	goto	l6787
	
l2170:	
	line	37
	
l6787:	
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
	
l6789:	
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
	
l6791:	
;string.c: 39: return i;
	movf	(intToStr@i+1),w
	clrf	(?_intToStr+1)
	addwf	(?_intToStr+1)
	movf	(intToStr@i),w
	clrf	(?_intToStr)
	addwf	(?_intToStr)

	goto	l2171
	
l6793:	
	line	40
	
l2171:	
	return
	opt stack 0
GLOBAL	__end_of_intToStr
	__end_of_intToStr:
;; =============== function _intToStr ends ============

	signat	_intToStr,12410
	global	_lcd_puts
psect	text1255,local,class=CODE,delta=2
global __ptext1255
__ptext1255:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               2    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(12), STR_1(15), str(10), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1255
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 5
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	38
	
l6763:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	l6769
	
l1452:	
	line	40
	
l6765:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l6767:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcd_puts@s),f
	skipnc
	incf	(lcd_puts@s+1),f
	movlw	high(01h)
	addwf	(lcd_puts@s+1),f
	goto	l6769
	
l1451:	
	line	39
	
l6769:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4681
	goto	u4680
u4681:
	goto	l6765
u4680:
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
	global	_lcd_goto
psect	text1256,local,class=CODE,delta=2
global __ptext1256
__ptext1256:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 52 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
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
psect	text1256
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
	line	52
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	53
	
l6759:	
;lcd.c: 53: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	54
	
l6761:	
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
	global	_lcd_clear
psect	text1257,local,class=CODE,delta=2
global __ptext1257
__ptext1257:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
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
psect	text1257
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l6755:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l6757:	
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
psect	text1258,local,class=CODE,delta=2
global __ptext1258
__ptext1258:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  _dcnt           1    4[BANK0 ] unsigned char 
;;  _dcnt           1    3[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       2       0       0       0
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
psect	text1258
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l6723:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l6725:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l6727:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l6729:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6731:	
	bcf	(73/8),(73)&7
	line	62
	
l6733:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l6735:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l6737:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l6739
	
l1467:	
	goto	l6739
	
l1466:	
	
l6739:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l6739
u4660:
	
l1468:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l6741:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l6743:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l6745:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6747:	
	bcf	(73/8),(73)&7
	line	69
	
l6749:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2131)
	goto	l6751
	
l1470:	
	goto	l6751
	
l1469:	
	
l6751:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2131),f
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l6751
u4670:
	goto	l6753
	
l1471:	
	line	70
	
l6753:	
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
psect	text1259,local,class=CODE,delta=2
global __ptext1259
__ptext1259:

;; *************** function _frexp *****************
;; Defined at:
;;		line 255 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[BANK0 ] unsigned char 
;;  eptr            1    3[BANK0 ] PTR int 
;;		 -> log@exp(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
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
psect	text1259
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\frexp.c"
	line	255
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
	opt	stack 2
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l6695:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u4641
	goto	u4640
u4641:
	goto	l6703
u4640:
	line	257
	
l6697:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	258
	
l6699:	
	movlw	0x0
	movwf	(?_frexp)
	movlw	0x0
	movwf	(?_frexp+1)
	movlw	0x0
	movwf	(?_frexp+2)
	goto	l3262
	
l6701:	
	goto	l3262
	line	259
	
l3261:	
	line	261
	
l6703:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movlw	01h
	movwf	btemp+1
u4655:
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	decfsz	btemp+1,f
	goto	u4655
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	
l6705:	
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
	
l6707:	
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
	
l6709:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
l6711:	
	bcf	0+(frexp@value)+01h,7
	line	273
	
l6713:	
	goto	l3262
	
l6715:	
	line	274
	
l3262:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
;; =============== function _frexp ends ============

	signat	_frexp,8315
	global	___ftge
psect	text1260,local,class=CODE,delta=2
global __ptext1260
__ptext1260:

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
psect	text1260
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l6657:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u4581
	goto	u4580
u4581:
	goto	l6661
u4580:
	line	7
	
l6659:	
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
	goto	u4591
	goto	u4592
u4591:
	addwf	(??___ftge+0)+1,f
	
u4592:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4593
	goto	u4594
u4593:
	addwf	(??___ftge+0)+2,f
	
u4594:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l6661
	
l3042:	
	line	8
	
l6661:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u4601
	goto	u4600
u4601:
	goto	l6665
u4600:
	line	9
	
l6663:	
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
	goto	u4611
	goto	u4612
u4611:
	addwf	(??___ftge+0)+1,f
	
u4612:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u4613
	goto	u4614
u4613:
	addwf	(??___ftge+0)+2,f
	
u4614:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l6665
	
l3043:	
	line	10
	
l6665:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l6667:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l6669:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u4625
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u4625
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u4625:
	skipnc
	goto	u4621
	goto	u4620
u4621:
	goto	l6673
u4620:
	
l6671:	
	clrc
	
	goto	l3044
	
l6471:	
	
l6673:	
	setc
	
	goto	l3044
	
l6473:	
	goto	l3044
	
l6675:	
	line	13
	
l3044:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text1261,local,class=CODE,delta=2
global __ptext1261
__ptext1261:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
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
psect	text1261
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
l5699:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3171
	goto	u3170
u3171:
	goto	l5703
u3170:
	line	18
	
l5701:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l5703
	
l3038:	
	line	19
	
l5703:	
	goto	l3039
	
l5705:	
	line	20
	
l3039:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___fttol
psect	text1262,local,class=CODE,delta=2
global __ptext1262
__ptext1262:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[BANK0 ] unsigned long 
;;  exp1            1   13[BANK0 ] unsigned char 
;;  sign1           1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
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
psect	text1262
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l6605:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u4471
	goto	u4470
u4471:
	goto	l6611
u4470:
	line	50
	
l6607:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2985
	
l6609:	
	goto	l2985
	
l2984:	
	line	51
	
l6611:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u4485:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u4480:
	addlw	-1
	skipz
	goto	u4485
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l6613:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l6615:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l6617:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l6619:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l6621:	
	btfss	(___fttol@exp1),7
	goto	u4491
	goto	u4490
u4491:
	goto	l6631
u4490:
	line	57
	
l6623:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4501
	goto	u4500
u4501:
	goto	l6629
u4500:
	line	58
	
l6625:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2985
	
l6627:	
	goto	l2985
	
l2987:	
	goto	l6629
	line	59
	
l2988:	
	line	60
	
l6629:	
	movlw	01h
u4515:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u4515

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l6629
u4520:
	goto	l6641
	
l2989:	
	line	62
	goto	l6641
	
l2986:	
	line	63
	
l6631:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u4531
	goto	u4530
u4531:
	goto	l6639
u4530:
	line	64
	
l6633:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l2985
	
l6635:	
	goto	l2985
	
l2991:	
	line	65
	goto	l6639
	
l2993:	
	line	66
	
l6637:	
	movlw	01h
	movwf	(??___fttol+0)+0
u4545:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u4545
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l6639
	line	68
	
l2992:	
	line	65
	
l6639:	
	movf	(___fttol@exp1),f
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l6637
u4550:
	goto	l6641
	
l2994:	
	goto	l6641
	line	69
	
l2990:	
	line	70
	
l6641:	
	movf	(___fttol@sign1),w
	skipz
	goto	u4560
	goto	l6645
u4560:
	line	71
	
l6643:	
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
	goto	l6645
	
l2995:	
	line	72
	
l6645:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l2985
	
l6647:	
	line	73
	
l2985:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text1263,local,class=CODE,delta=2
global __ptext1263
__ptext1263:

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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
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
psect	text1263
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l6575:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4360
	goto	l6579
u4360:
	
l6577:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4371
	goto	u4370
u4371:
	goto	l6585
u4370:
	goto	l6579
	
l3285:	
	line	65
	
l6579:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3286
	
l6581:	
	goto	l3286
	
l3283:	
	line	66
	goto	l6585
	
l3288:	
	line	67
	
l6583:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4385:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4385

	goto	l6585
	line	69
	
l3287:	
	line	66
	
l6585:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l6583
u4390:
	goto	l3290
	
l3289:	
	line	70
	goto	l3290
	
l3291:	
	line	71
	
l6587:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l6589:	
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
	
l6591:	
	movlw	01h
u4405:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4405

	line	74
	
l3290:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l6587
u4410:
	goto	l6595
	
l3292:	
	line	75
	goto	l6595
	
l3294:	
	line	76
	
l6593:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4425:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u4425
	goto	l6595
	line	78
	
l3293:	
	line	75
	
l6595:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l6593
u4430:
	
l3295:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l3296
u4440:
	line	80
	
l6597:	
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
	
l6599:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u4455:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u4450:
	addlw	-1
	skipz
	goto	u4455
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l6601:	
	movf	(___ftpack@sign),w
	skipz
	goto	u4460
	goto	l3297
u4460:
	line	84
	
l6603:	
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
psect	text1264,local,class=CODE,delta=2
global __ptext1264
__ptext1264:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text1264
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l6553:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u4301
	goto	u4300
u4301:
	goto	l6571
u4300:
	line	9
	
l6555:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l6561
	
l2893:	
	line	11
	
l6557:	
	movlw	01h
	
u4315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4315
	line	12
	
l6559:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l6561
	line	13
	
l2892:	
	line	10
	
l6561:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l6557
u4320:
	goto	l6563
	
l2894:	
	goto	l6563
	line	14
	
l2895:	
	line	15
	
l6563:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u4335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u4335:
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l6567
u4330:
	line	16
	
l6565:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l6567
	
l2896:	
	line	17
	
l6567:	
	movlw	01h
	
u4345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u4345
	line	18
	
l6569:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l6563
u4350:
	goto	l6571
	
l2897:	
	goto	l6571
	line	19
	
l2891:	
	line	20
	
l6571:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l2898
	
l6573:	
	line	21
	
l2898:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1265,local,class=CODE,delta=2
global __ptext1265
__ptext1265:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK0 ] unsigned int 
;;  counter         1    4[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       7       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_intToStr
;; This function uses a non-reentrant model
;;
psect	text1265
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l6527:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l6529:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u4231
	goto	u4230
u4231:
	goto	l6549
u4230:
	line	11
	
l6531:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l6537
	
l2883:	
	line	13
	
l6533:	
	movlw	01h
	
u4245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u4245
	line	14
	
l6535:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l6537
	line	15
	
l2882:	
	line	12
	
l6537:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l6533
u4250:
	goto	l6539
	
l2884:	
	goto	l6539
	line	16
	
l2885:	
	line	17
	
l6539:	
	movlw	01h
	
u4265:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u4265
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u4275
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u4275:
	skipc
	goto	u4271
	goto	u4270
u4271:
	goto	l6545
u4270:
	line	19
	
l6541:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l6543:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l6545
	line	21
	
l2886:	
	line	22
	
l6545:	
	movlw	01h
	
u4285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u4285
	line	23
	
l6547:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l6539
u4290:
	goto	l6549
	
l2887:	
	goto	l6549
	line	24
	
l2881:	
	line	25
	
l6549:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l2888
	
l6551:	
	line	26
	
l2888:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text1266,local,class=CODE,delta=2
global __ptext1266
__ptext1266:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    1[BANK0 ] unsigned char 
;;  product         1    0[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text1266
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 2
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	4
	
l6513:	
	clrf	(___bmul@product)
	line	6
	
l2869:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l6517
u4210:
	line	8
	
l6515:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l6517
	
l2870:	
	line	9
	
l6517:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l6519:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l6521:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u4221
	goto	u4220
u4221:
	goto	l2869
u4220:
	goto	l6523
	
l2871:	
	line	12
	
l6523:	
	movf	(___bmul@product),w
	goto	l2872
	
l6525:	
	line	13
	
l2872:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_reverse
psect	text1267,local,class=CODE,delta=2
global __ptext1267
__ptext1267:

;; *************** function _reverse *****************
;; Defined at:
;;		line 9 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\string.c"
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
psect	text1267
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\string.c"
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
	
l6501:	
;string.c: 10: int i=0, j=len-1, temp;
	clrf	(reverse@i)
	clrf	(reverse@i+1)
	
l6503:	
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
	goto	l6511
	
l2160:	
	line	13
	
l6505:	
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
	
l6507:	
;string.c: 16: i++; j--;
	movlw	low(01h)
	addwf	(reverse@i),f
	skipnc
	incf	(reverse@i+1),f
	movlw	high(01h)
	addwf	(reverse@i+1),f
	
l6509:	
	movlw	low(-1)
	addwf	(reverse@j),f
	skipnc
	incf	(reverse@j+1),f
	movlw	high(-1)
	addwf	(reverse@j+1),f
	goto	l6511
	line	17
	
l2159:	
	line	11
	
l6511:	
	movf	(reverse@i+1),w
	xorlw	80h
	movwf	(??_reverse+0)+0
	movf	(reverse@j+1),w
	xorlw	80h
	subwf	(??_reverse+0)+0,w
	skipz
	goto	u4205
	movf	(reverse@j),w
	subwf	(reverse@i),w
u4205:

	skipc
	goto	u4201
	goto	u4200
u4201:
	goto	l6505
u4200:
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
psect	text1268,local,class=CODE,delta=2
global __ptext1268
__ptext1268:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
;;  _dcnt           1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       2       0       0       0
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
psect	text1268
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\lcd.c"
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
	
l6487:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l6489:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6491:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u4185:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u4185
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l6493:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6495:	
	bcf	(73/8),(73)&7
	line	28
	
l6497:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l6499
	
l1443:	
	goto	l6499
	
l1442:	
	
l6499:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l6499
u4190:
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
	global	_init_a2d
psect	text1269,local,class=CODE,delta=2
global __ptext1269
__ptext1269:

;; *************** function _init_a2d *****************
;; Defined at:
;;		line 98 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1269
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	line	98
	global	__size_of_init_a2d
	__size_of_init_a2d	equ	__end_of_init_a2d-_init_a2d
	
_init_a2d:	
	opt	stack 6
; Regs used in _init_a2d: [wreg]
	line	99
	
l5517:	
;capture.c: 99: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	100
;capture.c: 100: ADCON1 = 0x0E;
	movlw	(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	101
	
l5519:	
;capture.c: 101: ADON=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	102
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_init_a2d
	__end_of_init_a2d:
;; =============== function _init_a2d ends ============

	signat	_init_a2d,88
	global	_DelayMs
psect	text1270,local,class=CODE,delta=2
global __ptext1270
__ptext1270:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    0[BANK0 ] unsigned char 
;;  _dcnt           1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_read_a2d
;;		_read_a2d2
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text1270
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\delay.c"
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
	
l748:	
	line	21
	
l6479:	
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
	goto	l6481
	
l751:	
	goto	l6481
	
l750:	
	
l6481:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l6481
u4150:
	goto	l6483
	
l752:	
	line	24
	
l6483:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l749
u4160:
	goto	l6485
	
l753:	
	line	25
	
l6485:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l748
u4170:
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
	global	_IntVector
psect	text1271,local,class=CODE,delta=2
global __ptext1271
__ptext1271:

;; *************** function _IntVector *****************
;; Defined at:
;;		line 142 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
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
psect	text1271
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\todo 2\capture.c"
	line	142
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
psect	text1271
	line	143
	
i1l5521:	
;capture.c: 143: if (T0IE && T0IF) {
	btfss	(93/8),(93)&7
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l745
u275_20:
	
i1l5523:	
	btfss	(90/8),(90)&7
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l745
u276_20:
	line	144
	
i1l5525:	
;capture.c: 144: T0IF = 0;
	bcf	(90/8),(90)&7
	line	145
	
i1l5527:	
;capture.c: 145: TMR0 =103;
	movlw	(067h)
	movwf	(1)	;volatile
	line	148
;capture.c: 148: d1Counter++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_d1Counter)^080h,f
	skipnc
	incf	(_d1Counter+1)^080h,f
	movlw	high(01h)
	addwf	(_d1Counter+1)^080h,f
	line	149
;capture.c: 149: d2Counter++;
	movlw	low(01h)
	addwf	(_d2Counter),f
	skipnc
	incf	(_d2Counter+1),f
	movlw	high(01h)
	addwf	(_d2Counter+1),f
	goto	i1l745
	line	150
	
i1l744:	
	line	151
	
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
psect	text1272,local,class=CODE,delta=2
global __ptext1272
__ptext1272:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
