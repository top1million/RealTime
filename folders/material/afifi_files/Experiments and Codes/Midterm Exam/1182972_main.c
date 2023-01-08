/*
Output: Trisx = 0
Input : Trisx = 0xFF


Connections:
------------------
LCD:
TRISD , PORTD
D4->RD4
D5->RD5
D6->RD6
D7->RD7
PORTE0 -> RS
PORTE1 -> Enable
------------------
Wave Generator:
RC1 / CCP2
------------------
LED:
RC2 / CCP1
//-------------------------------------------------------------------------------------------------
/*
Configurations:

**Button**: 
Connected to PB0: It generates an interrupt everytime it gets pressed.
we only have one push button so no need to check to see where the interrupt is coming from.
setting up:
 	T0IE = 1; 						// Timer0 Interrput Enable
	PEIE = 1;         				//Enable the Peripheral Interrupt
	RBIE = 1;						//enable interrupt 4-7
	RBIF = 0; 						//clear the interrupt flag RB4-7
// Every capture we need to clear mismatch : 
// 		PORTB = PORTB;
In order to check on PB4 interrupt, we need to check to see if RBIF is set.
So first thing we must do is reset it
then last things to do are to set RBIE and Global Interrupt Enable GIE
---------------------------------------------------------------------------------------------------------------------
**Capture**:
	this is connected to CCPR2 so the following registers need to be set up:
	CCP2CON = 0x05; : capture every rising edge

	TMR1CS = 0; : internal clock (Fosc / 4)
	TMR1IF = 0; : clear interrupt flag, it is set to 1 when overflow occurs
	TMR1H = 0;
	TMR1L = 0;
	T1CKPS1 = 0; : T1CKPS0 = 0; : prescaler 1:1
	CCP2IE = 1; : enable CCP2 interrupt
	CCP2IF = 0; : clear interrupt flag
	PEIE = 1; : enable peripheral interrupts
once done we check CCP2IF flag, and TMR1IF (for overflow)
---------------------------------------------------------------------------------------------------------------------
**LCD**:
	For LCD just put TRISD = 0 for it to become output
	rest of it are in LCD.h and LCD.C files
	This assumes you connected the LCD to the following pins:
	D4 => RD4, D5 => RD5, D6 => RD6, D7 => RD7
	Enable -> RE1
	RS -> RE0

---------------------------------------------------------------------------------------------------------------------
**LED**:
	LED is connected to a PWM port (RC2/CCP1).

	******PWM******:
		To control PWM and Compare / Capture module, we need to first learn the following registers:
		TMR1H, TMR1L, T1CON, PR1, CCPR1L, CCPR1H, CCP1CON, and CCP1IE.
		 _________
		| CCPxCON |:
		|_________|:
			Unimplemented, Unimplemented, DCxB1, DCxB0, CCPxM3, CCPxM2, CCPxM1, CCPxM0.

			DCxB1, DCxB0: Used only in PWM mode. Otherwise ignored.
				These 2 bits control the duty cycle of the PWM signal.
				Upper 8 bits are DCx9:DCx2 found in CCPRxL.
				Lower 2 bits are DCx1:DCx0 found in CCPxCON.

			CCPxM3, CCPxM2, CCPxM1, CCPxM0: 
				CCPxM3 = 0, CCPxM2 = 0, CCPxM1 = 0, CCPxM0 = 0 => CCP is off
				CCPxM3 = 0, CCPxM2 = 1, CCPxM1 = 0, CCPxM0 = 0 => Capture Mode every falling edge
				CCPxM3 = 0, CCPxM2 = 1, CCPxM1 = 0, CCPxM0 = 1 => Capture Mode every rising edge
				CCPxM3 = 0, CCPxM2 = 0, CCPxM1 = 1, CCPxM0 = 1 => Capture Mode every 4th rising edge
				CCPxM3 = 0, CCPxM2 = 1, CCPxM1 = 1, CCPxM0 = 1 => Capture Mode every 16th rising edge
				CCPxM3 = 1, CCPxM2 = 0, CCPxM1 = 0, CCPxM0 = 0 => Compare Mode: Initialise CCP pin LOW, on compare match force CCP pin HIGH (CCP1F bit is set)
				CCPxM3 = 1, CCPxM2 = 0, CCPxM1 = 0, CCPxM0 = 1 => Compare Mode: Initialise CCP pin HIGH, on compare match force CCP pin LOW (CCP1F bit is cleared)
				CCPxM3 = 1, CCPxM2 = 0, CCPxM1 = 1, CCPxM0 = 0 => Compare Mode: Generate software interrupt on compare match (CCP1F bit is Set, CCP pin is unaffected)
				CCPxM3 = 1, CCPxM2 = 0, CCPxM1 = 1, CCPxM0 = 1 => Compare Mode: Trigger Special Event (CCP1F bit is set)
				CCPxM3 = 1, CCPxM2 = 1, CCPxM1 = x, CCPxM0 = x => PWM Mode

		 _______
		| T1CON |:
		|_______|:
			Unimplemented, Unimplemented, T1CKPS1, T1CKPS0, T1OSCEN, T1SYNC', TMR1CS, TMR1ON.
			T1CKPS1, T1CKPS0: Timer1 input clock prescale select bits:
				T1CKPS1 = 0, T1CKPS0 = 0 => 1:1 Prescale value
				T1CKPS1 = 0, T1CKPS0 = 1 => 1:2 Prescale value
				T1CKPS1 = 1, T1CKPS0 = 0 => 1:4 Prescale value
				T1CKPS1 = 1, T1CKPS0 = 1 => 1:8 Prescale value

			T1OSCEN: Timer1 oscillator enable bit: when 0 it consumes no power

			T1SYNC: Timer1 external clock input synchronize select bit: when 0 synchronize external clock input with timer1 clock, 1 don't synchronize

			TMR1CS: Timer1 clock source select bit: 1 External clock (from pin T1OSC/T1CKl) is selected on the rising edgge, 0 Internal clock (Fosc / 4)(T1CK) is selected

			TMR1ON: Timer1 on/off bit: 1 enables timer1, 0 stops timer 1

			 ___________________________________________________________________
			| Timer Value = 65536 - ((Delay in seconds * Fosc)/(Prescaler * 4)) |
			|___________________________________________________________________|
			Timer value is put into TMR1H and TMR1L.

		 _______
		| T2CON |:
		|_______|:
			Unimplemented, TOUTPS3, TOUTPS2, TOUTPS1, TOUTPS0, TMR2ON, T2CKPS1, T2CKPS0.

			TOUTPS3, TOUTPS2, TOUTPS1, TOUTPS0: Timer2 output postscale select bits:
				TOUTPS3 = 0, TOUTPS2 = 0, TOUTPS1 = 0, TOUTPS0 = 0 => 1:1 Postscale value
				TOUTPS3 = 0, TOUTPS2 = 0, TOUTPS1 = 0, TOUTPS0 = 1 => 1:2 Postscale value
				TOUTPS3 = 0, TOUTPS2 = 0, TOUTPS1 = 1, TOUTPS0 = 0 => 1:3 Postscale value
				....
				TOUTPS3 = 1, TOUTPS2 = 1, TOUTPS1 = 1, TOUTPS0 = 1 => 1:16 Postscale value

			TMR2ON: Timer2 on/off bit: 1 enables timer2, 0 stops timer2

			T2CKPS1, T2CKPS0: Timer2 input clock prescale select bits:
				T2CKPS1 = 0, T2CKPS0 = 0 => 1:1 Prescale value
				T2CKPS1 = 0, T2CKPS0 = 1 => 1:4 Prescale value
				T2CKPS1 = 1, T2CKPS0 = x => 1:16 Prescale value

			 __________________________________________________________________
			| Timer Value = 256 - ((Delay in seconds * Fosc)/(Prescaler * 4)) |
			|__________________________________________________________________|
			Timer value is put into TMR2.

			TIMER0:
		 ____________
		| OPTION_REG |:
		|____________|:
		RBPU, INTEDG, T0CS, T0SE, PSA, PS2, PS1, PS0.

			RBPU: When set, the RBPU bit disables the pull-up on the RB0 pin (port B).

			INTEDG: Interrupt edge select bit: 1 rising edge, 0 falling edge

			T0CS: Timer0 clock source select bit: 1 Pulses are brought to TMR0 timer/counter input through RA4 pin, and 0 Internal clock cycle (Fosc/4)

			T0SE: Timer0 source edge select bit: 1 TMR0 increments on high-to-low transition on TMR0 pin, 0 TMR0 increments on low-to-high transition on TMR0 pin

			PSA: Prescale Assignment bit: 1 Pre-scaler is assigned to WDT (watchdog timer), 0 Pre-scaler is assigned to Timer0 timer/counter

			PS2, PS1, PS0: Prescale Rate select bits:
				PS2 = 0, PS1 = 0, PS0 = 0 => 1:2 TMR0 || 1:1 WDT
				PS2 = 0, PS1 = 0, PS0 = 1 => 1:4 TMR0 || 1:2 WDT
				PS2 = 0, PS1 = 1, PS0 = 0 => 1:8 TMR0 || 1:4 WDT
				PS2 = 0, PS1 = 1, PS0 = 1 => 1:16 TMR0 || 1:8 WDT
				PS2 = 1, PS1 = 0, PS0 = 0 => 1:32 TMR0 || 1:16 WDT
				PS2 = 1, PS1 = 0, PS0 = 1 => 1:64 TMR0 || 1:32 WDT
				PS2 = 1, PS1 = 1, PS0 = 0 => 1:128 TMR0 || 1:64 WDT
				PS2 = 1, PS1 = 1, PS0 = 1 => 1:256 TMR0 || 1:128 WDT

			 _____________________________________________
			| Period = (256 - TMR0)*(4 / Fosc)*(Prescaler)|
			|_____________________________________________|
	---------------------------------------------------------------------------------------------------------------------

	 ___________________________________________________________
	| PWM Period = (Pr2+1) *4Tosc* TMR2 Prescale Value 			|
	| PR2 = (_XTAL_FREQ)/ (PWM_Frquency x 4 x TMR2PRESCALE) - 1 |
	|___________________________________________________________|
	The result is what we put in PR2, we usually know the PWM period we want to get
	 _________________________________________________________________________________________________________________________________
	| set CCPR1L to 25 to give 50% duty cycle with frequency = 15 KHz , note that DC1B1 and DC1B0 are set to 10 in CCP1CON (bits 5,4) |
	| CCPR1L(7..0):CPP1CON(5):CPP1CON(4) =   (fosc *on_time_percentage)/(F * prescaler) = (4MHz*0.5)/(15K * 1) 						  |
	|_________________________________________________________________________________________________________________________________|

	VALUE OF PR2 to get 15KHz PWM frequency: = (4M)/(15K * 4 * 1) - 1 = 65.7 = 66
	Pulse width goes from 0 to full intensity on 100 stages.
	so CCPR1L = 0 
	with CCP1CON[5:4] = 1 (accuracy decreases but this way we end up with full intensity)
	increment on each stage is 255 / 100 = 2.55.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

*/
#include <pic.h>
#include <stdlib.h>
#include "lcd.h"
#include "delay.h"
#include "string.h"

