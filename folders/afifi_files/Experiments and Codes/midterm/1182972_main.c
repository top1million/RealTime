/*
Output: Trisx = 0
Input : Trisx = 0xFF


Connections:
Analoge Pins:
RA0 => RV5
RA1 => RV4
RA2 => RV3
RA3 => RV2
RA5 => RV1
------------------
Keypad:
TRISB , PORTB
1->RB0
2->RB1
3->RB2
4->RB3
A->RB7
B->RB6
C->RB5
D->RB4
------------------
LCD:
TRISD , PORTD
D4->RD4
D5->RD5
D6->RD6
D7->RD7
------------------
LED:
TISC , PORTC
LED1->RC7
------------------
Buzzer:
RC2 / CCP1
------------------
Motor:
Enable: RC3
In1/In3 => Vcc
In2/In4 => Gnd
this means that both motors rotate clockwise
*/
//-------------------------------------------------------------------------------------------------
/*
Configurations:

**Analogue ports**: ADCON0 and ADCON 1 
	ADCON0: ADCS1, ADCS0, CHS2	, CHS1, CHS0, GO/DONE', Unimplemented, ADON
	ADCON1: ADFM, ADCS2, Unimplemented, Unimplemented, PCFG3, PCFG2, PCFG1, PCFG0

	(ADCON0)
	ADCS2, ADCS1 ADCS0:
		ADCS2 = 0, ADCS1 = 0, ADCS0 = 0 => Fosc/2
		ADCS2 = 0, ADCS1 = 0, ADCS0 = 1 => Fosc/8
		ADCS2 = 0, ADCS1 = 1, ADCS0 = 0 => Fosc/32
		ADCS2 = 0, ADCS1 = 1, ADCS0 = 1 => FRC(clock derived from internal A/D RC oscillator)
		ADCS2 = 1, ADCS1 = 0, ADCS0 = 0 => Fosc/4
		ADCS2 = 1, ADCS1 = 0, ADCS0 = 1 => Fosc/16
		ADCS2 = 1, ADCS1 = 1, ADCS0 = 0 => Fosc/64
		ADCS2 = 1, ADCS1 = 1, ADCS0 = 1 => FRC(clock derived from internal A/D RC oscillator)

	CHS2, CHS1, CHS0:
		CHS2 = 0, CHS1 = 0, CHS0 = 0 => AN0
		CHS2 = 0, CHS1 = 0, CHS0 = 1 => AN1
		CHS2 = 0, CHS1 = 1, CHS0 = 0 => AN2
		CHS2 = 0, CHS1 = 1, CHS0 = 1 => AN3
		CHS2 = 1, CHS1 = 0, CHS0 = 0 => AN4
		CHS2 = 1, CHS1 = 0, CHS0 = 1 => AN5
		CHS2 = 1, CHS1 = 1, CHS0 = 0 => AN6
		CHS2 = 1, CHS1 = 1, CHS0 = 1 => AN7

	GO/DONE': Manuallly change to 1 when starting conversion and it should automatically turn back to 0
	ADON: A/D on bit: 1 => A/D is on and 0 => A/D is off (no power consumpton) 

	(ADCON1)
	ADFM: A/D result format: 1 => left justified, 0 => right justified

	PCFG3, PCFG2, PCFG1, PCFG0:
		PCFG3 = 0, PCFG2 = 0, PCFG1 = 0, PCFG0 = 0 => ALL ANALOGUE WITH VREF+ = VDD AND VREF- = VSS
		PCFG3 = 0, PCFG2 = 0, PCFG1 = 0, PCFG0 = 1 => ANALOGUE WITH VREF+ = AN3 AND VREF- = VSS 
		PCFG3 = 0, PCFG2 = 0, PCFG1 = 1, PCFG0 = 0 => AN7->AN5 DIGITAL, REST ANALOGUE WITH VREF+ = VDD AND VREF- = VSS
		PCFG3 = 0, PCFG2 = 0, PCFG1 = 1, PCFG0 = 1 => AN7->AN5 DIGITAL, REST ANALOGUE WITH VREF+ = AN3 AND VREF- = VSS
		PCFG3 = 0, PCFG2 = 1, PCFG1 = 0, PCFG0 = 0 => ONLY AN3,AN1 AND AN0 ARE ANALOGUE WITH VREF+ = VDD AND VREF- = VSS
		PCFG3 = 0, PCFG2 = 1, PCFG1 = 0, PCFG0 = 1 => ONLY AN1 AND AN0 ARE ANALOGUE WITH VREF+ = AN3 AND VREF- = VSS
		PCFG3 = 0, PCFG2 = 1, PCFG1 = 1, PCFG0 = X => ALL DIGITAL
		PCFG3 = 1, PCFG2 = 0, PCFG1 = 0, PCFG0 = 0 => ANALOGUE WITH VREF+ = AN3 AND VREF- = AN2
		PCFG3 = 1, PCFG2 = 0, PCFG1 = 0, PCFG0 = 1 => AN7 AND AN6 ARE DIGITAL, REST ANALOGUE WITH VREF+ = VDD AND VREF- = VSS
		PCFG3 = 1, PCFG2 = 0, PCFG1 = 1, PCFG0 = 0 => AN7 AND AN6 ARE DIGITAL, REST ANALOGUE WITH VREF+ = AN3 AND VREF- = VSS
		PCFG3 = 1, PCFG2 = 0, PCFG1 = 1, PCFG0 = 1 => AN7 AND AN6 ARE DIGITAL, REST ANALOGUE WITH VREF+ = AN3 AND VREF- = AN2
		PCFG3 = 1, PCFG2 = 1, PCFG1 = 0, PCFG0 = 0 => AN7->AN5 DIGITAL, REST ANALOGUE WITH VREF+ = AN3 AND VREF- = AN2
		PCFG3 = 1, PCFG2 = 1, PCFG1 = 0, PCFG0 = 1 => AN7->AN5 DIGITAL, REST ANALOGUE WITH VREF+ = AN3 AND VREF- = AN2
		PCFG3 = 1, PCFG2 = 1, PCFG1 = 1, PCFG0 = 0 => ONLY AN0 ANALOGUE WITH VREF+ = VDD AND VREF- = VSS
		PCFG3 = 1, PCFG2 = 1, PCFG1 = 1, PCFG0 = 1 => ONLY AN0 ANALOGUE WITH VREF+ = AN3 AND VREF- = AN2

---------------------------------------------------------------------------------------------------------------------
**KEYPAD**:
	PORTB = 0
	TRISTB = 0 (ALL PORTS ARE OUTPUT)

	describe the function getKey()
	reads value of columns(PB7, PB6, PB5, PB4) and checks to see if all are 1's.
	if not then there is a key pressed.
	after that, it loops amongst rows and outputs 1 to them 1 by 1.
	TRISB = colVar ^ 0xff (this makes the current rowVar as output, rest are input)
	row = PORTB >> 4: this puts the row value in the row variable. If we were at the correct row then that row will be 0.
	if the row is 0 then we have a key pressed. (col has which column value and rowVar has row value)
	return col * 4 + rowVar;

---------------------------------------------------------------------------------------------------------------------
**LCD**:
	For LCD just put TRISD = 0 for it to become output
	rest of it are in LCD.h and LCD.C files
	This assumes you connected the LCD to the following pins:
	D4 => RD4, D5 => RD5, D6 => RD6, D7 => RD7
	Enable -> RE1
	RS -> RE0

---------------------------------------------------------------------------------------------------------------------
**BUZZER**:
	BUZZER is connected to a PWM port (RC2/CCP1).

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
	| PR2 = (_XTAL_FREQ/ (PWM_Frquency x 4 x TMR2PRESCALE)) – 1 |
	|___________________________________________________________|
	The result is what we put in PR2, we usually know the PWM period we want to get
	 _________________________________________________________________________________________________________________________________
	| set CCPR1L to 25 to give 50% duty cycle with frequency = 15 KHz , note that DC1B1 and DC1B0 are set to 10 in CCP1CON (bits 5,4) |
	| CCPR1L(7..0):CPP1CON(5):CPP1CON(4) =   (fosc *on_time_percentage)/(F * prescaler) = (4MHz*0.5)/(15K * 1) 						  |
	|_________________________________________________________________________________________________________________________________|

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

*/
#include <pic.h>
#include <stdlib.h>
#include "lcd.h"
#include "delay.h"
#include "string.h"

