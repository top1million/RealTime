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
# 199 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	psect config,class=CONFIG,delta=2 ;#
# 199 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_initialise_set
	FNCALL	_main,_correspondingLetter
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_putch
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_clear
	FNCALL	_initialise_set,_lcd_init
	FNCALL	_initialise_set,_lcd_clear
	FNCALL	_initialise_set,_DelaySec
	FNCALL	_DelaySec,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_goto,_lcd_write
	FNROOT	_main
	FNCALL	_IntVector,i1_DelayMs
	FNCALL	intlevel1,_IntVector
	global	intlevel1
	FNROOT	intlevel1
	global	_isFirstEdge
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	218

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
	global	_message
	global	_adc_value1
	global	_adc_value2
	global	_adc_value3
	global	_adc_value4
	global	_adc_value5
	global	_current_char_pos
	global	_errno
	global	_isHalted
	global	_isTimer0On
	global	_message_indicator
	global	_numOfCharactersRead
	global	_numOfPresses
	global	_numOfWords
	global	_pulse_width_increment
	global	_rising_edge_time_1
	global	_timer0_value
	global	_total_chars
	global	_mostRepeatedWord3
	global	_period
	global	_mostRepeatedWord1
	global	_mostRepeatedWord2
	global	_CCPR2
_CCPR2	set	27
	global	_ADCON0
_ADCON0	set	31
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_INTCON
_INTCON	set	11
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
	global	_CARRY
_CARRY	set	24
	global	_CCP2IF
_CCP2IF	set	104
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_CCP2IE
_CCP2IE	set	1128
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
	file	"midterm1182972.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_period:
       ds      2

_mostRepeatedWord1:
       ds      1

_mostRepeatedWord2:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_message:
       ds      20

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

_current_char_pos:
       ds      2

_errno:
       ds      2

_isHalted:
       ds      2

_isTimer0On:
       ds      2

_message_indicator:
       ds      2

_numOfCharactersRead:
       ds      2

_numOfPresses:
       ds      2

_numOfWords:
       ds      2

_pulse_width_increment:
       ds      2

_rising_edge_time_1:
       ds      2

_timer0_value:
       ds      2

_total_chars:
       ds      2

_mostRepeatedWord3:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	218
_isFirstEdge:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+03Ch)
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
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
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
	global	?_correspondingLetter
?_correspondingLetter:	; 1 bytes @ 0x0
	ds	1
	global	i1DelayMs@cnt
i1DelayMs@cnt:	; 1 bytes @ 0x1
	ds	1
	global	i1DelayMs@i
i1DelayMs@i:	; 1 bytes @ 0x2
	ds	1
	global	i1DelayMs@_dcnt
i1DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??_IntVector
??_IntVector:	; 0 bytes @ 0x4
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_correspondingLetter
??_correspondingLetter:	; 0 bytes @ 0x0
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
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
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x3
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
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
	global	lcd_init@_dcnt_2147
lcd_init@_dcnt_2147:	; 1 bytes @ 0x6
	ds	1
	global	DelaySec@i
DelaySec@i:	; 2 bytes @ 0x7
	ds	2
	global	??_initialise_set
??_initialise_set:	; 0 bytes @ 0x9
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	1
	global	main@current_char
main@current_char:	; 1 bytes @ 0xA
	ds	1
