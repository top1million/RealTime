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
# 6 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_getkey
	FNCALL	_main,_putchar
	FNCALL	_putchar,_lcd_clear
	FNCALL	_putchar,_lcd_putch
	FNCALL	_putchar,_putchar
	FNCALL	_putchar,___wmul
	FNCALL	_putchar,___awdiv
	FNCALL	_getkey,_DelayMs
	FNCALL	_getkey,___awdiv
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_DelayMs
	FNCALL	_lcd_init,_DelayMs
	FNCALL	_lcd_init,_lcd_write
	FNROOT	_main
	global	_col
	global	_pressed_key
	global	_row
	global	_x1
	global	_x2
	global	_Chkey
	global	_op
	global	_PORTB
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	file	"lab2 part 2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_op:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_col:
       ds      2

_pressed_key:
       ds      2

_row:
       ds      2

_x1:
       ds      2

_x2:
       ds      2

_Chkey:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
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
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x0
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
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
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
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	global	lcd_putch@_dcnt
lcd_putch@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x4
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	lcd_init@_dcnt
lcd_init@_dcnt:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	lcd_init@_dcnt_2105
lcd_init@_dcnt_2105:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_getkey
??_getkey:	; 0 bytes @ 0x9
	global	??_putchar
??_putchar:	; 0 bytes @ 0x9
	ds	1
	global	putchar@ch
putchar@ch:	; 1 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	getkey@flag
getkey@flag:	; 2 bytes @ 0x0
	ds	2
	global	getkey@colVar
getkey@colVar:	; 1 bytes @ 0x2
	ds	1
	global	getkey@rowVar
getkey@rowVar:	; 1 bytes @ 0x3
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80      4      15
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_getkey
;;   _putchar->___awdiv
;;   _getkey->___awdiv
;;   _lcd_clear->_DelayMs
;;   _lcd_init->_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_getkey
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
;; (0) _main                                                 1     1      0    2506
;;                                             12 COMMON     1     1      0
;;                            _DelayMs
;;                           _lcd_init
;;                          _lcd_clear
;;                             _getkey
;;                            _putchar
;; ---------------------------------------------------------------------------------
;; (1) _putchar                                              2     2      0    1588
;;                                              9 COMMON     2     2      0
;;                          _lcd_clear
;;                          _lcd_putch
;;                            _putchar
;;                             ___wmul
;;                            ___awdiv
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
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _lcd_write                                            3     3      0      67
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_putch                                            5     5      0      89
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              4     4      0      68
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
;;   _getkey
;;     _DelayMs
;;     ___awdiv
;;   _putchar
;;     _lcd_clear
;;       _lcd_write
;;       _DelayMs
;;     _lcd_putch
;;     ___wmul
;;     ___awdiv
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      1D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      4       F       5       18.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      21      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
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
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l4224:	
;key.c: 19: nRBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	20
	
l4226:	
;key.c: 20: TRISE = 0;
	clrf	(137)^080h	;volatile
	line	21
;key.c: 21: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	22
;key.c: 22: TRISD = 0;
	clrf	(136)^080h	;volatile
	line	23
	
l4228:	
;key.c: 23: ADCON1 = 7;
	movlw	(07h)
	movwf	(159)^080h	;volatile
	line	24
	
l4230:	
;key.c: 24: RE2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	25
	
l4232:	
;key.c: 25: DelayMs(100);
	movlw	(064h)
	fcall	_DelayMs
	line	26
	
l4234:	
;key.c: 26: lcd_init();
	fcall	_lcd_init
	line	27
	
l4236:	
;key.c: 27: lcd_clear();
	fcall	_lcd_clear
	line	28
	
l4238:	
;key.c: 28: op = '.';
	movlw	(02Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_op)
	goto	l4240
	line	30
;key.c: 30: while(1)
	
l721:	
	line	32
	
l4240:	
;key.c: 31: {
;key.c: 32: getkey();
	fcall	_getkey
	line	33
	
l4242:	
;key.c: 33: Chkey = (char) pressed_key;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pressed_key),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_Chkey)
	line	34
	
l4244:	
;key.c: 34: Chkey += 48;
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_Chkey),f
	line	35
	
l4246:	
;key.c: 35: putchar((char)Chkey);
	movf	(_Chkey),w
	fcall	_putchar
	goto	l4240
	line	37
	
l722:	
	line	30
	goto	l4240
	
l723:	
	line	39
	
l724:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_putchar
psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:

