;Abdallah Afifi 1182972
PROCESSOR 16F877A
;	Clock = XT 4MHz, standard fuse settings
	__CONFIG 0x3731
#INCLUDE "P16F877A.INC" 	; standard labels 	


read1	EQU	35	; first temp reading
read2	EQU	36	; second temp reading
read3	EQU	37	; third temp reading
avg2	EQU	38	; final avereage
count	EQU	30	; Counter for ADC setup delay
ADbin	EQU	31	; Binary input value
huns	EQU	32	; Hundreds digit in decimal value
tens	EQU	33	; Tens digit in decimal value
string	EQU	34	; Ones digit in decimal value


	ORG	0		; Default start address 
	NOP
	BCF INTCON,RBIF ; INTERRUPTS B0
	
	BANKSEL TRISB
	CLRF TRISB
	NOP
	BANKSEL PORTB
	CLRF PORTB
	NOP
	
	BANKSEL	TRISC		; Select bank 1
	CLRF	TRISC		; LED port is output
	NOP
	MOVLW	B'00000001'	; Analogue input setup code
	MOVWF	ADCON1		; Left justify result, 
				; Port A = analogue inputs

	BANKSEL PORTC		; Select bank 0
	CLRF	PORTD		; Clear display outputs
	MOVLW	B'01000001'	; Analogue input setup code
	MOVWF	ADCON0		; f/8, RA0, done, enable  

	goto start		; Initialise the display

	ORG 004
	BTFSS INTCON,RBIF	;CHECK IF INTERRUPT IS FROM B4-B7 IF IT IS THEN SKIP TO THE CALL
	CALL PAUSEISR	;RB0 is connected with Pause button
	GOTO Start  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
start	CALL	getADC		; read input
	CALL	condec		; convert to decimal
	CALL	comp		; compare the result
	CALL 	disp		; display the leds and buzzer if necessary
	GOTO	start		; jump to main loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

getADC	BSF	ADCON0,GO	; start ADC..
wait	BTFSC	ADCON0,GO	; ..and wait for finish
	GOTO	wait
	MOVF	ADRESH,W	; store result high byte
	RETURN		  		
;;;;;;;;;;;;;;;;;;;;;

INCLUDE	"LCDIS.INC"


; Scan keypad .............................................

keyin	MOVLW	00F		; deselect..
	MOVWF	PORTC		; ..all rows
	BCF	PORTC,0		; select row A
	CALL	onems		; wait output stable

	BTFSC	PORTC,4		; button 7?
	GOTO	b8		; no
	MOVLW	'7'		; yes
	MOVWF	Char		; load key code
	MOVLW	07		; and
	MOVWF	Kval		; key value
	RETURN

b8	BTFSC	PORTC,5		; button 8?
	GOTO	b9		; no
	MOVLW	'8'		; yes	
	MOVWF	Char
	MOVLW	08
	MOVWF	Kval
	RETURN
	
b9	BTFSC	PORTC,6		; button 9?
	GOTO	bd		; no
	MOVLW	'9'		; yes
	MOVWF	Char
	MOVLW	09
	MOVWF	Kval
	RETURN
	
bd	BTFSC	PORTC,7		; button /?
	GOTO	rowb		; no
	MOVLW	'/'		; yes
	MOVWF	Char		; store key code
	MOVWF	Oper		; store operator symbol
	RETURN

rowb	BSF	PORTC,0		; select row B
	BCF	PORTC,1
	CALL	onems

	BTFSC	PORTC,4		; button 4?
	GOTO	b5		; no
	MOVLW	'4'		; yes
	MOVWF	Char
	MOVLW	04
	MOVWF	Kval
	RETURN
	
b5	BTFSC	PORTC,5		; button 5?
	GOTO	b6		; no
	MOVLW	'5'		; yes
	MOVWF	Char
	MOVLW	05
	MOVWF	Kval
	RETURN
	
b6	BTFSC	PORTC,6		; button 6?
	GOTO	bm		; no
	MOVLW	'6'		; yes
	MOVWF	Char
	MOVLW	06
	MOVWF	Kval
	RETURN
	
bm	BTFSC	PORTC,7		; button x?
	GOTO	rowc		; no
	MOVLW	'x'		; yes
	MOVWF	Char
	MOVWF	Oper
	RETURN

rowc	BSF	PORTC,1		; select row C
	BCF	PORTC,2
	CALL	onems

	BTFSC	PORTC,4		; button 1?
	GOTO	b2		; no
	MOVLW	'1'		; yes
	MOVWF	Char
	MOVLW	01
	MOVWF	Kval
	RETURN
		
b2	BTFSC	PORTC,5		; button 2?
	GOTO	b3		; no
	MOVLW	'2'		; yes
	MOVWF	Char
	MOVLW	02
	MOVWF	Kval
	RETURN
	
b3	BTFSC	PORTC,6		; button 3?
	GOTO	bs		; no
	MOVLW	'3'		; yes
	MOVWF	Char
	MOVLW	03
	MOVWF	Kval
	RETURN

bs	BTFSC	PORTC,7		; button -?
	GOTO	rowd		; no
	MOVLW	'-'		; yes
	MOVWF	Char
	MOVWF	Oper
	RETURN

rowd	BSF	PORTC,2		; select row D
	BCF	PORTC,3
	CALL	onems

	BTFSC	PORTC,4		; button C?
	GOTO	b0		; no	
	MOVLW	'c'		; yes
	MOVWF	Char
	MOVWF	Oper
	RETURN
		
b0	BTFSC	PORTC,5		; button 0?
	GOTO	be		; no
	MOVLW	'0'		; yes
	MOVWF	Char
	MOVLW	00
	MOVWF	Kval
	RETURN
	
be	BTFSC	PORTC,6		; button =?
	GOTO	bp		; no
	MOVLW	'='		; yes
	MOVWF	Char
	RETURN

bp	BTFSC	PORTC,7		; button +?
	GOTO	done		; no
	MOVLW	'+'		; yes
	MOVWF	Char
	MOVWF	Oper
	RETURN

done	BSF	PORTC,3		; clear last row
	CLRF	Char		; character code = 0
	RETURN

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Write display ...........................................

disout	MOVF	Kcode,W		; Load the code
	BSF	Select,RS	; Select data mode
	CALL	outres		; and send code
	RETURN


outres	MOVF	Result,W	; load result
	MOVWF	Lsd		; into low digit store
	CLRF	Msd		; high digit = 0
	BSF	STATUS,C	; set C flag
	MOVLW	D'10'		; load 10

again	SUBWF	Lsd		; sub 10 from result
	INCF	Msd		; inc high digit
	BTFSC	STATUS,C	; check if negative
	GOTO	again		; no, keep going
	ADDWF	Lsd		; yes, add 10 back 
	DECF	Msd		; inc high digit



PAUSEISR:
BCF INTCON,RBIF
BANKSEL PORTB
MOVF PORTB,1	;TO CLEAR MISMATCH, WRITE PORTB TO ITSELF
CLRF PORTB
INCF PAUSETM
BTFSS PAUSETM,1	;CHECK IF BIT1 IS 1
GOTO RETP				;IF NOT THEN WE ARE SURE HAVEN'T REACHED 6
BTFSS PAUSETM,2	;IF FIRST BIT IS 1, CHECK IF 3RD IS ALSO 1
GOTO RETP				;IF IT WAS NOT 1 THEN WE AHVEN'T REACHED 6
MOVLW 0X01			;IF NOT THEN WE REACHED 6. SET IT BACK TO 1
MOVWF PAUSETM
RETP:
BSF INTCON,GIE
return

;====================================================================
      END