;;Data sizes: Strings 0, constant 57, data 2, bss 64, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80     11      73
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _IntVector in COMMON
;;
;;   _IntVector->i1_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   _initialise_set->_DelaySec
;;   _DelaySec->_DelayMs
;;   _lcd_init->_DelayMs
;;   _lcd_clear->_DelayMs
;;   _lcd_goto->_lcd_write
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 8     8      0     900
;;                                              9 BANK0      2     2      0
;;                     _initialise_set
;;                _correspondingLetter
;;                           _lcd_goto
;;                          _lcd_putch
;;                            _DelayMs
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _initialise_set                                       0     0      0     430
;;                           _lcd_init
;;                          _lcd_clear
;;                           _DelaySec
;; ---------------------------------------------------------------------------------
;; (2) _DelaySec                                             5     3      2     114
;;                                              4 BANK0      5     3      2
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init                                             3     3      0     181
;;                                              4 BANK0      3     3      0
;;                            _DelayMs
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     135
;;                          _lcd_write
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      89
;;                                              3 BANK0      1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            3     3      0      67
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      68
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putch                                            3     3      0      67
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _correspondingLetter                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _IntVector                                            6     6      0     223
;;                                              4 COMMON     6     6      0
;;                          i1_DelayMs
;; ---------------------------------------------------------------------------------
;; (5) i1_DelayMs                                            4     4      0     223
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
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
;;   _correspondingLetter
;;   _lcd_goto
;;     _lcd_write
;;   _lcd_putch
;;   _DelayMs
;;   _lcd_clear
;;     _lcd_write
;;     _DelayMs
;;
;; _IntVector (ROOT)
;;   i1_DelayMs
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
;;DATA                 0      0      5E      12        0.0%
;;ABS                  0      0      57       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50      B      49       5       91.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 241 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    0        int 
;;  j               2    0        int 
;;  i               2    0        int 
;;  current_char    1   10[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_initialise_set
;;		_correspondingLetter
;;		_lcd_goto
;;		_lcd_putch
;;		_DelayMs
;;		_lcd_clear
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	241
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	242
	
l6777:	
;1182972_main.c: 242: initialise_set();
	fcall	_initialise_set
	goto	l6779
	line	244
;1182972_main.c: 244: while(1)
	
l745:	
	line	246
	
l6779:	
;1182972_main.c: 245: {
;1182972_main.c: 246: char current_char = correspondingLetter();
	fcall	_correspondingLetter
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@current_char)
	line	247
	
l6781:	
;1182972_main.c: 247: if(total_chars == 32)
	movlw	020h
	xorwf	(_total_chars),w
	iorwf	(_total_chars+1),w
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l6789
u4380:
	goto	l6785
	line	250
	
l6783:	
;1182972_main.c: 248: {
;1182972_main.c: 250: while(!isHalted);
	goto	l6785
	
l748:	
	goto	l6785
	
l747:	
	
l6785:	
	movf	(_isHalted+1),w
	iorwf	(_isHalted),w
	skipnz
	goto	u4391
	goto	u4390
u4391:
	goto	l6785
u4390:
	goto	l6787
	
l749:	
	line	251
	
l6787:	
;1182972_main.c: 251: isHalted = 0;
	clrf	(_isHalted)
	clrf	(_isHalted+1)
	line	252
;1182972_main.c: 252: total_chars = 0;
	clrf	(_total_chars)
	clrf	(_total_chars+1)
	line	253
;1182972_main.c: 253: current_char_pos = 0;
	clrf	(_current_char_pos)
	clrf	(_current_char_pos+1)
	goto	l6789
	line	254
	
l746:	
	line	255
	
l6789:	
;1182972_main.c: 254: }
;1182972_main.c: 255: if(current_char_pos > 15)
	movf	(_current_char_pos+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4405
	movlw	low(010h)
	subwf	(_current_char_pos),w
u4405:

	skipc
	goto	u4401
	goto	u4400
u4401:
	goto	l6803
u4400:
	line	257
	
l6791:	
;1182972_main.c: 256: {
;1182972_main.c: 257: lcd_goto(64 + current_char_pos++ - 16);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_current_char_pos),w
	addlw	030h
	fcall	_lcd_goto
	
l6793:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_current_char_pos),f
	skipnc
	incf	(_current_char_pos+1),f
	movlw	high(01h)
	addwf	(_current_char_pos+1),f
	line	258
	
l6795:	
;1182972_main.c: 258: message[message_indicator++] = current_char;
	movf	(main@current_char),w
	movwf	(??_main+0)+0
	movf	(_message_indicator),w
	addlw	_message&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6797:	
	movlw	low(01h)
	addwf	(_message_indicator),f
	skipnc
	incf	(_message_indicator+1),f
	movlw	high(01h)
	addwf	(_message_indicator+1),f
	line	259
	
l6799:	
;1182972_main.c: 259: lcd_putch(current_char);
	movf	(main@current_char),w
	fcall	_lcd_putch
	line	260
	
l6801:	
;1182972_main.c: 260: DelayMs(500);
	movlw	(0F4h)
	fcall	_DelayMs
	line	261
;1182972_main.c: 261: }
	goto	l6815
	line	262
	
l750:	
	line	264
	
l6803:	
;1182972_main.c: 262: else
;1182972_main.c: 263: {
;1182972_main.c: 264: lcd_goto(current_char_pos++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_current_char_pos),w
	fcall	_lcd_goto
	
l6805:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_current_char_pos),f
	skipnc
	incf	(_current_char_pos+1),f
	movlw	high(01h)
	addwf	(_current_char_pos+1),f
	line	265
	
l6807:	
;1182972_main.c: 265: message[message_indicator++] = current_char;
	movf	(main@current_char),w
	movwf	(??_main+0)+0
	movf	(_message_indicator),w
	addlw	_message&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6809:	
	movlw	low(01h)
	addwf	(_message_indicator),f
	skipnc
	incf	(_message_indicator+1),f
	movlw	high(01h)
	addwf	(_message_indicator+1),f
	line	266
	
l6811:	
;1182972_main.c: 266: lcd_putch(current_char);
	movf	(main@current_char),w
	fcall	_lcd_putch
	line	267
	
l6813:	
;1182972_main.c: 267: DelayMs(500);
	movlw	(0F4h)
	fcall	_DelayMs
	goto	l6815
	line	268
	
l751:	
	line	269
	
l6815:	
;1182972_main.c: 268: }
;1182972_main.c: 269: total_chars++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_total_chars),f
	skipnc
	incf	(_total_chars+1),f
	movlw	high(01h)
	addwf	(_total_chars+1),f
	line	270
	
l6817:	
;1182972_main.c: 270: if(current_char == '.')
	movf	(main@current_char),w
	xorlw	02Eh
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l6779
u4410:
	line	276
	