;; *************** function _putchar *****************
;; Defined at:
;;		line 123 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   10[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_clear
;;		_lcd_putch
;;		_putchar
;;		___wmul
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text257
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
	line	123
	global	__size_of_putchar
	__size_of_putchar	equ	__end_of_putchar-_putchar
	
_putchar:	
	opt	stack 5
; Regs used in _putchar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;putchar@ch stored from wreg
	line	127
	movwf	(putchar@ch)
	
l4066:	
;key.c: 127: if(ch=='1')
	movf	(putchar@ch),w
	xorlw	031h
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l4070
u3120:
	line	129
	
l4068:	
;key.c: 128: {
;key.c: 129: lcd_clear();
	fcall	_lcd_clear
	line	130
;key.c: 130: }
	goto	l812
	line	131
	
l753:	
	
l4070:	
;key.c: 131: else if(ch=='2')
	movf	(putchar@ch),w
	xorlw	032h
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l4080
u3130:
	line	133
	
l4072:	
;key.c: 132: {
;key.c: 133: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l4076
u3140:
	line	134
	
l4074:	
;key.c: 134: x1 = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(01h)
	movwf	((_x1))+1
	goto	l4078
	line	135
	
l756:	
	line	136
	
l4076:	
;key.c: 135: else
;key.c: 136: x2 = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(01h)
	movwf	((_x2))+1
	goto	l4078
	
l757:	
	line	137
	
l4078:	
;key.c: 137: lcd_putch('1');
	movlw	(031h)
	fcall	_lcd_putch
	line	138
;key.c: 138: }
	goto	l812
	line	139
	
l755:	
	
l4080:	
;key.c: 139: else if(ch=='3')
	movf	(putchar@ch),w
	xorlw	033h
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l4090
u3150:
	line	141
	
l4082:	
;key.c: 140: {
;key.c: 141: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l4086
u3160:
	line	142
	
l4084:	
;key.c: 142: x1 = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(04h)
	movwf	((_x1))+1
	goto	l4088
	line	143
	
l760:	
	line	144
	
l4086:	
;key.c: 143: else
;key.c: 144: x2 = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(04h)
	movwf	((_x2))+1
	goto	l4088
	
l761:	
	line	145
	
l4088:	
;key.c: 145: lcd_putch('4');
	movlw	(034h)
	fcall	_lcd_putch
	line	146
;key.c: 146: }
	goto	l812
	line	147
	
l759:	
	
l4090:	
;key.c: 147: else if(ch=='4')
	movf	(putchar@ch),w
	xorlw	034h
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l4100
u3170:
	line	149
	
l4092:	
;key.c: 148: {
;key.c: 149: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l4096
u3180:
	line	150
	
l4094:	
;key.c: 150: x1 = 7;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(07h)
	movwf	((_x1))+1
	goto	l4098
	line	151
	
l764:	
	line	152
	
l4096:	
;key.c: 151: else
;key.c: 152: x2 = 7;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(07h)
	movwf	((_x2))+1
	goto	l4098
	
l765:	
	line	153
	
l4098:	
;key.c: 153: lcd_putch('7');
	movlw	(037h)
	fcall	_lcd_putch
	line	154
;key.c: 154: }
	goto	l812
	line	155
	
l763:	
	
l4100:	
;key.c: 155: else if(ch=='5')
	movf	(putchar@ch),w
	xorlw	035h
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l4110
u3190:
	line	157
	
l4102:	
;key.c: 156: {
;key.c: 157: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l4106
u3200:
	line	158
	
l4104:	
;key.c: 158: x1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x1)
	clrf	(_x1+1)
	goto	l4108
	line	159
	
l768:	
	line	160
	
l4106:	
;key.c: 159: else
;key.c: 160: x2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x2)
	clrf	(_x2+1)
	goto	l4108
	
l769:	
	line	161
	
l4108:	
;key.c: 161: lcd_putch('0');
	movlw	(030h)
	fcall	_lcd_putch
	line	162
;key.c: 162: }
	goto	l812
	line	163
	
l767:	
	
l4110:	
;key.c: 163: else if(ch=='6')
	movf	(putchar@ch),w
	xorlw	036h
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l4120
u3210:
	line	165
	
l4112:	
;key.c: 164: {
;key.c: 165: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l4116
u3220:
	line	166
	
l4114:	
;key.c: 166: x1 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(02h)
	movwf	((_x1))+1
	goto	l4118
	line	167
	
l772:	
	line	168
	
l4116:	
;key.c: 167: else
;key.c: 168: x2 = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(02h)
	movwf	((_x2))+1
	goto	l4118
	
l773:	
	line	169
	
l4118:	
;key.c: 169: lcd_putch('2');
	movlw	(032h)
	fcall	_lcd_putch
	line	170
;key.c: 170: }
	goto	l812
	line	171
	