#define MAX_LEN 20
/*
*	since we're using 4MHz oscillator, we need to set the oscillator bit to HS
*	the following are needed to make the LCD get to work:
*	BODEN, WDTDIS and WRTEN
*/
__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

//functions
void DelaySec(int sec);
int get_int(int id, int pos);
int get_int_len(int id);
void initialise_set();
char correspondingLetter(void);	//convert period into letter
//variables
//ADC variables:
float adc_value1;
float adc_value2;
float adc_value3;
float adc_value4;
float adc_value5;
//LCD variables:
int current_char_pos;
int total_chars;
//CCP2 Variables
int isFirstEdge = 1;
unsigned int  rising_edge_time_1=0; // hold the current value of rising edge time 
unsigned int  period = 0; // hold the current value of rising edge time 
//PWM Variables
int pulse_width_increment;	//pulse width value
// int pwm_frequency_value;	//pwm frequency value
int timer0_value;	//timer0 value

int isHalted = 0;

int numOfCharactersRead = 0;
int numOfWords = 0;
char mostRepeatedWord1 = '\0';
char mostRepeatedWord2 = '\0';
char mostRepeatedWord3 = '\0';
char message[MAX_LEN];
int message_indicator = 0;

int numOfPresses = 0;	//for calculating number of presses on button
int isTimer0On = 0;

