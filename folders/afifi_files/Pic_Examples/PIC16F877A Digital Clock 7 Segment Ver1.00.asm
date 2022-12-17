;****************************************************************************************************
;This software is provided in an “AS IS” condition,NO WARRANTIES in any form apply to this software.
;You can use/modify the provided schematics and code without any limitations.

; picmicrolab.com 2.2.2014
;***************************************************************************************************
;PIC16F877A Digital Clock With 7 S egment Display

;0X30 - 1's Minutes 0X31 - 10's Minutes 0X32 - 1's Hours 0X33 - 10's Hours ;0X34 - Convertion register;0x35 - Seconds 0x36 - Minutes 0x37 Time Base for Adj
;Bits 1,2,4,5 of PORTB are inputs and connected to SW1,2,3,4

LIST P=PIC16F877A 
include <P16f877A.inc> 
org 0x00 
reset:
goto start
org 0x04 
goto		IntSRV
org		0x10
start: 	bcf STATUS, RP0 
	   	bcf STATUS, RP1 
		clrf PORTB
		clrf PORTC
		clrf PORTD
		clrf 0x30
		clrf 0x31
 		clrf 0x32
		clrf 0x33
		clrf 0x34
		clrf 0x35
		clrf 0x36
		clrf 0x37
bsf STATUS, RP0 
movlw 0xfe
movwf TRISB
clrf TRISC 
clrf TRISD
bcf STATUS, RP0
bsf PORTC,0X00
movlw 0x00
movwf 0x30
movlw 0x00
movwf 0x31
movlw 0x02
movwf 0x32
movlw 0x01
movwf 0x33

        clrf            T1CON                                 
        movlw           0xD8
        movwf           TMR1H             
        movlw		0xF0
		movwf		TMR1L
        clrf            INTCON          
        bsf             STATUS,RP0
        clrf            PIE1            
        bcf  		STATUS,RP0
        clrf            PIR1            
        movlw           0x20            
        movwf           T1CON          
        bsf		INTCON,PEIE	
		bsf		INTCON,GIE      
		bsf		STATUS,RP0 
		bsf		PIE1,TMR1IE	
        bcf		STATUS,RP0


		bsf   		T1CON,TMR1ON	
loop:

call Show4Digits
call TestSegments

goto loop

;------------------------------------
	


;------------------------------------
Show4Digits:
		
			movf 0x30,w  ;Show digit1
			movwf 0x34
			call ConvertBCDto7Segment
			movwf PORTD
			movlw 0x04
			movwf PORTC
			call delay
			movf 0x31,w  ;Show digit2
			movwf 0x34
			call ConvertBCDto7Segment
			movwf PORTD
			movlw 0x08
			movwf PORTC
			call delay
			movf 0x32,w  ;Show digit3
			movwf 0x34
			call ConvertBCDto7Segment
			movwf PORTD
			movlw 0x10
			movwf PORTC
			call delay
			movf 0x33,w  ;Show digit4
btfsc STATUS,Z; Do not show leading zero
return
			movwf 0x34
			call ConvertBCDto7Segment
			movwf PORTD
			movlw 0x20
			movwf PORTC
			call delay
			
return

;------------------------------------
ConvertBCDto7Segment:
movf 0x34,w
sublw 0x01
btfsc STATUS,Z ; 1
retlw 0x06
;---------------------------
movf 0x34,w
sublw 0x02
btfsc STATUS,Z ; 2
retlw 0x5B
;---------------------------
movf 0x34,w
sublw 0x03
btfsc STATUS,Z ; 3
retlw 0x4F
;---------------------------
movf 0x34,w
sublw 0x04
btfsc STATUS,Z ; 4
retlw 0x66
;---------------------------
movf 0x34,w
sublw 0x05
btfsc STATUS,Z ; 5
retlw 0x6D
;---------------------------
movf 0x34,w
sublw 0x06
btfsc STATUS,Z ; 6
retlw 0x7D
;---------------------------
movf 0x34,w
sublw 0x07
btfsc STATUS,Z ; 7
retlw 0x07
;---------------------------
movf 0x34,w
sublw 0x08
btfsc STATUS,Z ; 8
retlw 0xFF
;---------------------------
movf 0x34,w
sublw 0x09
btfsc STATUS,Z ; 9
retlw 0xEF
;--------------------------
movf 0x34,f
btfsc STATUS,Z ; 0
retlw 0x3F
return