l6819:	
;1182972_main.c: 271: {
;1182972_main.c: 273: int i;
;1182972_main.c: 274: int j;
;1182972_main.c: 275: int k;
;1182972_main.c: 276: lcd_clear();
	fcall	_lcd_clear
	line	277
;1182972_main.c: 277: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	280
;1182972_main.c: 280: lcd_goto(64);
	movlw	(040h)
	fcall	_lcd_goto
	goto	l6779
	line	283
	
l752:	
	goto	l6779
	line	284
	
l753:	
	line	244
	goto	l6779
	
l754:	
	line	286
	
l755:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_initialise_set
psect	text343,local,class=CODE,delta=2
global __ptext343
__ptext343:

;; *************** function _initialise_set *****************
;; Defined at:
;;		line 314 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
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
;;		_lcd_init
;;		_lcd_clear
;;		_DelaySec
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text343
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	314
	global	__size_of_initialise_set
	__size_of_initialise_set	equ	__end_of_initialise_set-_initialise_set
	
_initialise_set:	
	opt	stack 3
; Regs used in _initialise_set: [wreg+status,2+status,0+pclath+cstack]
	line	316
	
l6707:	
;1182972_main.c: 316: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	317
	
l6709:	
;1182972_main.c: 317: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	318
;1182972_main.c: 318: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	319
	
l6711:	
;1182972_main.c: 319: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	320
	
l6713:	
;1182972_main.c: 320: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	321
;1182972_main.c: 321: ADCON1 = 0x82;
	movlw	(082h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	322
;1182972_main.c: 322: TRISA = 0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	323
	
l6715:	
;1182972_main.c: 323: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	324
	
l6717:	
;1182972_main.c: 324: PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	325
	
l6719:	
;1182972_main.c: 325: RE2 = 0;
	bcf	(74/8),(74)&7
	line	327
	
l6721:	
;1182972_main.c: 327: TMR1CS = 0;
	bcf	(129/8),(129)&7
	line	328
	
l6723:	
;1182972_main.c: 328: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	329
	
l6725:	
;1182972_main.c: 329: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	330
	
l6727:	
;1182972_main.c: 330: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	331
	
l6729:	
;1182972_main.c: 331: T1CKPS0 = 0; T1CKPS1 = 0;
	bcf	(132/8),(132)&7
	
l6731:	
	bcf	(133/8),(133)&7
	line	332
	
l6733:	
;1182972_main.c: 332: T1SYNC = 0;
	bcf	(130/8),(130)&7
	line	333
	
l6735:	
;1182972_main.c: 333: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	334
	
l6737:	
;1182972_main.c: 334: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	336
	
l6739:	
;1182972_main.c: 336: lcd_init();
	fcall	_lcd_init
	line	337
	
l6741:	
;1182972_main.c: 337: lcd_clear();
	fcall	_lcd_clear
	line	338
	
l6743:	
;1182972_main.c: 338: DelaySec(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	341
	
l6745:	
;1182972_main.c: 341: GIE=1;
	bsf	(95/8),(95)&7
	line	342
	
l6747:	
;1182972_main.c: 342: T0IE = 1;
	bsf	(93/8),(93)&7
	line	343
	
l6749:	
;1182972_main.c: 343: PEIE = 1;
	bsf	(94/8),(94)&7
	line	344
	
l6751:	
;1182972_main.c: 344: RBIE = 1;
	bsf	(91/8),(91)&7
	line	345
	
l6753:	
;1182972_main.c: 345: RBIF = 0;
	bcf	(88/8),(88)&7
	line	346
	
l6755:	
;1182972_main.c: 346: CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1128/8)^080h,(1128)&7
	line	347
	
l6757:	
;1182972_main.c: 347: CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(104/8),(104)&7
	line	350
	
l6759:	
;1182972_main.c: 350: PR2 = 66;
	movlw	(042h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	351
	
l6761:	
;1182972_main.c: 351: CCP1CON = 0x3C;
	movlw	(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	352
	
l6763:	
;1182972_main.c: 352: T2CON = 4;
	movlw	(04h)
	movwf	(18)	;volatile
	line	353
	
l6765:	
;1182972_main.c: 353: CCPR1L = 0;
	clrf	(21)	;volatile
	line	354
	
l6767:	
;1182972_main.c: 354: pulse_width_increment = 2.55;
	movlw	low(02h)
	movwf	(_pulse_width_increment)
	movlw	high(02h)
	movwf	((_pulse_width_increment))+1
	line	357
	
l6769:	
;1182972_main.c: 357: current_char_pos = 0;
	clrf	(_current_char_pos)
	clrf	(_current_char_pos+1)
	line	358
	
l6771:	
;1182972_main.c: 358: total_chars = 0;
	clrf	(_total_chars)
	clrf	(_total_chars+1)
	line	363
	
l6773:	
;1182972_main.c: 363: OPTION_REG = 0x87;
	movlw	(087h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	364
	
l6775:	
;1182972_main.c: 364: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	369
	
l770:	
	return
	opt stack 0
GLOBAL	__end_of_initialise_set
	__end_of_initialise_set:
;; =============== function _initialise_set ends ============

	signat	_initialise_set,88
	global	_DelaySec
psect	text344,local,class=CODE,delta=2
global __ptext344
__ptext344:

;; *************** function _DelaySec *****************
;; Defined at:
;;		line 372 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_initialise_set
;; This function uses a non-reentrant model
;;
psect	text344
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	372
	global	__size_of_DelaySec
	__size_of_DelaySec	equ	__end_of_DelaySec-_DelaySec
	
_DelaySec:	
	opt	stack 3
; Regs used in _DelaySec: [wreg+status,2+status,0+pclath+cstack]
	line	373
	
l6699:	
;1182972_main.c: 373: for(int i=0;i<sec;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(DelaySec@i)
	clrf	(DelaySec@i+1)
	goto	l6705
	line	374
	
l774:	
	
l6701:	
;1182972_main.c: 374: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	373
	
l6703:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(DelaySec@i),f
	skipnc
	incf	(DelaySec@i+1),f
	movlw	high(01h)
	addwf	(DelaySec@i+1),f
	goto	l6705
	
l773:	
	
l6705:	
	movf	(DelaySec@i+1),w
	xorlw	80h
	movwf	(??_DelaySec+0)+0
	movf	(DelaySec@sec+1),w
	xorlw	80h
	subwf	(??_DelaySec+0)+0,w
	skipz
	goto	u4375
	movf	(DelaySec@sec),w
	subwf	(DelaySec@i),w
u4375:

	skipc
	goto	u4371
	goto	u4370
u4371:
	goto	l6701
u4370:
	goto	l776
	
l775:	
	line	375
	
l776:	
	return
	opt stack 0
GLOBAL	__end_of_DelaySec
	__end_of_DelaySec:
;; =============== function _DelaySec ends ============

	signat	_DelaySec,4216
	global	_lcd_init
psect	text345,local,class=CODE,delta=2
global __ptext345
__ptext345:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 57 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayMs
;;		_lcd_write
;; This function is called by:
;;		_initialise_set
;; This function uses a non-reentrant model
;;
psect	text345
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
	line	57
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 3
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l6667:	
;lcd.c: 58: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	59
	
l6669:	
;lcd.c: 59: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	60
	
l6671:	
;lcd.c: 60: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	61
	
l6673:	
;lcd.c: 61: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6675:	
	bcf	(73/8),(73)&7
	line	62
	
l6677:	
;lcd.c: 62: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	63
	
l6679:	
;lcd.c: 63: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l6681:	
	bcf	(73/8),(73)&7
	line	64
;lcd.c: 64: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l6683
	
l1565:	
	goto	l6683
	
l1564:	
	
l6683:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l6683
u4350:
	
l1566:	
	line	65
;lcd.c: 65: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	66
	
l6685:	
;lcd.c: 66: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	67
	
l6687:	
;lcd.c: 67: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	68
	
l6689:	
;lcd.c: 68: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6691:	
	bcf	(73/8),(73)&7
	line	69
	
l6693:	
;lcd.c: 69: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2147)
	goto	l6695
	
l1568:	
	goto	l6695
	
l1567:	
	
l6695:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2147),f
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l6695
u4360:
	goto	l6697
	
l1569:	
	line	70
	
l6697:	
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
	
l1570:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_clear
psect	text346,local,class=CODE,delta=2
global __ptext346
__ptext346:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_DelayMs
;; This function is called by:
;;		_main
;;		_initialise_set
;; This function uses a non-reentrant model
;;
psect	text346
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l6663:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l6665:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1546:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_goto
psect	text347,local,class=CODE,delta=2
global __ptext347
__ptext347:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 52 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text347
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
	line	52
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_goto@pos)
	line	53
	
l6659:	
;lcd.c: 53: RE0 = 0;
	bcf	(72/8),(72)&7
	line	54
	
l6661:	
;lcd.c: 54: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	55
	
l1561:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_write
psect	text348,local,class=CODE,delta=2
global __ptext348
__ptext348:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_init
;;		_lcd_puts
;; This function uses a non-reentrant model
;;
psect	text348
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_write@c)
	line	24
	
l6037:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l6039:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6041:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u3185:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l6043:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6045:	
	bcf	(73/8),(73)&7
	line	28
	
l6047:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l6049
	
l1541:	
	goto	l6049
	
l1540:	
	
l6049:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l6049
u3190:
	goto	l1543
	
l1542:	
	line	29
	
l1543:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_DelayMs
psect	text349,local,class=CODE,delta=2
global __ptext349
__ptext349:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\delay.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_DelaySec
;;		_lcd_clear
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text349
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 4
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
l846:	
	line	21
	
l5987:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	22
;delay.c: 22: do {
	
l847:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l5989
	
l849:	
	goto	l5989
	
l848:	
	
l5989:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l5989
u3090:
	goto	l5991
	
l850:	
	line	24
	
l5991:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l847
u3100:
	goto	l5993
	
l851:	
	line	25
	
l5993:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l846
u3110:
	goto	l853
	
l852:	
	line	27
	
l853:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_lcd_putch
psect	text350,local,class=CODE,delta=2
global __ptext350
__ptext350:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 43 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text350
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\lcd.c"
	line	43
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 5
; Regs used in _lcd_putch: [wreg+status,2+status,0]
;lcd_putch@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_putch@c)
	line	44
	
l5971:	
;lcd.c: 44: RE0 = 1;
	bsf	(72/8),(72)&7
	line	45
	
l5973:	
;lcd.c: 45: PORTD = (PORTD & 0x0F) | (c);
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_putch@c),w
	movwf	(8)	;volatile
	line	46
	
l5975:	
;lcd.c: 46: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5977:	
	bcf	(73/8),(73)&7
	line	47
;lcd.c: 47: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0)+0
	movlw	04h
