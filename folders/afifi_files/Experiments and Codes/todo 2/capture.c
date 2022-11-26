#include <pic.h>
#include <stdlib.h>
#include <stdio.h>
#include "lcd.h"
#include "delay.h"
#include "string.h"

/**
	** Timer1 is 16bits counter
	** It will fire an INT when it overflows ( or rising or falling edge in capture module)
	** This code will calculate the period of a signal
**/

__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);


void DelaySec(int sec);
void init_a2d(void); 
float read_a2d(unsigned char channel);
float x;//to hold analog value
float read_a2d2(unsigned char channel);
float x2;//to hold analog value
char str[10]; 
char str2[10]; 
int d1Counter=0; // used to trigger d2 on every second
int d2Counter=0; // used to trigger d2 on every 10 seconds
int state = 0;
void main(void) {
	ADCON1 = 0; // Set A/D-pins as analog I/O
	TRISA = 0xFF; /* to take analog values */  
	nRBPU = 0;   // enable internal pullups on PORTB
	TRISE = 0;  // set port E in output mode
	TRISD = 0;  // set port D in output mode
	TRISC = 0;  // set port C in output mode
	RE2 = 0;    // Initialize PortE pin 2 

	GIE = 1;  // Global Interrupt Enable 
	PEIE = 1;
	OPTION_REG = 0x47;
	TMR0 =103;
	//Timer1 configuration 
	TMR1CS = 0; //(this is one bit in T1CON) use internal clock  (Fosc/4) , where Fosc= 4MHz in our case
	TMR1IF = 0; // set Timer interrupt flag bit to 0. It is set to 1 when an overflow is occurred in Timer1 
	TMR1H  = 0x00;  //(The Initial value) the MSB 8 bit for Timer1 , which has the value of the timer
	TMR1L = 0x00; // (The Initial value)the LSB 8 bit for Timer1. 
	T1CKPS0 = 0;  T1CKPS1 = 0;  //set the prescale value to 1:1 (See datasheet) 
	T1SYNC = 0;// Timer is synchronized to external clock input
	TMR1IE = 1;// enable TIMER1 interrupt 
	TMR1ON = 1; //Enable Timer1
	//pwm
	PR2 = 71;
	T2CON =   0b00000100; //set Timer2 control Register , where Prescaler is 1 and Postscale is 1:1
	CCP1CON = 0b00101100;
	
	DelayMs(100);
	lcd_init();
	lcd_clear();

	init_a2d();  /* Initialize the A2D module */
	DelayMs(500);

	//forever loop to display the rising edge time
	while(1) {
		DelayMs(100);
		lcd_clear();
		lcd_goto(0);
		x= read_a2d(0);
		x = x/51.0; /* we return 0-255 so we need to map it from 0-255 to 0-5 fraction to reflect actual analog value (since it reaches within the range of the analog register */
		x2 = read_a2d2(0);
		x2/=51.0;
		float summ = x+x2;
		ftoa(summ, str, 1); /* Convert value to string with 2 digits after the point */

		lcd_puts(str); /* display value on LCD */		
		lcd_goto(40); 
		if(summ > 5.0)
		{
			lcd_puts("Greater than 5"); /* display value on LCD */
			CCPR1L = 0b00010101; 
			d1Counter = 0;
		}
		else
		{
			lcd_puts("Less Than 5");
			CCPR1L = 0;
			if(d1Counter == 150){
				state = !state;
				PORTC |= (state);
			}			
		}
	}

}

//the interrupt function is called , when an overflow is occurred in Timer1 
//or the rising or falling edge is detected depends on the configuration of CCP module 

void init_a2d(void){ 
	ADCON0 = 0x41; // (01)(000)(0)0(1) = ( select Fosc/8) , (AN0), (GO_DONE), (enable)
	ADCON1 = 0x0E; //(0)(0)00(1110) (select left justify result), (select Fosc/8)   ,(AN0 is analog wiht Vdd and Vss) 
	ADON=1; // turn on the A2D conversion module (last bit in ADCON0)
}
	
/* Return an 8 bit result */ 
float read_a2d(unsigned char channel){ 
	channel &=0x07; // truncate channel to 3 bits 
	ADCON0 = 0x41; // select Fosc/8 
	//now choose whicha re analogue and which are digital, this one is the one 
	//that might change in different codes, all other variables in this 
	//can remain fixed
	ADCON1 = 0x0E; //  select left justify result, A/D port configuration 0 
	DelayMs(10);	
	ADCON0 |=(channel<<3); // apply the new channel select
	GO_nDONE = 1;
	while(GO_nDONE)
		continue; 
	return( (float) ADRESH); // return 8 MSB of the result
}

void init_a2d2(void){ 
	ADCON0 = 0x49; // (01)(000)(0)0(1) = ( select Fosc/8) , (AN1), (GO_DONE), (enable)
	ADCON1 = 0x0E; //(0)(0)00(1110) (select left justify result), (select Fosc/8)   ,(AN0 is analog wiht Vdd and Vss) 
	ADON=1; // turn on the A2D conversion module (last bit in ADCON0)
}
	
/* Return an 8 bit result */ 
float read_a2d2(unsigned char channel){ 
	channel &=0x07; // truncate channel to 3 bits 
	ADCON0 = 0x49; // select Fosc/8 
	//now choose whicha re analogue and which are digital, this one is the one 
	//that might change in different codes, all other variables in this 
	//can remain fixed
	ADCON1 = 0x0E; //  select left justify result, A/D port configuration 0 
	DelayMs(10);	
	ADCON0 |=(channel<<3); // apply the new channel select
	GO_nDONE = 1;
	while(GO_nDONE)
		continue; 
	return( (float) ADRESH); // return 8 MSB of the result
}
//10ms delay
void interrupt IntVector( void ){ // invoked on every TMR0 int (happens every 0.01 seconds)
 if (T0IE && T0IF) { // check if the Timer0 is overflowed and Timer Interrupt is enabled
	 T0IF = 0; // set Timer Overflow flag to zero for the next interrupt
	 TMR0 =103;  /* reload the time value. It is calcualted based on this equation Period = (256 - TMR0)*(4/fosc)*(Prescaler)
	 in our case a 10ms period (resolution) should be achieved by set Prescaler to 256 and the used Fsoc=4MHz
	 0.01 = (256 -TMR0)*(4/4*10^6)*256 -----> TMR0= 256-39=217 */
	 d1Counter++; // increment d1Counter
	 d2Counter++; // increment d2Counter
 }
}