l771:	
	
l4120:	
;key.c: 171: else if(ch=='7')
	movf	(putchar@ch),w
	xorlw	037h
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l4130
u3230:
	line	173
	
l4122:	
;key.c: 172: {
;key.c: 173: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l4126
u3240:
	line	174
	
l4124:	
;key.c: 174: x1 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(06h)
	movwf	((_x1))+1
	goto	l4128
	line	175
	
l776:	
	line	176
	
l4126:	
;key.c: 175: else
;key.c: 176: x2 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(06h)
	movwf	((_x2))+1
	goto	l4128
	
l777:	
	line	177
	
l4128:	
;key.c: 177: lcd_putch('5');
	movlw	(035h)
	fcall	_lcd_putch
	line	178
;key.c: 178: }
	goto	l812
	line	179
	
l775:	
	
l4130:	
;key.c: 179: else if(ch=='8')
	movf	(putchar@ch),w
	xorlw	038h
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l4140
u3250:
	line	181
	
l4132:	
;key.c: 180: {
;key.c: 181: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l4136
u3260:
	line	182
	
l4134:	
;key.c: 182: x1 = 8;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(08h)
	movwf	((_x1))+1
	goto	l4138
	line	183
	
l780:	
	line	184
	
l4136:	
;key.c: 183: else
;key.c: 184: x2 = 8;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(08h)
	movwf	((_x2))+1
	goto	l4138
	
l781:	
	line	185
	
l4138:	
;key.c: 185: lcd_putch('8');
	movlw	(038h)
	fcall	_lcd_putch
	line	186
;key.c: 186: }
	goto	l812
	line	187
	
l779:	
	
l4140:	
;key.c: 187: else if(ch=='9')
	movf	(putchar@ch),w
	xorlw	039h
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l4168
u3270:
	line	189
	
l4142:	
;key.c: 188: {
;key.c: 189: lcd_putch('=');
	movlw	(03Dh)
	fcall	_lcd_putch
	line	190
;key.c: 190: switch(op)
	goto	l4166
	line	193
;key.c: 191: {
;key.c: 193: case '+': x1+=x2;
	
l785:	
	
l4144:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_x2),w
	addwf	(_x1),f
	skipnc
	incf	(_x1+1),f
	movf	(_x2+1),w
	addwf	(_x1+1),f
	line	194
;key.c: 194: x1+=48;
	movlw	low(030h)
	addwf	(_x1),f
	skipnc
	incf	(_x1+1),f
	movlw	high(030h)
	addwf	(_x1+1),f
	line	195
	
l4146:	
;key.c: 195: putchar((char)x1);
	movf	(_x1),w
	fcall	_putchar
	line	196
;key.c: 196: break;
	goto	l812
	line	197
;key.c: 197: case '-': x1-=x2;
	
l787:	
	
l4148:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_x2),w
	subwf	(_x1),f
	movf	(_x2+1),w
	skipc
	decf	(_x1+1),f
	subwf	(_x1+1),f
	line	198
;key.c: 198: x1+=48;
	movlw	low(030h)
	addwf	(_x1),f
	skipnc
	incf	(_x1+1),f
	movlw	high(030h)
	addwf	(_x1+1),f
	line	199
	
l4150:	
;key.c: 199: putchar((char)x1);
	movf	(_x1),w
	fcall	_putchar
	line	200
;key.c: 200: break;
	goto	l812
	line	201
;key.c: 201: case 'x': x1*=x2;
	
l788:	
	
l4152:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_x2+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(_x2),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movf	(_x1+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(_x1),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x1+1)
	addwf	(_x1+1)
	movf	(0+(?___wmul)),w
	clrf	(_x1)
	addwf	(_x1)

	line	202
	
l4154:	
;key.c: 202: x1+=48;
	movlw	low(030h)
	addwf	(_x1),f
	skipnc
	incf	(_x1+1),f
	movlw	high(030h)
	addwf	(_x1+1),f
	line	203
	
l4156:	
;key.c: 203: putchar((char)x1);
	movf	(_x1),w
	fcall	_putchar
	line	204
;key.c: 204: break;
	goto	l812
	line	205
;key.c: 205: case '/': x1/=x2;
	
l789:	
	