u3075:
	clrc
	rlf	(??_lcd_putch+0)+0,f
	addlw	-1
	skipz
	goto	u3075
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_putch+0)+0,w
	movwf	(8)	;volatile
	line	48
	
l5979:	
;lcd.c: 48: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l5981:	
	bcf	(73/8),(73)&7
	line	49
	
l5983:	
;lcd.c: 49: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_putch+0)+0
	movf	(??_lcd_putch+0)+0,w
	movwf	(lcd_putch@_dcnt)
	goto	l5985
	
l1556:	
	goto	l5985
	
l1555:	
	
l5985:	
	movlw	low(01h)
	subwf	(lcd_putch@_dcnt),f
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l5985
u3080:
	goto	l1558
	
l1557:	
	line	50
	
l1558:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_correspondingLetter
psect	text351,local,class=CODE,delta=2
global __ptext351
__ptext351:

;; *************** function _correspondingLetter *****************
;; Defined at:
;;		line 378 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text351
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	378
	global	__size_of_correspondingLetter
	__size_of_correspondingLetter	equ	__end_of_correspondingLetter-_correspondingLetter
	
_correspondingLetter:	
	opt	stack 5
; Regs used in _correspondingLetter: [wreg]
	line	379
	
l5781:	
;1182972_main.c: 379: if (period == 10000)
	movlw	high(02710h)
	xorwf	(_period+1),w
	skipz
	goto	u2955
	movlw	low(02710h)
	xorwf	(_period),w
u2955:

	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l5789
u2950:
	line	381
	
l5783:	
;1182972_main.c: 380: {
;1182972_main.c: 381: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	382
;1182972_main.c: 382: return 'a';
	movlw	(061h)
	goto	l780
	
l5785:	
	goto	l780
	line	383
	
l5787:	
;1182972_main.c: 383: }
	goto	l780
	line	384
	
l779:	
	
l5789:	
;1182972_main.c: 384: else if (period == 15000)
	movlw	high(03A98h)
	xorwf	(_period+1),w
	skipz
	goto	u2965
	movlw	low(03A98h)
	xorwf	(_period),w
u2965:

	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l5797
u2960:
	line	386
	
l5791:	
;1182972_main.c: 385: {
;1182972_main.c: 386: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	387
;1182972_main.c: 387: return 'b';
	movlw	(062h)
	goto	l780
	
l5793:	
	goto	l780
	line	388
	
l5795:	
;1182972_main.c: 388: }
	goto	l780
	line	389
	