//or a way to save input in a variable.
void main(void)
{
	initialise_set();
	
	while(1)
	{
		char current_char = correspondingLetter();
		if(total_chars == 32)
		{
			//pause the code until interrupt from PB4 is triggered
			while(!isHalted);
			isHalted = 0;
			total_chars = 0;
			current_char_pos = 0;
		}
		if(current_char_pos > 15)
		{
			lcd_goto(64 + current_char_pos++ - 16);
			message[message_indicator++] = current_char;
			lcd_putch(current_char);
			DelayMs(500);
		}
		else
		{
			lcd_goto(current_char_pos++);
			message[message_indicator++] = current_char;
			lcd_putch(current_char);
			DelayMs(500);
		}
		total_chars++;
		if(current_char == '.')
		{
			//find number of repeated words and which are top 3 put them in i,j,k
			int i;
			int j;
			int k;
			lcd_clear();
			lcd_goto(0);
			//pretend the following print works
			//lcd_puts("words= %d, char=%d", numOfWords, numOfCharactersRead);
			lcd_goto(64);
			//pretend the following print works 2
			//lcd_puts("%c = %d, %c = %d, %c = %d", mostRepeatedWord1, i, mostRepeatedWord2,j, mostRepeatedWord3, k);
		}
	}

}

//function to see how many digits are in an integer
int get_int_len(int id)
{
	int temp = id;
	int len = 0;
	while(temp != 0)
	{
		len++;
		temp/=10;
	}
	return len;
}