l4158:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_x2+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(_x2),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	movf	(_x1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_x1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_x1+1)
	addwf	(_x1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_x1)
	addwf	(_x1)

	line	206
	
l4160:	
;key.c: 206: x1+=48;
	movlw	low(030h)
	addwf	(_x1),f
	skipnc
	incf	(_x1+1),f
	movlw	high(030h)
	addwf	(_x1+1),f
	line	207
	
l4162:	
;key.c: 207: putchar((char)x1);
	movf	(_x1),w
	fcall	_putchar
	line	208
;key.c: 208: break;
	goto	l812
	line	209
;key.c: 209: default: break;
	
l790:	
	goto	l812
	line	210
	
l4164:	
;key.c: 210: }
	goto	l812
	line	190
	
l784:	
	
l4166:	
	movf	(_op),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 43 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte          245    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	43^0	; case 43
	skipnz
	goto	l4144
	xorlw	45^43	; case 45
	skipnz
	goto	l4148
	xorlw	47^45	; case 47
	skipnz
	goto	l4158
	xorlw	120^47	; case 120
	skipnz
	goto	l4152
	goto	l812
	opt asmopt_on

	line	210
	
l786:	
	line	211
;key.c: 211: }
	goto	l812
	line	212
	
l783:	
	
l4168:	
;key.c: 212: else if(ch==':')
	movf	(putchar@ch),w
	xorlw	03Ah
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l4178
u3280:
	line	214
	
l4170:	
;key.c: 213: {
;key.c: 214: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l4174
u3290:
	line	215
	
l4172:	
;key.c: 215: x1 = 3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(03h)
	movwf	((_x1))+1
	goto	l4176
	line	216
	
l793:	
	line	217
	
l4174:	
;key.c: 216: else
;key.c: 217: x2 = 3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(03h)
	movwf	((_x2))+1
	goto	l4176
	
l794:	
	line	218
	
l4176:	
;key.c: 218: lcd_putch('3');
	movlw	(033h)
	fcall	_lcd_putch
	line	219
;key.c: 219: }
	goto	l812
	line	220
	
l792:	
	
l4178:	
;key.c: 220: else if(ch==';')
	movf	(putchar@ch),w
	xorlw	03Bh
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l4188
u3300:
	line	222
	
l4180:	
;key.c: 221: {
;key.c: 222: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l4184
u3310:
	line	223
	
l4182:	
;key.c: 223: x1 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(06h)
	movwf	((_x1))+1
	goto	l4186
	line	224
	
l797:	
	line	225
	
l4184:	
;key.c: 224: else
;key.c: 225: x2 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(06h)
	movwf	((_x2))+1
	goto	l4186
	
l798:	
	line	226
	
l4186:	
;key.c: 226: lcd_putch('6');
	movlw	(036h)
	fcall	_lcd_putch
	line	227
;key.c: 227: }
	goto	l812
	line	228
	
l796:	
	
l4188:	
;key.c: 228: else if(ch=='<')
	movf	(putchar@ch),w
	xorlw	03Ch
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l4198
u3320:
	line	230
	
l4190:	
;key.c: 229: {
;key.c: 230: if(op == '.')
	movf	(_op),w
	xorlw	02Eh
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l4194
u3330:
	line	231
	
l4192:	
;key.c: 231: x1 = 9;
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x1)
	movlw	high(09h)
	movwf	((_x1))+1
	goto	l4196
	line	232
	
l801:	
	line	233
	
l4194:	
;key.c: 232: else
;key.c: 233: x2 = 9;
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x2)
	movlw	high(09h)
	movwf	((_x2))+1
	goto	l4196
	
l802:	
	line	234
	
l4196:	
;key.c: 234: lcd_putch('9');
	movlw	(039h)
	fcall	_lcd_putch
	line	235
;key.c: 235: }
	goto	l812
	line	236
	
l800:	
	
l4198:	
;key.c: 236: else if(ch=='=')
	movf	(putchar@ch),w
	xorlw	03Dh
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l4204
u3340:
	line	238
	
l4200:	
;key.c: 237: {
;key.c: 238: op = '+';
	movlw	(02Bh)
	movwf	(??_putchar+0)+0
	movf	(??_putchar+0)+0,w
	movwf	(_op)
	line	239
	
l4202:	
;key.c: 239: lcd_putch('+');
	movlw	(02Bh)
	fcall	_lcd_putch
	line	240
;key.c: 240: }
	goto	l812
	line	241
	
l804:	
	
