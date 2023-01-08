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
# 4 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\ledf.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\ledf.c"
	dw 0xFFFF & 0xFFFB & 0xFF7F & 0xFFFE & 0xFFFF ;#
	FNCALL	_main,_DelaySec
	FNCALL	_DelaySec,_DelayMs
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_TRISB
_TRISB	set	134
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
	file	"ledsDemo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	ds	1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	ds	1
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x3
	ds	1
	global	?_DelaySec
?_DelaySec:	; 0 bytes @ 0x4
	global	DelaySec@sec
DelaySec@sec:	; 2 bytes @ 0x4
	ds	2
	global	??_DelaySec
??_DelaySec:	; 0 bytes @ 0x6
	ds	1
	global	DelaySec@i
DelaySec@i:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_DelaySec
;;   _DelaySec->_DelayMs
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0      75
;;                           _DelaySec
;; ---------------------------------------------------------------------------------
;; (1) _DelaySec                                             5     3      2      75
;;                                              4 COMMON     5     3      2
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     4      0      45
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DelaySec
;;     _DelayMs
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 9 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\ledf.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelaySec
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\ledf.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l2629:	
;ledf.c: 10: TRISB = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	11
;ledf.c: 11: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l2631
	line	13
;ledf.c: 13: while (1) {
	
l699:	
	line	15
	
l2631:	
;ledf.c: 15: PORTB=0b000000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	16
	
l2633:	
;ledf.c: 16: DelaySec(1);
	movlw	low(01h)
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	18
	
l2635:	
;ledf.c: 18: PORTB=0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	19
	
l2637:	
;ledf.c: 19: DelaySec(1);
	movlw	low(01h)
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	21
	
l2639:	
;ledf.c: 21: PORTB=0b000000100;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	22
	
l2641:	
;ledf.c: 22: DelaySec(1);
	movlw	low(01h)
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	line	24
	
l2643:	
;ledf.c: 24: PORTB=0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	25
	
l2645:	
;ledf.c: 25: DelaySec(1);
	movlw	low(01h)
	movwf	(?_DelaySec)
	movlw	high(01h)
	movwf	((?_DelaySec))+1
	fcall	_DelaySec
	goto	l2631
	line	27
	
l700:	
	line	13
	goto	l2631
	
l701:	
	line	29
	
l702:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_DelaySec
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function _DelaySec *****************
;; Defined at:
;;		line 32 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\ledf.c"
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
psect	text77
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\ledf.c"
	line	32
	global	__size_of_DelaySec
	__size_of_DelaySec	equ	__end_of_DelaySec-_DelaySec
	
_DelaySec:	
	opt	stack 6
; Regs used in _DelaySec: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l2621:	
;ledf.c: 33: for(int i=0;i<sec;i++)
	clrf	(DelaySec@i)
	clrf	(DelaySec@i+1)
	goto	l2627
	line	34
	
l706:	
	
l2623:	
;ledf.c: 34: DelayMs(1000);
	movlw	(0E8h)
	fcall	_DelayMs
	line	33
	
l2625:	
	movlw	low(01h)
	addwf	(DelaySec@i),f
	skipnc
	incf	(DelaySec@i+1),f
	movlw	high(01h)
	addwf	(DelaySec@i+1),f
	goto	l2627
	
l705:	
	
l2627:	
	movf	(DelaySec@i+1),w
	xorlw	80h
	movwf	(??_DelaySec+0)+0
	movf	(DelaySec@sec+1),w
	xorlw	80h
	subwf	(??_DelaySec+0)+0,w
	skipz
	goto	u2255
	movf	(DelaySec@sec),w
	subwf	(DelaySec@i),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2623
u2250:
	goto	l708
	
l707:	
	line	35
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_DelaySec
	__end_of_DelaySec:
;; =============== function _DelaySec ends ============

	signat	_DelaySec,4216
	global	_DelayMs
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 12 in file "C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\delay.c"
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
;;		_DelaySec
;; This function uses a non-reentrant model
;;
psect	text78
	file	"C:\Users\abdal\Desktop\University\Year 4\Second Semester\Real Time Lab\Experiments and Codes\exp1\ledsDemo\delay.c"
	line	12
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 6
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	21
;delay.c: 20: unsigned char i;
;delay.c: 21: do {
	
l3:	
	line	22
	
l1755:	
;delay.c: 22: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	23
;delay.c: 23: do {
	
l4:	
	line	24
;delay.c: 24: { unsigned char _dcnt; _dcnt = (250)/((12*1000L)/(4*1000L))|1; while(--_dcnt != 0) continue; };
	movlw	(053h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@_dcnt)
	goto	l1757
	
l6:	
	goto	l1757
	
l5:	
	
l1757:	
	movlw	low(01h)
	subwf	(DelayMs@_dcnt),f
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1757
u10:
	goto	l1759
	
l7:	
	line	25
	
l1759:	
;delay.c: 25: } while(--i);
	movlw	low(01h)
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l4
u20:
	goto	l1761
	
l8:	
	line	26
	
l1761:	
;delay.c: 26: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u31
	goto	u30
u31:
	goto	l3
u30:
	goto	l10
	
l9:	
	line	28
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
