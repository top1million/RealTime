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
ones	EQU	34	; Ones digit in decimal value


	ORG	0		; Default start address 
	NOP

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
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
condec	MOVWF	ADbin		; get ADC result
	CLRF	huns		; zero hundreds digit
	CLRF	tens		; zero tens digit
	CLRF	ones		; zero ones digit

; Calclulate hundreds......................................

	BSF	STATUS,C	; set carry for subtract
	MOVLW	D'100'		; load 100
sub1	SUBWF	ADbin		; and subtract from result
	INCF	huns		; count number of loops
	BTFSC	STATUS,C	; and check if done
	GOTO	sub1		; no, carry on

	ADDWF	ADbin		; yes, add 100 back on
	DECF	huns		; and correct loop count

; Calculate tens digit.....................................

	BSF	STATUS,C	; repeat process for tens
	MOVLW	D'10'		; load 10
sub2	SUBWF	ADbin		; and subtract from result
	INCF	tens		; count number of loops
	BTFSC	STATUS,C	; and check if done
	GOTO	sub2		; no, carry on

	ADDWF	ADbin		; yes, add 100 back on
	DECF	tens		; and correct loop count
	MOVF	ADbin,W		; load remainder
	MOVWF	ones		; and store as ones digit

	RETURN			; done

comp:
;compares with the value
	RETURN

disp:
	;display value on leds and buzzer if necessary
	RETURN

END