int get_int(int id, int pos)
{
	int val = id;
	for(int i = 1; i < pos; i++)
	{
		val/=10;
	}
	return val;
}


void initialise_set()
{ 

	nRBPU = 0;						/* Enable PortB weak pullup resistors */
	TRISD = 0; 						/* to transmit characters to the LCD */
	TRISE = 0; 						/* to control the LCD */
	TRISB = 0xFF; 					/* to look for interrupts */
	ADCON0 = 0; 					/* to disable the analog converter, with Fosc/2 or /4 (but we ADCS2 = 0 so /2) */
	ADCON1 = 0x82;					// AN7->AN5 DIGITAL, REST ANALOGUE WITH VREF+ = VDD AND VREF- = VSS, Left Justified, ADCS2=0 (Fosc can be 2/8/32 or FRC) (need 2 digital pins for LCD)
	TRISA = 0xFF; 					/* to take analog values */  
	TRISC = 0; 						/* All PORTC is output. It has LED on PORTC7, PWM to Buzzer (PORTC2/CCP1), and DC Motors enable on PROTC3*/
	PORTC = 0;						/* Reset PortC outputs (output 0)*/
	RE2 = 0;
	//Timer1 configuration 
	TMR1CS = 0; 					//(this is one bit in T1CON) use internal clock  (Fosc/4) , where Fosc= 4MHz in our case
	TMR1IF = 0; 					// set Timer interrupt flag bit to 0. It is set to 1 when an overflow is occurred in Timer1 
	TMR1H  = 0x00;  				//(The Initial value) the MSB 8 bit for Timer1 , which has the value of the timer
	TMR1L = 0x00; 					// (The Initial value)the LSB 8 bit for Timer1. 
	T1CKPS0 = 0;  T1CKPS1 = 0;  	//set the prescale value to 1:1 (See datasheet) 
	T1SYNC = 0;						// Timer is synchronized to external clock input
	TMR1IE = 1;						// enable TIMER1 interrupt 
	TMR1ON = 1; 					//Enable Timer1
	//initialise the LCD
	lcd_init();
	lcd_clear();
	DelaySec(1); 					// sleep for 1 sec

	//interrupts setup
	GIE=1; 							// Enable Global Interrupt
 	T0IE = 1; 						// Timer0 Interrput Enable
	PEIE = 1;         				//Enable the Peripheral Interrupt
	RBIE = 1;						//enable interrupt 4-7
	RBIF = 0; 						//clear the interrupt flag RB4-7
	CCP2IE = 1;						//enable interrupt for CCP2
	CCP2IF = 0;						//clear the interrupt flag for CCP2

	//initialise the PWM
	PR2 = 66;						/* Set the period register to 66 (15KHz)*/
	CCP1CON = 0x3C;					/* Set the PWM mode to PWM mode, and set the duty cycle to 80% */
	T2CON = 4;						/* Set the timer to run with prescaler = 1:1 and timer 2 on */
	CCPR1L = 0;						/* Initialise the duty cycle to 3% (0000 0000) with CCP1CON(5:4) = (11) or 0 deimal */
	pulse_width_increment = 2.55;	/* Set the pulse width increment to 2.55 */

	//initialise LCD variables
	current_char_pos = 0;
	total_chars = 0;
    // INTE = 1;       				//Enable RB0 as external Interrupt pin
	// INTF = 0;       				//Clear RB0 interrupt flag
	// TMR 0 CONFIGURATION DESTROYS KEYPAD FOR SOME REASON
	//initialising Timer0 to generate a 10ms interrupt with 256 prescaler
	OPTION_REG = 0x87;					/* Set the timer to run with prescaler = 1:256 with weak pullup*/
	TMR0 = 0;							/* Reset the timer */


	

}

void DelaySec(int sec)
{
   for(int i=0;i<sec;i++)
    DelayMs(1000);
}

