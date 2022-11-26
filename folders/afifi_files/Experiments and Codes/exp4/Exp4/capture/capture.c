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

unsigned int  rising_edge_time_1=0; // hold the current value of rising edge time 
unsigned int  period = 0; // hold the current value of rising edge time 
char str[10] ;
int isFirstEdge = 1;

void main(void) {
	ADCON1 = 7; // Set A/D-pins as digital I/O
	nRBPU = 0;   // enable internal pullups on PORTB
	TRISE = 0;  // set port E in output mode
	TRISD = 0;  // set port D in output mode
	RE2 = 0;    // Initialize PortE pin 2 

	GIE = 1;  // Global Interrupt Enable 
	PEIE = 1;

	//Timer1 configuration 
	TMR1CS = 0; //(this is one bit in T1CON) use internal clock  (Fosc/4) , where Fosc= 4MHz in our case
	TMR1IF = 0; // set Timer interrupt flag bit to 0. It is set to 1 when an overflow is occurred in Timer1 
	TMR1H  = 0x00;  //(The Initial value) the MSB 8 bit for Timer1 , which has the value of the timer
	TMR1L = 0x00; // (The Initial value)the LSB 8 bit for Timer1. 
	T1CKPS0 = 0;  T1CKPS1 = 0;  //set the prescale value to 1:1 (See datasheet) 
	T1SYNC = 0;// Timer is synchronized to external clock input
	TMR1IE = 1;// enable TIMER1 interrupt 
	TMR1ON = 1; //Enable Timer1

	//Configure CCP module to Capture mode
	CCP1M3 = 0; CCP1M2 = 1; CCP1M1 = 0; CCP1M0 = 1;  // Capture mode,   every rising edge
	CCP1IE = 1; // enable CCP1 interrupt
	CCP1IF = 0; 


	DelayMs(100);
	lcd_init();
	lcd_clear();

	//forever loop to display the rising edge time
	while(1) {
		DelayMs(100);
		lcd_clear();
		intToStr((unsigned int)period, str, 5);
		lcd_puts(str); /* display value on LCD */
	}

}

//the interrupt function is called , when an overflow is occurred in Timer1 
//or the rising or falling edge is detected depends on the configuration of CCP module 
static void interrupt ISR(void) {
	//CCP1IF
  // check if the interrupt is 1 
  if ( CCP1IF ) {
	//store the time of rising or falling edge in  rising_edge_time by getting the time value from CCPR1L   
	if( isFirstEdge){
		rising_edge_time_1 = (int) CCPR1; // the 16 bits value is stored here
	}
	else{
		period = (int) CCPR1 - rising_edge_time_1; // in microseconds
	}
	
	isFirstEdge = !isFirstEdge;
	//rest the CCP1 interrupt flag to 0
    CCP1IF = 0;
  }

  //check if the Timer1 is overflowed 
  if ( TMR1IF ) {
	//rest the Timer1 counter to 0
    TMR1H = 0x00;  TMR1L = 0x00;
	//reset Timer1 overflow flag to 0
    TMR1IF = 0;
  }
}