l782:	
	
l5797:	
;1182972_main.c: 389: else if (period == 20000)
	movlw	high(04E20h)
	xorwf	(_period+1),w
	skipz
	goto	u2975
	movlw	low(04E20h)
	xorwf	(_period),w
u2975:

	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l5805
u2970:
	line	391
	
l5799:	
;1182972_main.c: 390: {
;1182972_main.c: 391: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	392
;1182972_main.c: 392: return 'c';
	movlw	(063h)
	goto	l780
	
l5801:	
	goto	l780
	line	393
	
l5803:	
;1182972_main.c: 393: }
	goto	l780
	line	394
	
l784:	
	
l5805:	
;1182972_main.c: 394: else if (period == 25000)
	movlw	high(061A8h)
	xorwf	(_period+1),w
	skipz
	goto	u2985
	movlw	low(061A8h)
	xorwf	(_period),w
u2985:

	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l5813
u2980:
	line	396
	
l5807:	
;1182972_main.c: 395: {
;1182972_main.c: 396: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	397
;1182972_main.c: 397: return 'd';
	movlw	(064h)
	goto	l780
	
l5809:	
	goto	l780
	line	398
	
l5811:	
;1182972_main.c: 398: }
	goto	l780
	line	399
	
l786:	
	
l5813:	
;1182972_main.c: 399: else if (period == 30000)
	movlw	high(07530h)
	xorwf	(_period+1),w
	skipz
	goto	u2995
	movlw	low(07530h)
	xorwf	(_period),w
u2995:

	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l5821
u2990:
	line	401
	
l5815:	
;1182972_main.c: 400: {
;1182972_main.c: 401: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	402
;1182972_main.c: 402: return 'e';
	movlw	(065h)
	goto	l780
	
l5817:	
	goto	l780
	line	403
	
l5819:	
;1182972_main.c: 403: }
	goto	l780
	line	404
	
l788:	
	
l5821:	
;1182972_main.c: 404: else if (period == 35000)
	movlw	high(088B8h)
	xorwf	(_period+1),w
	skipz
	goto	u3005
	movlw	low(088B8h)
	xorwf	(_period),w
u3005:

	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l5829
u3000:
	line	406
	
l5823:	
;1182972_main.c: 405: {
;1182972_main.c: 406: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	407
;1182972_main.c: 407: return 'f';
	movlw	(066h)
	goto	l780
	
l5825:	
	goto	l780
	line	408
	
l5827:	
;1182972_main.c: 408: }
	goto	l780
	line	409
	
l790:	
	
l5829:	
;1182972_main.c: 409: else if (period == 40000)
	movlw	high(09C40h)
	xorwf	(_period+1),w
	skipz
	goto	u3015
	movlw	low(09C40h)
	xorwf	(_period),w
u3015:

	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l5837
u3010:
	line	411
	
l5831:	
;1182972_main.c: 410: {
;1182972_main.c: 411: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	412
;1182972_main.c: 412: return 'g';
	movlw	(067h)
	goto	l780
	
l5833:	
	goto	l780
	line	413
	
l5835:	
;1182972_main.c: 413: }
	goto	l780
	line	414
	
l792:	
	
l5837:	
;1182972_main.c: 414: else if (period == 45000)
	movlw	high(0AFC8h)
	xorwf	(_period+1),w
	skipz
	goto	u3025
	movlw	low(0AFC8h)
	xorwf	(_period),w
u3025:

	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l5845
u3020:
	line	416
	
l5839:	
;1182972_main.c: 415: {
;1182972_main.c: 416: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	417
;1182972_main.c: 417: return 'h';
	movlw	(068h)
	goto	l780
	
l5841:	
	goto	l780
	line	418
	
l5843:	
;1182972_main.c: 418: }
	goto	l780
	line	419
	
l794:	
	
l5845:	
;1182972_main.c: 419: else if (period == 50000)
	movlw	high(0C350h)
	xorwf	(_period+1),w
	skipz
	goto	u3035
	movlw	low(0C350h)
	xorwf	(_period),w
u3035:

	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l5853
u3030:
	line	421
	
l5847:	
;1182972_main.c: 420: {
;1182972_main.c: 421: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	422
;1182972_main.c: 422: return 'i';
	movlw	(069h)
	goto	l780
	
l5849:	
	goto	l780
	line	423
	
l5851:	
;1182972_main.c: 423: }
	goto	l780
	line	424
	
l796:	
	
l5853:	
;1182972_main.c: 424: else if (period == 55000)
	movlw	high(0D6D8h)
	xorwf	(_period+1),w
	skipz
	goto	u3045
	movlw	low(0D6D8h)
	xorwf	(_period),w
u3045:

	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l5861
u3040:
	line	426
	
l5855:	
;1182972_main.c: 425: {
;1182972_main.c: 426: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	427
;1182972_main.c: 427: return 'j';
	movlw	(06Ah)
	goto	l780
	
l5857:	
	goto	l780
	line	428
	
l5859:	
;1182972_main.c: 428: }
	goto	l780
	line	429
	
l798:	
	
l5861:	
;1182972_main.c: 429: else if (period == 60000)
	movlw	high(0EA60h)
	xorwf	(_period+1),w
	skipz
	goto	u3055
	movlw	low(0EA60h)
	xorwf	(_period),w
u3055:

	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l5869
u3050:
	line	431
	
l5863:	
;1182972_main.c: 430: {
;1182972_main.c: 431: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	432
;1182972_main.c: 432: return 'k';
	movlw	(06Bh)
	goto	l780
	
l5865:	
	goto	l780
	line	433
	
l5867:	
;1182972_main.c: 433: }
	goto	l780
	line	434
	
l800:	
	