l4204:	
;key.c: 241: else if(ch=='>')
	movf	(putchar@ch),w
	xorlw	03Eh
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l4210
u3350:
	line	243
	
l4206:	
;key.c: 242: {
;key.c: 243: op = '-';
	movlw	(02Dh)
	movwf	(??_putchar+0)+0
	movf	(??_putchar+0)+0,w
	movwf	(_op)
	line	244
	
l4208:	
;key.c: 244: lcd_putch('-');
	movlw	(02Dh)
	fcall	_lcd_putch
	line	245
;key.c: 245: }
	goto	l812
	line	246
	
l806:	
	
l4210:	
;key.c: 246: else if(ch=='?')
	movf	(putchar@ch),w
	xorlw	03Fh
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l4216
u3360:
	line	248
	
l4212:	
;key.c: 247: {
;key.c: 248: op = 'x';
	movlw	(078h)
	movwf	(??_putchar+0)+0
	movf	(??_putchar+0)+0,w
	movwf	(_op)
	line	249
	
l4214:	
;key.c: 249: lcd_putch('x');
	movlw	(078h)
	fcall	_lcd_putch
	line	250
;key.c: 250: }
	goto	l812
	line	251
	
l808:	
	
l4216:	
;key.c: 251: else if(ch=='@')
	movf	(putchar@ch),w
	xorlw	040h
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l4222
u3370:
	line	253
	
l4218:	
;key.c: 252: {
;key.c: 253: op='/';
	movlw	(02Fh)
	movwf	(??_putchar+0)+0
	movf	(??_putchar+0)+0,w
	movwf	(_op)
	line	254
	
l4220:	
;key.c: 254: lcd_putch('/');
	movlw	(02Fh)
	fcall	_lcd_putch
	line	255
;key.c: 255: }
	goto	l812
	line	256
	
l810:	
	line	257
	
l4222:	
;key.c: 256: else
;key.c: 257: lcd_putch(ch);
	movf	(putchar@ch),w
	fcall	_lcd_putch
	goto	l812
	
l811:	
	goto	l812
	
l809:	
	goto	l812
	
l807:	
	goto	l812
	
l805:	
	goto	l812
	
l803:	
	goto	l812
	
l799:	
	goto	l812
	
l795:	
	goto	l812
	
l791:	
	goto	l812
	
l782:	
	goto	l812
	
l778:	
	goto	l812
	
l774:	
	goto	l812
	
l770:	
	goto	l812
	
l766:	
	goto	l812
	
l762:	
	goto	l812
	
l758:	
	goto	l812
	
l754:	
	line	258
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of_putchar
	__end_of_putchar:
;; =============== function _putchar ends ============

	signat	_putchar,4216
	global	_getkey
psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:

;; *************** function _getkey *****************
;; Defined at:
;;		line 42 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
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
psect	text258
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\key.c"
	line	42
	global	__size_of_getkey
	__size_of_getkey	equ	__end_of_getkey-_getkey
	
_getkey:	
	opt	stack 6
; Regs used in _getkey: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	44
	
l3996:	
;key.c: 43: char colVar, rowVar;
;key.c: 44: int flag=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(getkey@flag)
	clrf	(getkey@flag+1)
	line	45
	
l3998:	
;key.c: 45: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l4000
	line	48
;key.c: 48: do {
	
l727:	
	line	49
	
l4000:	
;key.c: 49: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	50
	
l4002:	
;key.c: 50: TRISB = 0xf0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	51
	
l4004:	
;key.c: 51: } while ( (PORTB >> 4) != 0xf );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u2975:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u2975
	movf	0+(??_getkey+0)+0,w
	xorlw	0Fh
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l4000
u2980:
	goto	l4006
	
l728:	
	line	53
	
l4006:	
;key.c: 53: DelayMs(50);
	movlw	(032h)
	fcall	_DelayMs
	goto	l4008
	line	56
;key.c: 56: while (1)
	
l729:	
	line	58
	