/*
*	since we're using 4MHz oscillator, we need to set the oscillator bit to HS
*	the following are needed to make the LCD get to work:
*	BODEN, WDTDIS and WRTEN
*/
__CONFIG(DEBUG_OFF & WDTE_OFF & LVP_OFF & FOSC_HS & BOREN_ON);

//functions
void DelaySec(int sec);
extern void getkey();
int get_int(int id, int pos);
int get_int_len(int id);
void init_a2d(int);
float read_a2d(unsigned char channel);
void initialise_set();
//variables
//ADC variables:
float adc_value1;
float adc_value2;
float adc_value3;
float adc_value4;
float adc_value5;
//counter variables
int d1Counter = 0;	//first digit counter
int d2Counter = 0;	//second digit counter
//keypad variables
int col, row, pressed_key;	//for keypad
char Chkey;		
int x1,x2;	//to do operations on 2 numbers	
char op;
int start_displaying = 0;
int id = 1182972;
//PWM Variables
int pulse_width_value;	//pulse width value
// int pwm_frequency_value;	//pwm frequency value
int timer0_value;	//timer0 value
//motor state
int motor_state1 = 0;	//state of motor 1
int motor_state2 = 0;	//state of motor 2
//based on click we turn motor clockwise or counter clockwise
//or a way to save input in a variable.
void main(void)
{
	initialise_set();
	
	while(1)
	{
		// //read ADC and convert from 0-255 to 0-5V
		// d2Counter = 0;
		// adc_value1 = read_a2d(0);
		// adc_value1/=51;				/* we return 0-255 so we need to map it from 0-255 to 0-5 fraction to reflect actual analog value (since it reaches within the range of the analog register */
		// adc_value2 = read_a2d(1);
		// adc_value2/=51;
		// adc_value3 = read_a2d(2);
		// adc_value3/=51;
		// adc_value4 = read_a2d(3);
		// adc_value4/=51;
		// adc_value5 = read_a2d(4);
		// adc_value5/=51;
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
    // INTE = 1;       				//Enable RB0 as external Interrupt pin
	// INTF = 0;       				//Clear RB0 interrupt flag
	// TMR 0 CONFIGURATION DESTROYS KEYPAD FOR SOME REASON
	// //initialising Timer0 to generate a 10ms interrupt with 256 prescaler
	// timer0_value = 217;				/* Set the timer0 value to 217*/
	// OPTION_REG = 0x87;					/* Set the timer to run with prescaler = 1:256 */
	// TMR0 = timer0_value;			/* Reset the timer */

	//initialising operator for additions, subtractions, multiplications and divisions
	op = '.';

	//INITIALISING A2D DESTROYS LCD FOR SOME REASON
	// init_a2d(0);
	

}

void DelaySec(int sec)
{
   for(int i=0;i<sec;i++)
    DelayMs(1000);
}

void init_a2d(int channel)
{ 
	// channel &= 0x07; 	// channel must be an integer between 0 and 7
	ADCON0 = 0x41; // (01)(000)(0)0(1) = ( select Fosc/8) , (AN0), (GO_DONE), (enable)
	// ADCON0 |= (channel <<3);  	//select the channel to start listening to
	ADCON1 = 0x00; //(0)(0)00(1110) (select left justify result), (select Fosc/8)   ,(All are analog wiht Vdd and Vss (SEE ADCON1 EXP3)) 
	ADON=1; // turn on the A2D conversion module (last bit in ADCON0)
}
	
/* Return an 8 bit result */ 
float read_a2d(unsigned char channel)
{ 
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

//whatever timer interrupt/software interrupt occurs, this function will be called
void interrupt IntVector( void )
{ // invoked on every TMR0 int (happens every 0.01 seconds)

	//interrupt PB0
	if(INTF == 1)
	{
		INTF = 0;
		INTCON = 0;


		INTCON = 1;
		GIE = 1;
		INTE = 1;

	}
	//interrupt PB4-7
	if(RBIF == 1)
	{
		RBIF = 0;
		// INTCON = 0;
		PORTB = PORTB;
		//this means that the button connected to PB4 has been pressed
		if(RB4 == 0)
		{
			
			//if motor 1 is already rotating clockwise
			if(motor_state1 == 0)
			{
				motor_state1++;
				//now rotate it counter clockwise
				RC3 = 0;
				RC4 = 1;
				//now use the second pwm frequency
				PR2 = 99;
				T2CON =   0b00000100;
				CCP1CON = 0b00001100;
				CCPR1L =  0b00011110;
				lcd_goto(0);
				lcd_puts("Motor 1 30% CCW ");

			}
			else if(motor_state1 == 1)
			{
				//now rotate it clockwise
				motor_state1++;
				RC3 = 0;
				RC4 = 1;
				//now use the first pwm frequency
				PR2 = 99;
				T2CON =   0b00000100;
				CCP1CON = 0b00001100;
				CCPR1L = 0b00111100 ;
				lcd_goto(0);
				lcd_puts("Motor 1 60% CCW ");
			}
		}
		//this means that the button connected to PB5 has been pressed
		if(RB5 == 0)
		{
			//if motor 1 is already rotating clockwise
			if(motor_state2 == 0)
			{
				motor_state2++;
			
				//now rotate it counter clockwise
				RC5 = 0;
				RC6 = 1;
				//now use the second pwm frequency
				PR2 = 99;
				T2CON =   0b00000100;
				CCP1CON = 0b00001100;
				CCPR1L =  0b00011110;
				lcd_goto(64);
				lcd_puts("Motor 2 30% CCW ");

			}
			else if(motor_state2 == 1)
			{
				motor_state2++;
				//now rotate it clockwise
				RC5 = 0;
				RC6 = 1;
				//now use the first pwm frequency
				PR2 = 99;
				T2CON =   0b00000100;
				CCP1CON = 0b00001100;
				CCPR1L = 0b00111100 ;
				lcd_goto(64);
				lcd_puts("Motor 2 60% CCW ");
			}
		}
		//this means that the button connected to PB6 has been pressed
		if(RB6 == 0)
		{
			//stop the motors
			RC3 = 0;
			RC4 = 0;
			RC5 = 0;
			RC6 = 0;
			CCP1CON = 0b00000000; // motor off
			// T2CON =   0b00000000;
			// CCPR1L = 0;
			// PORTC = 0 ; 
			lcd_clear(); /* in case of a reset */

			lcd_goto(0);
			lcd_puts("Motor 1 stopped ");
			lcd_goto(64);
			lcd_puts("Motor 2 stopped ");

		}
		if(motor_state1 > 1)
		{
			motor_state1 = 0;
		}
		if(motor_state2 > 1)
		{
			motor_state2 = 0;
		}
		GIE=1;
		// INTCON = 1;
		RBIE = 1;
	}
}