l5869:	
;1182972_main.c: 434: else if (period == 65000)
	movlw	high(0FDE8h)
	xorwf	(_period+1),w
	skipz
	goto	u3065
	movlw	low(0FDE8h)
	xorwf	(_period),w
u3065:

	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l780
u3060:
	line	436
	
l5871:	
;1182972_main.c: 435: {
;1182972_main.c: 436: numOfCharactersRead++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	437
;1182972_main.c: 437: return 'l';
	movlw	(06Ch)
	goto	l780
	
l5873:	
	goto	l780
	line	438
	
l5875:	
;1182972_main.c: 438: }
	goto	l780
	line	439
	
l802:	
;1182972_main.c: 439: else if (period == 70000)
	goto	l780
	line	441
	
l5877:	
;1182972_main.c: 440: {
;1182972_main.c: 441: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	442
;1182972_main.c: 442: return 'm';
	movlw	(06Dh)
	goto	l780
	
l5879:	
	goto	l780
	line	443
	
l5881:	
;1182972_main.c: 443: }
	goto	l780
	line	444
	
l804:	
;1182972_main.c: 444: else if (period == 75000)
	goto	l780
	line	446
	
l5883:	
;1182972_main.c: 445: {
;1182972_main.c: 446: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	447
;1182972_main.c: 447: return 'n';
	movlw	(06Eh)
	goto	l780
	
l5885:	
	goto	l780
	line	448
	
l5887:	
;1182972_main.c: 448: }
	goto	l780
	line	449
	
l806:	
;1182972_main.c: 449: else if (period == 80000)
	goto	l780
	line	451
	
l5889:	
;1182972_main.c: 450: {
;1182972_main.c: 451: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	452
;1182972_main.c: 452: return 'o';
	movlw	(06Fh)
	goto	l780
	
l5891:	
	goto	l780
	line	453
	
l5893:	
;1182972_main.c: 453: }
	goto	l780
	line	454
	
l808:	
;1182972_main.c: 454: else if (period == 85000)
	goto	l780
	line	456
	
l5895:	
;1182972_main.c: 455: {
;1182972_main.c: 456: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	457
;1182972_main.c: 457: return 'p';
	movlw	(070h)
	goto	l780
	
l5897:	
	goto	l780
	line	458
	
l5899:	
;1182972_main.c: 458: }
	goto	l780
	line	459
	
l810:	
;1182972_main.c: 459: else if (period == 90000)
	goto	l780
	line	461
	
l5901:	
;1182972_main.c: 460: {
;1182972_main.c: 461: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	462
;1182972_main.c: 462: return 'q';
	movlw	(071h)
	goto	l780
	
l5903:	
	goto	l780
	line	463
	
l5905:	
;1182972_main.c: 463: }
	goto	l780
	line	464
	
l812:	
;1182972_main.c: 464: else if (period == 95000)
	goto	l780
	line	466
	
l5907:	
;1182972_main.c: 465: {
;1182972_main.c: 466: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	467
;1182972_main.c: 467: return 'r';
	movlw	(072h)
	goto	l780
	
l5909:	
	goto	l780
	line	468
	
l5911:	
;1182972_main.c: 468: }
	goto	l780
	line	469
	
l814:	
;1182972_main.c: 469: else if (period == 100000)
	goto	l780
	line	471
	
l5913:	
;1182972_main.c: 470: {
;1182972_main.c: 471: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	472
;1182972_main.c: 472: return 's';
	movlw	(073h)
	goto	l780
	
l5915:	
	goto	l780
	line	473
	
l5917:	
;1182972_main.c: 473: }
	goto	l780
	line	474
	
l816:	
;1182972_main.c: 474: else if (period == 105000)
	goto	l780
	line	476
	
l5919:	
;1182972_main.c: 475: {
;1182972_main.c: 476: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	477
;1182972_main.c: 477: return 't';
	movlw	(074h)
	goto	l780
	
l5921:	
	goto	l780
	line	478
	
l5923:	
;1182972_main.c: 478: }
	goto	l780
	line	479
	
l818:	
;1182972_main.c: 479: else if (period == 110000)
	goto	l780
	line	481
	
l5925:	
;1182972_main.c: 480: {
;1182972_main.c: 481: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	482
;1182972_main.c: 482: return 'u';
	movlw	(075h)
	goto	l780
	
l5927:	
	goto	l780
	line	483
	
l5929:	
;1182972_main.c: 483: }
	goto	l780
	line	484
	
l820:	
;1182972_main.c: 484: else if (period == 115000)
	goto	l780
	line	486
	
l5931:	
;1182972_main.c: 485: {
;1182972_main.c: 486: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	487
;1182972_main.c: 487: return 'v';
	movlw	(076h)
	goto	l780
	
l5933:	
	goto	l780
	line	488
	
l5935:	
;1182972_main.c: 488: }
	goto	l780
	line	489
	
l822:	
;1182972_main.c: 489: else if (period == 120000)
	goto	l780
	line	491
	
l5937:	
;1182972_main.c: 490: {
;1182972_main.c: 491: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	492
;1182972_main.c: 492: return 'w';
	movlw	(077h)
	goto	l780
	
l5939:	
	goto	l780
	line	493
	
l5941:	
;1182972_main.c: 493: }
	goto	l780
	line	494
	
l824:	
;1182972_main.c: 494: else if (period == 125000)
	goto	l780
	line	496
	
l5943:	
;1182972_main.c: 495: {
;1182972_main.c: 496: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	497
;1182972_main.c: 497: return 'x';
	movlw	(078h)
	goto	l780
	
l5945:	
	goto	l780
	line	498
	
l5947:	
;1182972_main.c: 498: }
	goto	l780
	line	499
	
l826:	
;1182972_main.c: 499: else if (period == 130000)
	goto	l780
	line	501
	