char correspondingLetter(void)
{
	if (period == 10000)
	{
		numOfCharactersRead++;
		return 'a';
	}
	else if (period == 15000)
	{
		numOfCharactersRead++;
		return 'b';
	}
	else if (period == 20000)
	{
		numOfCharactersRead++;
		return 'c';
	}
	else if (period == 25000)
	{
		numOfCharactersRead++;
		return 'd';
	}
	else if (period == 30000)
	{
		numOfCharactersRead++;
		return 'e';
	}
	else if (period == 35000)
	{
		numOfCharactersRead++;
		return 'f';
	}
	else if (period == 40000)
	{
		numOfCharactersRead++;
		return 'g';
	}
	else if (period == 45000)
	{
		numOfCharactersRead++;
		return 'h';
	}
	else if (period == 50000)
	{
		numOfCharactersRead++;
		return 'i';
	}
	else if (period == 55000)
	{
		numOfCharactersRead++;
		return 'j';
	}
	else if (period == 60000)
	{
		numOfCharactersRead++;
		return 'k';
	}
	else if (period == 65000)
	{
		numOfCharactersRead++;
		return 'l';
	}
	else if (period == 70000)
	{
		numOfCharactersRead++;
		return 'm';
	}
	else if (period == 75000)
	{
		numOfCharactersRead++;
		return 'n';
	}
	else if (period == 80000)
	{
		numOfCharactersRead++;
		return 'o';
	}
	else if (period == 85000)
	{
		numOfCharactersRead++;
		return 'p';
	}
	else if (period == 90000)
	{
		numOfCharactersRead++;
		return 'q';
	}
	else if (period == 95000)
	{
		numOfCharactersRead++;
		return 'r';
	}
	else if (period == 100000)
	{
		numOfCharactersRead++;
		return 's';
	}
	else if (period == 105000)
	{
		numOfCharactersRead++;
		return 't';
	}
	else if (period == 110000)
	{
		numOfCharactersRead++;
		return 'u';
	}
	else if (period == 115000)
	{
		numOfCharactersRead++;
		return 'v';
	}
	else if (period == 120000)
	{
		numOfCharactersRead++;
		return 'w';
	}
	else if (period == 125000)
	{
		numOfCharactersRead++;
		return 'x';
	}
	else if (period == 130000)
	{
		numOfCharactersRead++;
		return 'y';
	}
	else if (period == 135000)
	{
		numOfCharactersRead++;
		return 'z';
	}
	else if (period == 140000)
	{
		numOfWords++;
		return ' ';
	}
	else if (period == 145000)
	{
		return '.';
	}

}

//whatever timer interrupt/software interrupt occurs, this function will be called
void interrupt IntVector( void )
{ // invoked on every TMR0 int (happens every 0.01 seconds)

	//interrupt PB0
	if(CCP2IF == 1)
	{
		CCP2IF = 0;
		if( isFirstEdge){
		rising_edge_time_1 = (int) CCPR2; // the 16 bits value is stored here
		}
		else{
			period = (int) CCPR2 - rising_edge_time_1; // in microseconds
		}
		isFirstEdge = !isFirstEdge;
		DelayMs(500); // sleep for 500 msec to give time between 2 captures
	}
	if(TMR1IF == 1)
	{
		TMR1IF = 0;
		TMR1H = 0x00;
		TMR1L = 0x00;
	}
	//interrupt PB0
	if(INTF == 1)
	{
		INTF = 0;
		INTCON = 0;

		//in here start timer0 or check to see if it already started, and then have a counter of all occurrences and check how many times they occur once the timer ends, then decide if it was odd or even
		//timer0 starts automatically since it is connected with pb0 weak pullup
			numOfPresses++;
			


		INTCON = 1;
		GIE = 1;
		INTE = 1;

	}
	// check timer 0
	if (T0IE && T0IF) 
	{ // check if the Timer0 is overflowed and Timer Interrupt is enabled
		T0IF = 0; // set Timer Overflow flag to zero for the next interrupt
		TMR0 = 0;  /* reload the time value. It is calcualted based on this equation Period = (256 - TMR0)*(4/fosc)*(Prescaler)
		in our case a 10ms period (resolution) should be achieved by set Prescaler to 256 and the used Fsoc=4MHz
		0.01 = (256 -TMR0)*(4/4*10^6)*256 -----> TMR0= 256-39.1=217 */
		
		//defind behaviour then reset number of presses
		numOfPresses = 0;
		isTimer0On = 0;
 	}
}

