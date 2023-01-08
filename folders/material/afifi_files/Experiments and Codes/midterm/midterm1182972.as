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
# 249 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	psect config,class=CONFIG,delta=2 ;#
# 249 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_initialise_set
	FNCALL	_initialise_set,_lcd_init
	FNCALL	_initialise_set,_lcd_clear
	FNCALL	_initialise_set,_DelaySec
	FNCALL	_DelaySec,_DelayMs
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	FNCALL	_IntVector,_lcd_goto
	FNCALL	_IntVector,_lcd_puts
	FNCALL	_IntVector,i1_lcd_clear
	FNCALL	i1_lcd_clear,i1_lcd_write
	FNCALL	i1_lcd_clear,i1_DelayMs
	FNCALL	_lcd_puts,i1_lcd_write
	FNCALL	_lcd_goto,i1_lcd_write
	FNCALL	intlevel1,_IntVector
	global	intlevel1
	FNROOT	intlevel1
	global	_id
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	line	275

;initializer for _id
	retlw	0FCh
	retlw	0Ch

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
	global	_adc_value1
	global	_adc_value2
	global	_adc_value3
	global	_adc_value4
	global	_adc_value5
	global	_col
	global	_d1Counter
	global	_d2Counter
	global	_errno
	global	_pressed_key
	global	_pulse_width_value
	global	_row
	global	_start_displaying
	global	_timer0_value
	global	_x1
	global	_x2
	global	_op
	global	_motor_state1
	global	_motor_state2
	global	_Chkey
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
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
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_T0IE
_T0IE	set	93
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
	global	_PR2
_PR2	set	146
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
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	37	;'%'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	37	;'%'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	54	;'6'
	retlw	48	;'0'
	retlw	37	;'%'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	54	;'6'
	retlw	48	;'0'
	retlw	37	;'%'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	67	;'C'
	retlw	87	;'W'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"midterm1182972.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_motor_state1:
       ds      2

_motor_state2:
       ds      2

_Chkey:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_adc_value1:
       ds      3

_adc_value2:
       ds      3

_adc_value3:
       ds      3

_adc_value4:
       ds      3

_adc_value5:
       ds      3

_col:
       ds      2

_d1Counter:
       ds      2

_d2Counter:
       ds      2

_errno:
       ds      2

_pressed_key:
       ds      2

_pulse_width_value:
       ds      2

_row:
       ds      2

_start_displaying:
       ds      2

_timer0_value:
       ds      2

_x1:
       ds      2

_x2:
       ds      2

_op:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	line	275
_id:
       ds      2

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
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+026h)
	fcall	clear_ram
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
	global	?_initialise_set
?_initialise_set:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IntVector
?_IntVector:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?i1_DelayMs
?i1_DelayMs:	; 0 bytes @ 0x0
	global	??i1_DelayMs
??i1_DelayMs:	; 0 bytes @ 0x0
	global	?i1_lcd_write
?i1_lcd_write:	; 0 bytes @ 0x0
	global	??i1_lcd_write
??i1_lcd_write:	; 0 bytes @ 0x0
	global	?i1_lcd_clear
?i1_lcd_clear:	; 0 bytes @ 0x0
	ds	1
	global	i1DelayMs@cnt
i1DelayMs@cnt:	; 1 bytes @ 0x1
	global	i1lcd_write@_dcnt
i1lcd_write@_dcnt:	; 1 bytes @ 0x1
	ds	1
	global	i1DelayMs@i
i1DelayMs@i:	; 1 bytes @ 0x2
	global	i1lcd_write@c
i1lcd_write@c:	; 1 bytes @ 0x2
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x3
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	global	i1DelayMs@_dcnt
i1DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??i1_lcd_clear
??i1_lcd_clear:	; 0 bytes @ 0x4
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x4
	ds	1
	global	??_IntVector
??_IntVector:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
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
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	?_DelaySec
?_DelaySec:	; 0 bytes @ 0x4
	global	DelaySec@sec
DelaySec@sec:	; 2 bytes @ 0x4
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	ds	1
	global	??_DelaySec