l5949:	
;1182972_main.c: 500: {
;1182972_main.c: 501: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	502
;1182972_main.c: 502: return 'y';
	movlw	(079h)
	goto	l780
	
l5951:	
	goto	l780
	line	503
	
l5953:	
;1182972_main.c: 503: }
	goto	l780
	line	504
	
l828:	
;1182972_main.c: 504: else if (period == 135000)
	goto	l780
	line	506
	
l5955:	
;1182972_main.c: 505: {
;1182972_main.c: 506: numOfCharactersRead++;
	movlw	low(01h)
	addwf	(_numOfCharactersRead),f
	skipnc
	incf	(_numOfCharactersRead+1),f
	movlw	high(01h)
	addwf	(_numOfCharactersRead+1),f
	line	507
;1182972_main.c: 507: return 'z';
	movlw	(07Ah)
	goto	l780
	
l5957:	
	goto	l780
	line	508
	
l5959:	
;1182972_main.c: 508: }
	goto	l780
	line	509
	
l830:	
;1182972_main.c: 509: else if (period == 140000)
	goto	l780
	line	511
	
l5961:	
;1182972_main.c: 510: {
;1182972_main.c: 511: numOfWords++;
	movlw	low(01h)
	addwf	(_numOfWords),f
	skipnc
	incf	(_numOfWords+1),f
	movlw	high(01h)
	addwf	(_numOfWords+1),f
	line	512
;1182972_main.c: 512: return ' ';
	movlw	(020h)
	goto	l780
	
l5963:	
	goto	l780
	line	513
	
l5965:	
;1182972_main.c: 513: }
	goto	l780
	line	514
	
l832:	
;1182972_main.c: 514: else if (period == 145000)
	goto	l780
	line	516
	
l5967:	
;1182972_main.c: 515: {
;1182972_main.c: 516: return '.';
	movlw	(02Eh)
	goto	l780
	
l5969:	
	goto	l780
	line	517
	
l834:	
	goto	l780
	line	519
	
l833:	
	goto	l780
	
l831:	
	goto	l780
	
l829:	
	goto	l780
	
l827:	
	goto	l780
	
l825:	
	goto	l780
	
l823:	
	goto	l780
	
l821:	
	goto	l780
	
l819:	
	goto	l780
	
l817:	
	goto	l780
	
l815:	
	goto	l780
	
l813:	
	goto	l780
	
l811:	
	goto	l780
	
l809:	
	goto	l780
	
l807:	
	goto	l780
	
l805:	
	goto	l780
	
l803:	
	goto	l780
	
l801:	
	goto	l780
	
l799:	
	goto	l780
	
l797:	
	goto	l780
	
l795:	
	goto	l780
	
l793:	
	goto	l780
	
l791:	
	goto	l780
	
l789:	
	goto	l780
	
l787:	
	goto	l780
	
l785:	
	goto	l780
	
l783:	
	goto	l780
	
l781:	
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_correspondingLetter
	__end_of_correspondingLetter:
;; =============== function _correspondingLetter ends ============

	signat	_correspondingLetter,89
	global	_IntVector
psect	text352,local,class=CODE,delta=2
global __ptext352
__ptext352:

;; *************** function _IntVector *****************
;; Defined at:
;;		line 523 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
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
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_DelayMs
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text352
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\1182972_main.c"
	line	523
	global	__size_of_IntVector
	__size_of_IntVector	equ	__end_of_IntVector-_IntVector
	
_IntVector:	
	opt	stack 3
; Regs used in _IntVector: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_IntVector+2)
	movf	fsr0,w
	movwf	(??_IntVector+3)
	movf	pclath,w
	movwf	(??_IntVector+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_IntVector+5)
	ljmp	_IntVector
psect	text352
	line	526
	
i1l5995:	
;1182972_main.c: 526: if(CCP2IF == 1)
	btfss	(104/8),(104)&7
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l6009
u312_20:
	line	528
	
i1l5997:	
;1182972_main.c: 527: {
;1182972_main.c: 528: CCP2IF = 0;
	bcf	(104/8),(104)&7
	line	529
	
i1l5999:	
;1182972_main.c: 529: if( isFirstEdge){
	movf	(_isFirstEdge+1),w
	iorwf	(_isFirstEdge),w
	skipnz
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l6003
u313_20:
	line	530
	
i1l6001:	
;1182972_main.c: 530: rising_edge_time_1 = (int) CCPR2;
	movf	(27+1),w	;volatile
	clrf	(_rising_edge_time_1+1)	;volatile
	addwf	(_rising_edge_time_1+1)	;volatile
	movf	(27),w	;volatile
	clrf	(_rising_edge_time_1)	;volatile
	addwf	(_rising_edge_time_1)	;volatile

	line	531
;1182972_main.c: 531: }
	goto	i1l6005
	line	532
	
i1l838:	
	line	533
	
i1l6003:	
;1182972_main.c: 532: else{
;1182972_main.c: 533: period = (int) CCPR2 - rising_edge_time_1;
	comf	(_rising_edge_time_1),w
	movwf	(??_IntVector+0)+0
	comf	(_rising_edge_time_1+1),w
	movwf	((??_IntVector+0)+0+1)
	incf	(??_IntVector+0)+0,f
	skipnz
	incf	((??_IntVector+0)+0+1),f
	movf	(27),w	;volatile
	addwf	0+(??_IntVector+0)+0,w
	movwf	(_period)
	movf	(27+1),w	;volatile
	skipnc
	incf	(27+1),w	;volatile
	addwf	1+(??_IntVector+0)+0,w
	movwf	1+(_period)
	goto	i1l6005
	line	534
	
i1l839:	
	line	535
	
i1l6005:	
;1182972_main.c: 534: }
;1182972_main.c: 535: isFirstEdge = !isFirstEdge;
	movf	(_isFirstEdge+1),w
	iorwf	(_isFirstEdge),w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_IntVector+0)+0
	clrf	(??_IntVector+0)+0+1
	movf	0+(??_IntVector+0)+0,w
	movwf	(_isFirstEdge)
	movf	1+(??_IntVector+0)+0,w
	movwf	(_isFirstEdge+1)
	line	536
	
