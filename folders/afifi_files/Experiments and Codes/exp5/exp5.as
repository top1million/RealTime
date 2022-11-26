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
# 3 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_InitMain
	FNROOT	_main
	FNCALL	intlevel1,_IntVector
	global	intlevel1
	FNROOT	intlevel1
	global	_display_digit
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
	line	5

;initializer for _display_digit
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_d1
	global	_d1Counter
	global	_d2
	global	_d2Counter
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_TMR0
_TMR0	set	1
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_T0IE
_T0IE	set	93
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
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
	file	"exp5.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_d1:
       ds      2

_d1Counter:
       ds      2

_d2:
       ds      2

_d2Counter:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
_display_digit:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitMain
?_InitMain:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_IntVector
?_IntVector:	; 0 bytes @ 0x0
	global	??_IntVector
??_IntVector:	; 0 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_InitMain
??_InitMain:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 10, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4      12
;; BANK0           80      0      10
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
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;;                           _InitMain
;; ---------------------------------------------------------------------------------
;; (1) _InitMain                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _IntVector                                            4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitMain
;;
;; _IntVector (ROOT)
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
;;DATA                 0      0      17      12        0.0%
;;ABS                  0      0      16       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_InitMain
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	20
	
l2696:	
;counter.c: 20: InitMain();
	fcall	_InitMain
	line	22
	
l2698:	
;counter.c: 22: GIE=1;
	bsf	(95/8),(95)&7
	line	23
	
l2700:	
;counter.c: 23: T0IE = 1;
	bsf	(93/8),(93)&7
	line	26
	
l2702:	
;counter.c: 26: TMR0 =61;
	movlw	(03Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	27
	
l2704:	
;counter.c: 27: OPTION_REG = 0x47;
	movlw	(047h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	28
	
l2706:	
;counter.c: 28: PORTB= display_digit[d1];
	movf	(_d1),w
	addlw	_display_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l2708:	
;counter.c: 29: PORTD= display_digit[d2];
	movf	(_d2),w
	addlw	_display_digit&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	goto	l2710
	line	30
;counter.c: 30: while (1) {
	
l698:	
	line	31
	
l2710:	
;counter.c: 31: if(d1Counter==20){
	movlw	014h
	xorwf	(_d1Counter),w
	iorwf	(_d1Counter+1),w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2720
u2320:
	line	32
	
l2712:	
;counter.c: 32: d1++;
	movlw	low(01h)
	addwf	(_d1),f
	skipnc
	incf	(_d1+1),f
	movlw	high(01h)
	addwf	(_d1+1),f
	line	33
;counter.c: 33: if(d1==10) d1=0;
	movlw	0Ah
	xorwf	(_d1),w
	iorwf	(_d1+1),w
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2716
u2330:
	
l2714:	
	clrf	(_d1)
	clrf	(_d1+1)
	goto	l2716
	
l700:	
	line	34
	
l2716:	
;counter.c: 34: PORTB= display_digit[d1];
	movf	(_d1),w
	addlw	_display_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
	
l2718:	
;counter.c: 35: d1Counter=0;
	clrf	(_d1Counter)
	clrf	(_d1Counter+1)
	goto	l2720
	line	36
	
l699:	
	line	37
	
l2720:	
;counter.c: 36: }
;counter.c: 37: if(d2Counter==200){
	movlw	0C8h
	xorwf	(_d2Counter),w
	iorwf	(_d2Counter+1),w
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2710
u2340:
	line	38
	
l2722:	
;counter.c: 38: d2++;
	movlw	low(01h)
	addwf	(_d2),f
	skipnc
	incf	(_d2+1),f
	movlw	high(01h)
	addwf	(_d2+1),f
	line	39
;counter.c: 39: if(d2==10) d2=0;
	movlw	0Ah
	xorwf	(_d2),w
	iorwf	(_d2+1),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2726
u2350:
	
l2724:	
	clrf	(_d2)
	clrf	(_d2+1)
	goto	l2726
	
l702:	
	line	40
	
l2726:	
;counter.c: 40: PORTD= display_digit[d2];
	movf	(_d2),w
	addlw	_display_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	41
	
l2728:	
;counter.c: 41: d2Counter=0;
	clrf	(_d2Counter)
	clrf	(_d2Counter+1)
	goto	l2710
	line	42
	
l701:	
	goto	l2710
	line	43
	
l703:	
	line	30
	goto	l2710
	
l704:	
	line	44
	
l705:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_InitMain
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:

;; *************** function _InitMain *****************
;; Defined at:
;;		line 11 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
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
psect	text141
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
	line	11
	global	__size_of_InitMain
	__size_of_InitMain	equ	__end_of_InitMain-_InitMain
	
_InitMain:	
	opt	stack 6
; Regs used in _InitMain: [status,2]
	line	12
	
l2694:	
;counter.c: 12: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	13
;counter.c: 13: PORTD = 0;
	clrf	(8)	;volatile
	line	14
;counter.c: 14: TRISB = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	15
;counter.c: 15: TRISD= 0;
	clrf	(136)^080h	;volatile
	line	16
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of_InitMain
	__end_of_InitMain:
;; =============== function _InitMain ends ============

	signat	_InitMain,88
	global	_IntVector
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

;; *************** function _IntVector *****************
;; Defined at:
;;		line 46 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
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
psect	text142
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp5\Codes\counter.c"
	line	46
	global	__size_of_IntVector
	__size_of_IntVector	equ	__end_of_IntVector-_IntVector
	
_IntVector:	
	opt	stack 6
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
psect	text142
	line	47
	
i1l1758:	
;counter.c: 47: if (T0IE && T0IF) {
	btfss	(93/8),(93)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l709
u1_20:
	
i1l1760:	
	btfss	(90/8),(90)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l709
u2_20:
	line	48
	
i1l1762:	
;counter.c: 48: T0IF = 0;
	bcf	(90/8),(90)&7
	line	49
	
i1l1764:	
;counter.c: 49: TMR0 =61;
	movlw	(03Dh)
	movwf	(1)	;volatile
	line	52
;counter.c: 52: d1Counter++;
	movlw	low(01h)
	addwf	(_d1Counter),f
	skipnc
	incf	(_d1Counter+1),f
	movlw	high(01h)
	addwf	(_d1Counter+1),f
	line	53
;counter.c: 53: d2Counter++;
	movlw	low(01h)
	addwf	(_d2Counter),f
	skipnc
	incf	(_d2Counter+1),f
	movlw	high(01h)
	addwf	(_d2Counter+1),f
	goto	i1l709
	line	54
	
i1l708:	
	line	55
	
i1l709:	
	movf	(??_IntVector+3),w
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
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