l4008:	
;key.c: 57: {
;key.c: 58: if ( flag == 1 ){
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(getkey@flag),w
	iorwf	(getkey@flag+1),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l4012
u2990:
	goto	l4046
	line	59
	
l4010:	
;key.c: 59: break;
	goto	l4046
	line	60
	
l730:	
	line	63
	
l4012:	
;key.c: 60: }
;key.c: 63: for ( col = 0; col < 4; col++ ) {
	clrf	(_col)
	clrf	(_col+1)
	
l4014:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3005
	movlw	low(04h)
	subwf	(_col),w
u3005:

	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l4018
u3000:
	goto	l4008
	
l4016:	
	goto	l4008
	
l732:	
	line	64
	
l4018:	
;key.c: 64: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	70
	
l4020:	
;key.c: 70: if ( col == 0 ){
	movf	((_col+1)),w
	iorwf	((_col)),w
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l4024
u3010:
	line	71
	
l4022:	
;key.c: 71: colVar = 1;
	clrf	(getkey@colVar)
	bsf	status,0
	rlf	(getkey@colVar),f
	line	72
;key.c: 72: }
	goto	l4034
	line	73
	
l734:	
	
l4024:	
;key.c: 73: else if ( col == 1 ){
	movlw	01h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l4028
u3020:
	line	74
	
l4026:	
;key.c: 74: colVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	75
;key.c: 75: }
	goto	l4034
	line	76
	
l736:	
	
l4028:	
;key.c: 76: else if ( col == 2 ){
	movlw	02h
	xorwf	(_col),w
	iorwf	(_col+1),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l4032
u3030:
	line	77
	
l4030:	
;key.c: 77: colVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	line	78
;key.c: 78: }
	goto	l4034
	line	79
	
l738:	
	line	80
	
l4032:	
;key.c: 79: else{
;key.c: 80: colVar = 8;
	movlw	(08h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@colVar)
	goto	l4034
	line	81
	
l739:	
	goto	l4034
	
l737:	
	goto	l4034
	
l735:	
	line	84
	
l4034:	
;key.c: 81: }
;key.c: 84: TRISB = colVar ^ 0xff;
	comf	(getkey@colVar),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	87
	
l4036:	
;key.c: 87: row = PORTB >> 4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_getkey+0)+0
	movlw	04h
u3045:
	clrc
	rrf	(??_getkey+0)+0,f
	addlw	-1
	skipz
	goto	u3045
	movf	0+(??_getkey+0)+0,w
	movwf	(??_getkey+1)+0
	clrf	(??_getkey+1)+0+1
	movf	0+(??_getkey+1)+0,w
	movwf	(_row)
	movf	1+(??_getkey+1)+0,w
	movwf	(_row+1)
	line	90
	
l4038:	
;key.c: 90: if ( row != 0xf ) {
	movlw	0Fh
	xorwf	(_row),w
	iorwf	(_row+1),w
	skipnz
	goto	u3051
	goto	u3050
u3051:
	goto	l4042
u3050:
	line	91
	
l4040:	
;key.c: 91: flag = 1;
	movlw	low(01h)
	movwf	(getkey@flag)
	movlw	high(01h)
	movwf	((getkey@flag))+1
	line	92
;key.c: 92: break;
	goto	l4008
	line	93
	
l740:	
	line	63
	
l4042:	
	movlw	low(01h)
	addwf	(_col),f
	skipnc
	incf	(_col+1),f
	movlw	high(01h)
	addwf	(_col+1),f
	
l4044:	
	movf	(_col+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3065
	movlw	low(04h)
	subwf	(_col),w
u3065:

	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l4018
u3060:
	goto	l4008
	
l733:	
	goto	l4008
	line	95
	
l741:	
	line	56
	goto	l4008
	
l731:	
	line	99
	
l4046:	
;key.c: 93: }
;key.c: 94: }
;key.c: 95: }
;key.c: 99: rowVar = row ^ 0xf;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_row),w
	xorlw	0Fh
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	movwf	(getkey@rowVar)
	line	101
	