delay:					
		movlw		0x20		
		movwf		0x51
CONT1:	movlw		0xA0		
		movwf		0x52
CONT2:	decfsz		0x52,f
		goto		CONT2
		decfsz		0x51,f
		goto		CONT1
		return	
;-----------------------------------

IntSRV:	
	bcf   		T1CON,TMR1ON
	bcf         PIR1,TMR1IF
	movlw       0xD8
;	movlw           0x80
	movwf		TMR1H
	movlw		0xF0
	movwf		TMR1L
 	;movf        0x20,0
	call AdjMin
	call AdjHours
	incf		0x35
	movlw 0x7D 
	subwf 0x35,w
	btfss STATUS,Z
	goto next
	
;--------------------------------------------------------------------------
	clrf 0x35
	;call AdjMin
	;call AdjHours
	incf 0x36 ; Minutes counter
	movlw 		0x01
	xorwf		PORTB,f

;---------------------------------------------------------------------------
	movlw 0x3C 
	subwf 0x36,w
	btfss STATUS,Z
	goto next
	clrf 0x36
;---------------------------------------------------------------------------
	incf 0x30 ;increase 1's minutes	
	movlw 0x0A
	subwf 0x30,w
	btfss STATUS,Z
	goto next
	clrf 0x30
	incf 0x31 ;increase 10's minutes	
	movlw 0x06
	subwf 0x31,w
	btfss STATUS,Z
	goto next
	clrf 0x31
	incf 0x32 ;increase 1's hours
	call Check24H
	movlw 0x0A
	subwf 0x32,w
	btfss STATUS,Z
	goto next
	clrf 0x32
	incf 0x33 ;increase 10's minutes
	
	

next:	bsf   		T1CON,TMR1ON
	retfie	


;-------------------Check24H--------------------
Check24H:
	movf 0x33,w
	movlw 0x02
	subwf 0x33,w
	btfss STATUS,Z
	return
	movf 0x32,w
	movlw 0x04
	subwf 0x32,w
	btfss STATUS,Z
	return
	clrf 0x32
	clrf 0x33
return

AdjMin:
	btfsc PORTB,0x02
	return
	clrf 0x35
	clrf 0x36

	incf 0x37
	movlw 0x40
	subwf 0x37,w
	btfss STATUS,Z
	return
	clrf 0x37

	incf 0x30 ;increase 1's minutes	
	movlw 0x0A
	subwf 0x30,w
	btfss STATUS,Z
	return
	clrf 0x30
	incf 0x31 ;increase 10's minutes	
	movlw 0x06
	subwf 0x31,w
	btfss STATUS,Z
	return
	clrf 0x31

return
;--------------------------------
AdjHours:
	call Check24H
	btfsc PORTB,0x04
	return
	clrf 0x35
	clrf 0x36
;-------------------------------
	incf 0x37
	movlw 0x20
	subwf 0x37,w
	btfss STATUS,Z
	return
	clrf 0x37
;-------------------------------
	incf 0x32 ;increase 1's minutes	
	movlw 0x0A
	subwf 0x32,w
	btfss STATUS,Z
	return
	clrf 0x32
	incf 0x33 ;increase 10's minutes	
	movlw 0x06
	subwf 0x31,w
	btfss STATUS,Z
	return
	clrf 0x31
	
return
;--------------------------------------------
TestSegments:
	btfsc PORTB,0x05
	return
    movlw 0x08
	movwf 0x34
	call ConvertBCDto7Segment
	movwf PORTD
	movlw 0x04
	movwf PORTC
	call delay
	movlw 0x08
	movwf PORTC
	call delay
	movlw 0x10
	movwf PORTC
	call delay
	movlw 0x20
	movwf PORTC
	call delay
	goto TestSegments

return
end