??_DelaySec:	; 0 bytes @ 0x6
	global	lcd_init@_dcnt_2146
lcd_init@_dcnt_2146:	; 1 bytes @ 0x6
	ds	1
	global	DelaySec@i
DelaySec@i:	; 2 bytes @ 0x7
	ds	2
	global	??_initialise_set
??_initialise_set:	; 0 bytes @ 0x9
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xA
;;Data sizes: Strings 102, constant 57, data 2, bss 43, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      14
;; BANK0           80     10      50
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_6(CODE[17]), STR_5(CODE[17]), STR_4(CODE[17]), STR_3(CODE[17]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _IntVector in COMMON
;;
;;   _IntVector->_lcd_puts
;;   i1_lcd_clear->i1_DelayMs
;;   _lcd_puts->i1_lcd_write
;;   _lcd_goto->i1_lcd_write
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_initialise_set
;;   _initialise_set->_DelaySec
;;   _DelaySec->_DelayMs
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;
;; Critical Paths under _IntVector in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     430
;;                     _initialise_set
;; ---------------------------------------------------------------------------------
;; (1) _initialise_set                                       1     1      0     430
;;                                              9 BANK0      1     1      0
;;                           _lcd_init
;;                          _lcd_clear
;;                           _DelaySec
;; ---------------------------------------------------------------------------------
;; (2) _DelaySec                                             5     3      2     114
;;                                              4 BANK0      5     3      2
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             3     3      0     181
;;                                              4 BANK0      3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (3) _lcd_write                                            3     3      0      67
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              4     4      0      68
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _IntVector                                            4     4      0     953
;;                                              5 COMMON     4     4      0
;;                           _lcd_goto
;;                           _lcd_puts
;;                        i1_lcd_clear
;; ---------------------------------------------------------------------------------
;; (5) i1_lcd_clear                                          0     0      0     444
;;                        i1_lcd_write
;;                          i1_DelayMs
;; ---------------------------------------------------------------------------------
;; (5) _lcd_puts                                             2     2      0     266
;;                                              3 COMMON     2     2      0
;;                        i1_lcd_write
;; ---------------------------------------------------------------------------------
;; (5) _lcd_goto                                             1     1      0     243
;;                                              3 COMMON     1     1      0
;;                        i1_lcd_write
;; ---------------------------------------------------------------------------------
;; (6) i1_lcd_write                                          3     3      0     221
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (6) i1_DelayMs                                            4     4      0     223
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialise_set
;;     _lcd_init
;;       _DelayMs
;;       _lcd_write
;;     _lcd_clear
;;       _lcd_write
;;       _DelayMs
;;     _DelaySec
;;       _DelayMs
;;
;; _IntVector (ROOT)
;;   _lcd_goto
;;     i1_lcd_write
;;   _lcd_puts
;;     i1_lcd_write
;;   i1_lcd_clear
;;     i1_lcd_write
;;     i1_DelayMs
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
;;DATA                 0      0      49      12        0.0%
;;ABS                  0      0      40       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       9       2        0.0%
;;BANK0               50      A      32       5       62.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 286 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_initialise_set
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	line	286
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	287
	
l6456:	
;1182972_main.c: 287: initialise_set();
	fcall	_initialise_set
	goto	l740
	line	289
;1182972_main.c: 289: while(1)
	
l739:	
	line	303
;1182972_main.c: 290: {
	
l740:	
	line	289
	goto	l740
	
l741:	
	line	305
	
l742:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initialise_set
psect	text375,local,class=CODE,delta=2
global __ptext375
__ptext375:

;; *************** function _initialise_set *****************
;; Defined at:
;;		line 333 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_init
;;		_lcd_clear
;;		_DelaySec
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text375
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	line	333
	global	__size_of_initialise_set
	__size_of_initialise_set	equ	__end_of_initialise_set-_initialise_set
	
_initialise_set:	
	opt	stack 2
; Regs used in _initialise_set: [wreg+status,2+status,0+pclath+cstack]
	line	335
	
l6406:	
;1182972_main.c: 335: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	336
	
l6408:	
;1182972_main.c: 336: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	337
;1182972_main.c: 337: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	338
	
l6410:	
;1182972_main.c: 338: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	339
	
l6412:	
;1182972_main.c: 339: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	340
;1182972_main.c: 340: ADCON1 = 0x82;
	movlw	(082h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	341
;1182972_main.c: 341: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	342
	
l6414:	
;1182972_main.c: 342: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	343
	
l6416:	
;1182972_main.c: 343: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	344
	
l6418:	
;1182972_main.c: 344: RE2 = 0;
	bcf	(74/8),(74)&7
	line	346
	
l6420:	
;1182972_main.c: 346: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	347
	
l6422:	
;1182972_main.c: 347: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	348
	
l6424:	
;1182972_main.c: 348: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	349
	
l6426:	
;1182972_main.c: 349: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	350
	
l6428:	
;1182972_main.c: 350: T1CKPS0 = 0; T1CKPS1 = 0;
	bcf	(132/8),(132)&7
	
l6430:	
	bcf	(133/8),(133)&7
	line	351
	
l6432:	
;1182972_main.c: 351: T1SYNC = 0;
	bcf	(130/8),(130)&7
	line	352
	
l6434:	
;1182972_main.c: 352: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	353
	
l6436:	
;1182972_main.c: 353: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	355
	
l6438:	
;1182972_main.c: 355: lcd_init();
	fcall	_lcd_init
	line	356
	
l6440:	
;1182972_main.c: 356: lcd_clear();
	fcall	_lcd_clear
	line	357
	
l6442:	
;1182972_main.c: 357: DelaySec(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	360
	
l6444:	
;1182972_main.c: 360: GIE=1;
	bsf	(95/8),(95)&7
	line	361
	
l6446:	
;1182972_main.c: 361: T0IE = 1;
	bsf	(93/8),(93)&7
	line	362
	
l6448:	
;1182972_main.c: 362: PEIE = 1;
	bsf	(94/8),(94)&7
	line	363
	
l6450:	
;1182972_main.c: 363: RBIE = 1;
	bsf	(91/8),(91)&7
	line	364
	
l6452:	
;1182972_main.c: 364: RBIF = 0;
	bcf	(88/8),(88)&7
	line	374
	
l6454:	
;1182972_main.c: 374: op = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_initialise_set+0)+0
	movf	(??_initialise_set+0)+0,w
	movwf	(_op)
	line	380
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_initialise_set
	__end_of_initialise_set:
;; =============== function _initialise_set ends ============

	signat	_initialise_set,88
	global	_DelaySec
psect	text376,local,class=CODE,delta=2
global __ptext376
__ptext376:

;; *************** function _DelaySec *****************
;; Defined at:
;;		line 383 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
;; Parameters:    Size  Location     Type
;;  sec             2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               2    7[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_initialise_set
;; This function uses a non-reentrant model
;;
psect	text376
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	line	383
	global	__size_of_DelaySec
	__size_of_DelaySec	equ	__end_of_DelaySec-_DelaySec
	
_DelaySec:	
	opt	stack 2
; Regs used in _DelaySec: [wreg+status,2+status,0+pclath+cstack]
	line	384
	
l6398:	
;1182972_main.c: 384: for(int i=0;i<sec;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(DelaySec@i)
	clrf	(DelaySec@i+1)
	goto	l6404
	line	385
	
l761:	
	
l6400:	
;1182972_main.c: 385: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	384
	
l6402:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(DelaySec@i),f
	skipnc
	incf	(DelaySec@i+1),f
	movlw	high(01h)
	addwf	(DelaySec@i+1),f
	goto	l6404
	
l760:	
	
l6404:	
	movf	(DelaySec@i+1),w
	xorlw	80h
	movwf	(??_DelaySec+0)+0
	movf	(DelaySec@sec+1),w
	xorlw	80h
	subwf	(??_DelaySec+0)+0,w
	skipz
	goto	u4275
	movf	(DelaySec@sec),w
	subwf	(DelaySec@i),w
u4275:

	skipc
	goto	u4271
	goto	u4270
u4271:
	goto	l6400
u4270:
	goto	l763
	
l762:	
	line	386
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_DelaySec
	__end_of_DelaySec:
;; =============== function _DelaySec ends ============

	signat	_DelaySec,4216
	global	_lcd_clear
psect	text377,local,class=CODE,delta=2
global __ptext377
__ptext377:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_initialise_set
;; This function uses a non-reentrant model
;;
psect	text377
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 2
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l6394:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l6396:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1491:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text378,local,class=CODE,delta=2
global __ptext378
__ptext378:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;;		_lcd_write
;; This function is called by:
;;		_initialise_set
;; This function uses a non-reentrant model
;;
psect	text378
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l6362:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l6364:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l6366:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l6368:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6370:	
	bcf	(73/8),(73)&7
	line	62
	
l6372:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l6374:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l6376:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l6378
	
l1510:	
	goto	l6378
	
l1509:	
	
l6378:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l6378
u4250:
	
l1511:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l6380:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l6382:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l6384:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6386:	
	bcf	(73/8),(73)&7
	line	69
	
l6388:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2146)
	goto	l6390
	
l1513:	
	goto	l6390
	
l1512:	
	
l6390:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2146),f
	btfss	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l6390
u4260:
	goto	l6392
	
l1514:	
	line	70
	
l6392:	
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
	
l1515:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_write
psect	text379,local,class=CODE,delta=2
global __ptext379
__ptext379:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text379
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 2
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_write@c)
	line	24
	
l5730:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l5732:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5734:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u3075:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u3075
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l5736:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5738:	
	bcf	(73/8),(73)&7
	line	28
	
l5740:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l5742
	
l1486:	
	goto	l5742
	
l1485:	
	
l5742:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l5742
u3080:
	goto	l1488
	
l1487:	
	line	29
	
l1488:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_DelayMs
psect	text380,local,class=CODE,delta=2
global __ptext380
__ptext380:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\delay.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelaySec
;;		_lcd_clear
;;		_lcd_init
;;		_read_a2d
;; This function uses a non-reentrant model
;;
psect	text380
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 2
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
l791:	
	line	21
	
l5600:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l792:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l5602
	
l794:	
	goto	l5602
	
l793:	
	
l5602:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l5602
u2900:
	goto	l5604
	
l795:	
	line	24
	
l5604:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l792
u2910:
	goto	l5606
	
l796:	
	line	25
	
l5606:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l791
u2920:
	goto	l798
	
l797:	
	line	27
	
l798:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_IntVector
psect	text381,local,class=CODE,delta=2
global __ptext381
__ptext381:

;; *************** function _IntVector *****************
;; Defined at:
;;		line 416 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_goto
;;		_lcd_puts
;;		i1_lcd_clear
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text381
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\1182972_main.c"
	line	416
	global	__size_of_IntVector
	__size_of_IntVector	equ	__end_of_IntVector-_IntVector
	
_IntVector:	
	opt	stack 2
; Regs used in _IntVector: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
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
psect	text381
	line	419
	
i1l5620:	
;1182972_main.c: 419: if(INTF == 1)
	btfss	(89/8),(89)&7
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l5632
u295_20:
	line	421
	
i1l5622:	
;1182972_main.c: 420: {
;1182972_main.c: 421: INTF = 0;
	bcf	(89/8),(89)&7
	line	422
	
i1l5624:	
;1182972_main.c: 422: INTCON = 0;
	clrf	(11)	;volatile
	line	425
	
i1l5626:	
;1182972_main.c: 425: INTCON = 1;
	movlw	(01h)
	movwf	(11)	;volatile
	line	426
	
i1l5628:	
;1182972_main.c: 426: GIE = 1;
	bsf	(95/8),(95)&7
	line	427
	
i1l5630:	
;1182972_main.c: 427: INTE = 1;
	bsf	(92/8),(92)&7
	goto	i1l5632
	line	429
	
i1l775:	
	line	431
	
i1l5632:	
;1182972_main.c: 429: }
;1182972_main.c: 431: if(RBIF == 1)
	btfss	(88/8),(88)&7
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l788
u296_20:
	line	433
	
i1l5634:	
;1182972_main.c: 432: {
;1182972_main.c: 433: RBIF = 0;
	bcf	(88/8),(88)&7
	line	435
	
i1l5636:	
;1182972_main.c: 435: PORTB = PORTB;
	movf	(6),w	;volatile
	movwf	(6)	;volatile
	line	437
	
i1l5638:	
;1182972_main.c: 437: if(RB4 == 0)
	btfsc	(52/8),(52)&7
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l5664
u297_20:
	line	441
	
i1l5640:	
;1182972_main.c: 438: {
;1182972_main.c: 441: if(motor_state1 == 0)
	movf	((_motor_state1+1)),w
	iorwf	((_motor_state1)),w
	skipz
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l5652
u298_20:
	line	443
	
i1l5642:	
;1182972_main.c: 442: {
;1182972_main.c: 443: motor_state1++;
	movlw	low(01h)
	addwf	(_motor_state1),f
	skipnc
	incf	(_motor_state1+1),f
	movlw	high(01h)
	addwf	(_motor_state1+1),f
	line	445
	
i1l5644:	
;1182972_main.c: 445: RC3 = 0;
	bcf	(59/8),(59)&7
	line	446
	
i1l5646:	
;1182972_main.c: 446: RC4 = 1;
	bsf	(60/8),(60)&7
	line	448
;1182972_main.c: 448: PR2 = 99;
	movlw	(063h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	449
;1182972_main.c: 449: T2CON = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	450
;1182972_main.c: 450: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	451
;1182972_main.c: 451: CCPR1L = 0b00011110;
	movlw	(01Eh)
	movwf	(21)	;volatile
	line	452
	
i1l5648:	
;1182972_main.c: 452: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	453
	
i1l5650:	
;1182972_main.c: 453: lcd_puts("Motor 1 30% CCW ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	455
;1182972_main.c: 455: }
	goto	i1l5664
	line	456
	
i1l778:	
	
i1l5652:	
;1182972_main.c: 456: else if(motor_state1 == 1)
	movlw	01h
	xorwf	(_motor_state1),w
	iorwf	(_motor_state1+1),w
	skipz
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l5664
u299_20:
	line	459
	
i1l5654:	
;1182972_main.c: 457: {
;1182972_main.c: 459: motor_state1++;
	movlw	low(01h)
	addwf	(_motor_state1),f
	skipnc
	incf	(_motor_state1+1),f
	movlw	high(01h)
	addwf	(_motor_state1+1),f
	line	460
	
i1l5656:	
;1182972_main.c: 460: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	line	461
	
i1l5658:	
;1182972_main.c: 461: RC4 = 1;
	bsf	(60/8),(60)&7
	line	463
;1182972_main.c: 463: PR2 = 99;
	movlw	(063h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	464
;1182972_main.c: 464: T2CON = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	465
;1182972_main.c: 465: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	466
;1182972_main.c: 466: CCPR1L = 0b00111100 ;
	movlw	(03Ch)
	movwf	(21)	;volatile
	line	467
	
i1l5660:	
;1182972_main.c: 467: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	468
	
i1l5662:	
;1182972_main.c: 468: lcd_puts("Motor 1 60% CCW ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_puts
	goto	i1l5664
	line	469
	
i1l780:	
	goto	i1l5664
	line	470
	
i1l779:	
	goto	i1l5664
	
i1l777:	
	line	472
	
i1l5664:	
;1182972_main.c: 469: }
;1182972_main.c: 470: }
;1182972_main.c: 472: if(RB5 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l5690
u300_20:
	line	475
	
i1l5666:	
;1182972_main.c: 473: {
;1182972_main.c: 475: if(motor_state2 == 0)
	movf	((_motor_state2+1)),w
	iorwf	((_motor_state2)),w
	skipz
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l5678
u301_20:
	line	477
	
i1l5668:	
;1182972_main.c: 476: {
;1182972_main.c: 477: motor_state2++;
	movlw	low(01h)
	addwf	(_motor_state2),f
	skipnc
	incf	(_motor_state2+1),f
	movlw	high(01h)
	addwf	(_motor_state2+1),f
	line	480
	
i1l5670:	
;1182972_main.c: 480: RC5 = 0;
	bcf	(61/8),(61)&7
	line	481
	
i1l5672:	
;1182972_main.c: 481: RC6 = 1;
	bsf	(62/8),(62)&7
	line	483
;1182972_main.c: 483: PR2 = 99;
	movlw	(063h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	484
;1182972_main.c: 484: T2CON = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	485
;1182972_main.c: 485: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	486
;1182972_main.c: 486: CCPR1L = 0b00011110;
	movlw	(01Eh)
	movwf	(21)	;volatile
	line	487
	
i1l5674:	
;1182972_main.c: 487: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	488
	
i1l5676:	
;1182972_main.c: 488: lcd_puts("Motor 2 30% CCW ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_lcd_puts
	line	490
;1182972_main.c: 490: }
	goto	i1l5690
	line	491
	
i1l782:	
	
i1l5678:	
;1182972_main.c: 491: else if(motor_state2 == 1)
	movlw	01h
	xorwf	(_motor_state2),w
	iorwf	(_motor_state2+1),w
	skipz
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l5690
u302_20:
	line	493
	
i1l5680:	
;1182972_main.c: 492: {
;1182972_main.c: 493: motor_state2++;
	movlw	low(01h)
	addwf	(_motor_state2),f
	skipnc
	incf	(_motor_state2+1),f
	movlw	high(01h)
	addwf	(_motor_state2+1),f
	line	495
	
i1l5682:	
;1182972_main.c: 495: RC5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	496
	
i1l5684:	
;1182972_main.c: 496: RC6 = 1;
	bsf	(62/8),(62)&7
	line	498
;1182972_main.c: 498: PR2 = 99;
	movlw	(063h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	499
;1182972_main.c: 499: T2CON = 0b00000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	500
;1182972_main.c: 500: CCP1CON = 0b00001100;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	501
;1182972_main.c: 501: CCPR1L = 0b00111100 ;
	movlw	(03Ch)
	movwf	(21)	;volatile
	line	502
	
i1l5686:	
;1182972_main.c: 502: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	503
	
i1l5688:	
;1182972_main.c: 503: lcd_puts("Motor 2 60% CCW ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_lcd_puts
	goto	i1l5690
	line	504
	
i1l784:	
	goto	i1l5690
	line	505
	
i1l783:	
	goto	i1l5690
	
i1l781:	
	line	507
	
i1l5690:	
;1182972_main.c: 504: }
;1182972_main.c: 505: }
;1182972_main.c: 507: if(RB6 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(54/8),(54)&7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l5706
u303_20:
	line	510
	
i1l5692:	
;1182972_main.c: 508: {
;1182972_main.c: 510: RC3 = 0;
	bcf	(59/8),(59)&7
	line	511
;1182972_main.c: 511: RC4 = 0;
	bcf	(60/8),(60)&7
	line	512
;1182972_main.c: 512: RC5 = 0;
	bcf	(61/8),(61)&7
	line	513
;1182972_main.c: 513: RC6 = 0;
	bcf	(62/8),(62)&7
	line	514
	
i1l5694:	
;1182972_main.c: 514: CCP1CON = 0b00000000;
	clrf	(23)	;volatile
	line	518
	
i1l5696:	
;1182972_main.c: 518: lcd_clear();
	fcall	i1_lcd_clear
	line	520
	
i1l5698:	
;1182972_main.c: 520: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	521
	
i1l5700:	
;1182972_main.c: 521: lcd_puts("Motor 1 stopped ");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_puts
	line	522
	
i1l5702:	
;1182972_main.c: 522: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	line	523
	
i1l5704:	
;1182972_main.c: 523: lcd_puts("Motor 2 stopped ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_lcd_puts
	goto	i1l5706
	line	525
	
i1l785:	
	line	526
	
i1l5706:	
;1182972_main.c: 525: }
;1182972_main.c: 526: if(motor_state1 > 1)
	movf	(_motor_state1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u304_25
	movlw	low(02h)
	subwf	(_motor_state1),w
u304_25:

	skipc
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l5710
u304_20:
	line	528
	
i1l5708:	
;1182972_main.c: 527: {
;1182972_main.c: 528: motor_state1 = 0;
	clrf	(_motor_state1)
	clrf	(_motor_state1+1)
	goto	i1l5710
	line	529
	
i1l786:	
	line	530
	
i1l5710:	
;1182972_main.c: 529: }
;1182972_main.c: 530: if(motor_state2 > 1)
	movf	(_motor_state2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u305_25
	movlw	low(02h)
	subwf	(_motor_state2),w
u305_25:

	skipc
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l5714
u305_20:
	line	532
	
i1l5712:	
;1182972_main.c: 531: {
;1182972_main.c: 532: motor_state2 = 0;
	clrf	(_motor_state2)
	clrf	(_motor_state2+1)
	goto	i1l5714
	line	533
	
i1l787:	
	line	534
	
i1l5714:	
;1182972_main.c: 533: }
;1182972_main.c: 534: GIE=1;
	bsf	(95/8),(95)&7
	line	536
	
i1l5716:	
;1182972_main.c: 536: RBIE = 1;
	bsf	(91/8),(91)&7
	goto	i1l788
	line	537
	
i1l776:	
	line	538
	
i1l788:	
	movf	(??_IntVector+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	global	i1_lcd_clear
psect	text382,local,class=CODE,delta=2
global __ptext382
__ptext382:

;; *************** function i1_lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
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
;;		i1_lcd_write
;;		i1_DelayMs
;; This function is called by:
;;		_IntVector
;; This function uses a non-reentrant model
;;
psect	text382
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	31
	global	__size_ofi1_lcd_clear
	__size_ofi1_lcd_clear	equ	__end_ofi1_lcd_clear-i1_lcd_clear
	
i1_lcd_clear:	
	opt	stack 2
; Regs used in i1_lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
i1l6358:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
i1l6360:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	i1_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	i1_DelayMs
	line	35
	
i1l1491:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_clear
	__end_ofi1_lcd_clear:
;; =============== function i1_lcd_clear ends ============

	signat	i1_lcd_clear,88
	global	_lcd_puts
psect	text383,local,class=CODE,delta=2
global __ptext383
__ptext383:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 37 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_6(17), STR_5(17), STR_4(17), STR_3(17), 
;;		 -> STR_2(17), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMMON] PTR const unsigned char 
;;		 -> STR_6(17), STR_5(17), STR_4(17), STR_3(17), 
;;		 -> STR_2(17), STR_1(17), 
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
;;		i1_lcd_write
;; This function is called by:
;;		_IntVector
;; This function uses a non-reentrant model
;;
psect	text383
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	37
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 2
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	38
	
i1l5722:	
;lcd.c: 38: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	39
;lcd.c: 39: while(*s)
	goto	i1l5728
	
i1l1495:	
	line	40
	
i1l5724:	
;lcd.c: 40: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	i1_lcd_write
	
i1l5726:	
	movlw	(01h)
	movwf	(??_lcd_puts+0)+0
	movf	(??_lcd_puts+0)+0,w
	addwf	(lcd_puts@s),f
	goto	i1l5728
	
i1l1494:	
	line	39
	
i1l5728:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l5724
u306_20:
	goto	i1l1497
	
i1l1496:	
	line	41
	
i1l1497:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_goto
psect	text384,local,class=CODE,delta=2
global __ptext384
__ptext384:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 52 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
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
;;		i1_lcd_write
;; This function is called by:
;;		_IntVector
;; This function uses a non-reentrant model
;;
psect	text384
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	52
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 2
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	53
	
i1l5718:	
;lcd.c: 53: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	54
	
i1l5720:	
;lcd.c: 54: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	i1_lcd_write
	line	55
	
i1l1506:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	i1_lcd_write
psect	text385,local,class=CODE,delta=2
global __ptext385
__ptext385:

;; *************** function i1_lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
;; Parameters:    Size  Location     Type
;;  lcd_write       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  lcd_write       1    2[COMMON] unsigned char 
;;  lcd_write       1    1[COMMON] unsigned char 
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
;;		_lcd_puts
;;		_lcd_goto
;;		i1_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text385
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\lcd.c"
	line	23
	global	__size_ofi1_lcd_write
	__size_ofi1_lcd_write	equ	__end_ofi1_lcd_write-i1_lcd_write
	
i1_lcd_write:	
	opt	stack 2
; Regs used in i1_lcd_write: [wreg+status,2+status,0]
;i1lcd_write@c stored from wreg
	movwf	(i1lcd_write@c)
	line	24
	
i1l6344:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(i1lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
i1l6346:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
i1l6348:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(i1lcd_write@c),w
	movwf	(??i1_lcd_write+0)+0
	movlw	04h
u423_25:
	clrc
	rlf	(??i1_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u423_25
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??i1_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
i1l6350:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
i1l6352:	
	bcf	(73/8),(73)&7
	line	28
	
i1l6354:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??i1_lcd_write+0)+0
	movf	(??i1_lcd_write+0)+0,w
	movwf	(i1lcd_write@_dcnt)
	goto	i1l6356
	
i1l1486:	
	goto	i1l6356
	
i1l1485:	
	
i1l6356:	
	movlw	low(01h)
	subwf	(i1lcd_write@_dcnt),f
	btfss	status,2
	goto	u424_21
	goto	u424_20
u424_21:
	goto	i1l6356
u424_20:
	goto	i1l1488
	
i1l1487:	
	line	29
	
i1l1488:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcd_write
	__end_ofi1_lcd_write:
;; =============== function i1_lcd_write ends ============

	signat	i1_lcd_write,88
	global	i1_DelayMs
psect	text386,local,class=CODE,delta=2
global __ptext386
__ptext386:

;; *************** function i1_DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\delay.c"
;; Parameters:    Size  Location     Type
;;  DelayMs         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DelayMs         1    1[COMMON] unsigned char 
;;  DelayMs         1    3[COMMON] unsigned char 
;;  DelayMs         1    2[COMMON] unsigned char 
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
;;		i1_lcd_clear
;; This function uses a non-reentrant model
;;
psect	text386
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam - Copy\delay.c"
	line	11
	global	__size_ofi1_DelayMs
	__size_ofi1_DelayMs	equ	__end_ofi1_DelayMs-i1_DelayMs
	
i1_DelayMs:	
	opt	stack 2
; Regs used in i1_DelayMs: [wreg+status,2+status,0]
;i1DelayMs@cnt stored from wreg
	movwf	(i1DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
i1l791:	
	line	21
	
i1l6336:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??i1_DelayMs+0)+0
	movf	(??i1_DelayMs+0)+0,w
	movwf	(i1DelayMs@i)
	line	22
;delay.c: 22: do {
	
i1l792:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??i1_DelayMs+0)+0
	movf	(??i1_DelayMs+0)+0,w
	movwf	(i1DelayMs@_dcnt)
	goto	i1l6338
	
i1l794:	
	goto	i1l6338
	
i1l793:	
	
i1l6338:	
	movlw	low(01h)
	subwf	(i1DelayMs@_dcnt),f
	btfss	status,2
	goto	u420_21
	goto	u420_20
u420_21:
	goto	i1l6338
u420_20:
	goto	i1l6340
	
i1l795:	
	line	24
	
i1l6340:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(i1DelayMs@i),f
	btfss	status,2
	goto	u421_21
	goto	u421_20
u421_21:
	goto	i1l792
u421_20:
	goto	i1l6342
	
i1l796:	
	line	25
	
i1l6342:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(i1DelayMs@cnt),f
	btfss	status,2
	goto	u422_21
	goto	u422_20
u422_21:
	goto	i1l791
u422_20:
	goto	i1l798
	
i1l797:	
	line	27
	
i1l798:	
	return
	opt stack 0
GLOBAL	__end_ofi1_DelayMs
	__end_ofi1_DelayMs:
;; =============== function i1_DelayMs ends ============

	signat	i1_DelayMs,88
psect	text387,local,class=CODE,delta=2
global __ptext387
__ptext387:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