l4048:	
;key.c: 101: if ( (rowVar / 8) == 1 ){
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
	goto	u3071
	goto	u3070
u3071:
	goto	l4052
u3070:
	line	102
	
l4050:	
;key.c: 102: rowVar = 4;
	movlw	(04h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	103
;key.c: 103: }
	goto	l4064
	line	104
	
l742:	
	
l4052:	
;key.c: 104: else if ( (rowVar / 4) == 1 ){
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
	goto	u3081
	goto	u3080
u3081:
	goto	l4056
u3080:
	line	105
	
l4054:	
;key.c: 105: rowVar = 3;
	movlw	(03h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	106
;key.c: 106: }
	goto	l4064
	line	107
	
l744:	
	
l4056:	
;key.c: 107: else if ( (rowVar / 2) == 1 ){
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
	goto	u3091
	goto	u3090
u3091:
	goto	l4060
u3090:
	line	108
	
l4058:	
;key.c: 108: rowVar = 2;
	movlw	(02h)
	movwf	(??_getkey+0)+0
	movf	(??_getkey+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(getkey@rowVar)
	line	109
;key.c: 109: }
	goto	l4064
	line	110
	
l746:	
	
l4060:	
;key.c: 110: else if ( rowVar == 1 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(getkey@rowVar),w
	xorlw	01h
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l748
u3100:
	line	111
	
l4062:	
;key.c: 111: rowVar = 1;
	clrf	(getkey@rowVar)
	bsf	status,0
	rlf	(getkey@rowVar),f
	line	112
;key.c: 112: }
	goto	l4064
	line	113
	
l748:	
	line	114
;key.c: 113: else{
;key.c: 114: rowVar = 0;
	clrf	(getkey@rowVar)
	goto	l4064
	line	115
	
l749:	
	goto	l4064
	
l747:	
	goto	l4064
	
l745:	
	goto	l4064
	
l743:	
	line	118
	
l4064:	
;key.c: 115: }
;key.c: 118: pressed_key = (col * 4) + rowVar;
	movf	(_col+1),w
	movwf	(??_getkey+0)+0+1
	movf	(_col),w
	movwf	(??_getkey+0)+0
	movlw	02h
	movwf	btemp+1
u3115:
	clrc
	rlf	(??_getkey+0)+0,f
	rlf	(??_getkey+0)+1,f
	decfsz	btemp+1,f
	goto	u3115
	movf	(getkey@rowVar),w
	addwf	0+(??_getkey+0)+0,w
	movwf	(_pressed_key)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_getkey+0)+0,w
	movwf	1+(_pressed_key)
	line	119
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_getkey
	__end_of_getkey:
;; =============== function _getkey ends ============

	signat	_getkey,88
	global	_lcd_clear
psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 31 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
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
psect	text259
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
	line	31
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 5
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l3992:	
;lcd.c: 32: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	33
	
l3994:	
;lcd.c: 33: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	34
;lcd.c: 34: DelayMs(2);
	movlw	(02h)
	fcall	_DelayMs
	line	35
	
l1505:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_init
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 58 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
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
psect	text260
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
	line	58
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l3960:	
;lcd.c: 59: RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	60
	
l3962:	
;lcd.c: 60: DelayMs(15);
	movlw	(0Fh)
	fcall	_DelayMs
	line	61
	
l3964:	
;lcd.c: 61: PORTD = (0x3 << 4);
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	62
	
l3966:	
;lcd.c: 62: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3968:	
	bcf	(73/8),(73)&7
	line	63
	
l3970:	
;lcd.c: 63: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	64
	
l3972:	
;lcd.c: 64: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l3974:	
	bcf	(73/8),(73)&7
	line	65
;lcd.c: 65: { unsigned char _dcnt; _dcnt = (100)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(021h)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt)
	goto	l3976
	
l1524:	
	goto	l3976
	
l1523:	
	
l3976:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3976
u2950:
	
l1525:	
	line	66
;lcd.c: 66: ((RE1 = 1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	bcf	(73/8),(73)&7
	line	67
	
l3978:	
;lcd.c: 67: DelayMs(5);
	movlw	(05h)
	fcall	_DelayMs
	line	68
	
l3980:	
;lcd.c: 68: PORTD = (0x2 << 4);
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	69
	
l3982:	
;lcd.c: 69: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3984:	
	bcf	(73/8),(73)&7
	line	70
	
l3986:	
;lcd.c: 70: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_init+0)+0
	movf	(??_lcd_init+0)+0,w
	movwf	(lcd_init@_dcnt_2105)
	goto	l3988
	
l1527:	
	goto	l3988
	
l1526:	
	
l3988:	
	movlw	low(01h)
	subwf	(lcd_init@_dcnt_2105),f
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3988
u2960:
	goto	l3990
	
l1528:	
	line	71
	
l3990:	
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
	
l1529:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	___awdiv
psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:

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
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text261
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3920:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2851
	goto	u2850
u2851:
	goto	l3924
u2850:
	line	11
	
l3922:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3924
	line	13
	
l2352:	
	line	14
	
l3924:	
	btfss	(___awdiv@dividend+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l3930
u2860:
	line	15
	
l3926:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3928:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3930
	line	17
	
l2353:	
	line	18
	
l3930:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3932:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l3952
u2870:
	line	20
	
l3934:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3940
	
l2356:	
	line	22
	
l3936:	
	movlw	01h
	
u2885:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2885
	line	23
	
l3938:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3940
	line	24
	
l2355:	
	line	21
	
l3940:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l3936
u2890:
	goto	l3942
	
l2357:	
	goto	l3942
	line	25
	
l2358:	
	line	26
	
l3942:	
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
	goto	l3948
u2910:
	line	28
	
l3944:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3946:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3948
	line	30
	
l2359:	
	line	31
	
l3948:	
	movlw	01h
	
u2925:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2925
	line	32
	
l3950:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3942
u2930:
	goto	l3952
	
l2360:	
	goto	l3952
	line	33
	
l2354:	
	line	34
	
l3952:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2940
	goto	l3956
u2940:
	line	35
	
l3954:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3956
	
l2361:	
	line	36
	
l3956:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l2362
	
l3958:	
	line	37
	
l2362:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:

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
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text262
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3908:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3910
	line	6
	
l2212:	
	line	7
	
l3910:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2213
u2810:
	line	8
	
l3912:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l2213:	
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
	
l3914:	
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
	goto	l3910
u2840:
	goto	l3916
	
l2214:	
	line	12
	
l3916:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l2215
	
l3918:	
	line	13
	
l2215:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_lcd_write
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 23 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
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
;;		_lcd_init
;;		_lcd_puts
;;		_lcd_goto
;; This function uses a non-reentrant model
;;
psect	text263
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
	line	23
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 5
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	24
	
l3882:	
;lcd.c: 24: PORTD = (PORTD & 0x0F) | (c);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	(lcd_write@c),w
	movwf	(8)	;volatile
	line	25
	
l3884:	
;lcd.c: 25: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3886:	
	bcf	(73/8),(73)&7
	line	26
;lcd.c: 26: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_write@c),w
	movwf	(??_lcd_write+0)+0
	movlw	04h
u2785:
	clrc
	rlf	(??_lcd_write+0)+0,f
	addlw	-1
	skipz
	goto	u2785
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_write+0)+0,w
	movwf	(8)	;volatile
	line	27
	
l3888:	
;lcd.c: 27: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3890:	
	bcf	(73/8),(73)&7
	line	28
	
l3892:	
;lcd.c: 28: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_write+0)+0
	movf	(??_lcd_write+0)+0,w
	movwf	(lcd_write@_dcnt)
	goto	l3894
	
l1500:	
	goto	l3894
	
l1499:	
	
l3894:	
	movlw	low(01h)
	subwf	(lcd_write@_dcnt),f
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l3894
u2790:
	goto	l1502
	
l1501:	
	line	29
	
l1502:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_lcd_putch
psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 43 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
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
;;		_putchar
;; This function uses a non-reentrant model
;;
psect	text264
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\lcd.c"
	line	43
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 6
; Regs used in _lcd_putch: [wreg+status,2+status,0]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	44
	
l3866:	
;lcd.c: 44: RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	45
	
l3868:	
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
	
l3870:	
;lcd.c: 47: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3872:	
	bcf	(73/8),(73)&7
	line	48
;lcd.c: 48: PORTD = (PORTD & 0x0F) | (c << 4);
	movf	(lcd_putch@c),w
	movwf	(??_lcd_putch+0)+0
	movlw	04h
u2765:
	clrc
	rlf	(??_lcd_putch+0)+0,f
	addlw	-1
	skipz
	goto	u2765
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_lcd_putch+0)+0,w
	movwf	(8)	;volatile
	line	49
	
l3874:	
;lcd.c: 49: ((RE1 = 1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3876:	
	bcf	(73/8),(73)&7
	line	50
	
l3878:	
;lcd.c: 50: { unsigned char _dcnt; _dcnt = (40)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(0Dh)
	movwf	(??_lcd_putch+0)+0
	movf	(??_lcd_putch+0)+0,w
	movwf	(lcd_putch@_dcnt)
	goto	l3880
	
l1515:	
	goto	l3880
	
l1514:	
	
l3880:	
	movlw	low(01h)
	subwf	(lcd_putch@_dcnt),f
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l3880
u2770:
	goto	l1517
	
l1516:	
	line	51
	
l1517:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_DelayMs
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\delay.c"
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
psect	text265
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp2\Exp2_code\Task2(Keypad+LCD)[calculator]\delay.c"
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
	
l3858:	
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
	goto	l3860
	
l6:	
	goto	l3860
	
l5:	
	
l3860:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l3860
u2730:
	goto	l3862
	
l7:	
	line	24
	
l3862:	
;delay.c: 24: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l4
u2740:
	goto	l3864
	
l8:	
	line	25
	
l3864:	
;delay.c: 25: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l3
u2750:
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
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
