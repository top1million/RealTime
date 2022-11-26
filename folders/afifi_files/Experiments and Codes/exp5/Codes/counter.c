#include <pic.h>

__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

char display_digit[10]= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};  // binary values to be used in representing decimal Number from 0 to 0 
int d1Counter=0; // used to trigger d2 on every second
int d2Counter=0; // used to trigger d2 on every 10 seconds
int d1=0; // 7-segment display1 index
int d2=0; // 7-segment display2 index

void InitMain() {
  PORTB = 0; // Set PORTB to 0
  PORTD = 0; // Set PORTD to 0
  TRISB = 0; // PORTB is output
  TRISD= 0; // PORTD is output
}

void main() {

 InitMain();
          
 GIE=1; // Enable Global Interrupt
 T0IE = 1; // Timer0 Interrput Enable

 // Prescaler Rate Select bit , 111 means multiply Timer0 by 256	PSA=0;//Prescaler is assigned to the TMR0 timer/counter.
 TMR0 =61; //256 - Fosc/(4*f*pre)
 OPTION_REG = 0x47;
 PORTB= display_digit[d1];
 PORTD= display_digit[d2];
 while (1) {  // Endless loop
	if(d1Counter==20){ // we achieved 1 second
			d1++;	// increase d1 on every second
			if(d1==10) d1=0;
			PORTB= display_digit[d1];
			d1Counter=0; // reset for the next second
	} // end of 1 second if-statement
	if(d2Counter==200){ // we achieved 10 seconds
			d2++;	// increase d1 on every 10 seconds
			if(d2==10) d2=0;
			PORTD= display_digit[d2];
			d2Counter=0; // reset for the next 10 seconds
	} // end of 10 seconds if-statement
 } // end of while(1)
} // end of main

void interrupt IntVector( void ){ // invoked on every TMR0 int (happens every 0.01 seconds)
 if (T0IE && T0IF) { // check if the Timer0 is overflowed and Timer Interrupt is enabled
	 T0IF = 0; // set Timer Overflow flag to zero for the next interrupt
	 TMR0 =61;  /* reload the time value. It is calcualted based on this equation Period = (256 - TMR0)*(4/fosc)*(Prescaler)
	 in our case a 10ms period (resolution) should be achieved by set Prescaler to 256 and the used Fsoc=4MHz
	 0.01 = (256 -TMR0)*(4/4*10^6)*256 -----> TMR0= 256-39=217 */
	 d1Counter++; // increment d1Counter
	 d2Counter++; // increment d2Counter
 }
}