i1l6007:	
;1182972_main.c: 536: DelayMs(500);
	movlw	(0F4h)
	fcall	i1_DelayMs
	goto	i1l6009
	line	537
	
i1l837:	
	line	538
	
i1l6009:	
;1182972_main.c: 537: }
;1182972_main.c: 538: if(TMR1IF == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l6015
u314_20:
	line	540
	
i1l6011:	
;1182972_main.c: 539: {
;1182972_main.c: 540: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	541
	
i1l6013:	
;1182972_main.c: 541: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	542
;1182972_main.c: 542: TMR1L = 0x00;
	clrf	(14)	;volatile
	goto	i1l6015
	line	543
	
i1l840:	
	line	545
	
i1l6015:	
;1182972_main.c: 543: }
;1182972_main.c: 545: if(INTF == 1)
	btfss	(89/8),(89)&7
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l6029
u315_20:
	line	547
	
i1l6017:	
;1182972_main.c: 546: {
;1182972_main.c: 547: INTF = 0;
	bcf	(89/8),(89)&7
	line	548
	
i1l6019:	
;1182972_main.c: 548: INTCON = 0;
	clrf	(11)	;volatile
	line	552
	
i1l6021:	
;1182972_main.c: 552: numOfPresses++;
	movlw	low(01h)
	addwf	(_numOfPresses),f
	skipnc
	incf	(_numOfPresses+1),f
	movlw	high(01h)
	addwf	(_numOfPresses+1),f
	line	556
	
i1l6023:	
;1182972_main.c: 556: INTCON = 1;
	movlw	(01h)
	movwf	(11)	;volatile
	line	557
	
i1l6025:	
;1182972_main.c: 557: GIE = 1;
	bsf	(95/8),(95)&7
	line	558
	
i1l6027:	
;1182972_main.c: 558: INTE = 1;
	bsf	(92/8),(92)&7
	goto	i1l6029
	line	560
	
i1l841:	
	line	562
	
i1l6029:	
;1182972_main.c: 560: }
;1182972_main.c: 562: if (T0IE && T0IF)
	btfss	(93/8),(93)&7
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l843
u316_20:
	
i1l6031:	
	btfss	(90/8),(90)&7
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l843
u317_20:
	line	564
	
i1l6033:	
;1182972_main.c: 563: {
;1182972_main.c: 564: T0IF = 0;
	bcf	(90/8),(90)&7
	line	565
	
i1l6035:	
;1182972_main.c: 565: TMR0 = 0;
	clrf	(1)	;volatile
	line	570
;1182972_main.c: 570: numOfPresses = 0;
	clrf	(_numOfPresses)
	clrf	(_numOfPresses+1)
	line	571
;1182972_main.c: 571: isTimer0On = 0;
	clrf	(_isTimer0On)
	clrf	(_isTimer0On+1)
	goto	i1l843
	line	572
	
i1l842:	
	line	573
	
i1l843:	
	movf	(??_IntVector+5),w
	movwf	btemp+1
	movf	(??_IntVector+4),w
	movwf	pclath
	movf	(??_IntVector+3),w
	movwf	fsr0
	swapf	(??_IntVector+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_IntVector
	__end_of_IntVector:
;; =============== function _IntVector ends ============

	signat	_IntVector,88
	global	i1_DelayMs
psect	text353,local,class=CODE,delta=2
global __ptext353
__ptext353:

;; *************** function i1_DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\delay.c"
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
;;		_IntVector
;; This function uses a non-reentrant model
;;
psect	text353
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\Midterm Exam\delay.c"
	line	11
	global	__size_ofi1_DelayMs
	__size_ofi1_DelayMs	equ	__end_ofi1_DelayMs-i1_DelayMs
	
i1_DelayMs:	
	opt	stack 3
; Regs used in i1_DelayMs: [wreg+status,2+status,0]
;i1DelayMs@cnt stored from wreg
	movwf	(i1DelayMs@cnt)
	line	20
;delay.c: 19: unsigned char i;
;delay.c: 20: do {
	
i1l846:	
	line	21
	
i1l6651:	
;delay.c: 21: i = 4;
	movlw	(04h)
	movwf	(??i1_DelayMs+0)+0
	movf	(??i1_DelayMs+0)+0,w
	movwf	(i1DelayMs@i)
	line	22
;delay.c: 22: do {
	
i1l847:	
	line	23
;delay.c: 23: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??i1_DelayMs+0)+0
	movf	(??i1_DelayMs+0)+0,w
	movwf	(i1DelayMs@_dcnt)
	goto	i1l6653
	
i1l849:	
	goto	i1l6653
	
i1l848:	
	
i1l6653:	
	movlw	low(01h)
	subwf	(i1DelayMs@_dcnt),f
	btfss	status,2
	goto	u432_21
	goto	u432_20
u432_21:
	goto	i1l6653
u432_20:
	goto	i1l6655
	
i1l850:	
	line	24
	
i1l6655:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(i1DelayMs@i),f
	btfss	status,2
	goto	u433_21
	goto	u433_20
u433_21:
	goto	i1l847
u433_20:
	goto	i1l6657
	
i1l851:	
	line	25
	
i1l6657:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(i1DelayMs@cnt),f
	btfss	status,2
	goto	u434_21
	goto	u434_20
u434_21:
	goto	i1l846
u434_20:
	goto	i1l853
	
i1l852:	
	line	27
	
i1l853:	
	return
	opt stack 0
GLOBAL	__end_ofi1_DelayMs
	__end_ofi1_DelayMs:
;; =============== function i1_DelayMs ends ============

	signat	i1_DelayMs,88
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
