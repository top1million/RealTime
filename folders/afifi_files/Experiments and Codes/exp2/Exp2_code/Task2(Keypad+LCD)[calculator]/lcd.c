/*
*	the list of included files contains:
*	pic.h since we're going to use it with our pic microcontroller, duah
*	ldc.h which contains all the prototypes of the functions used for the lcd
*	delay.h which contains the prototype of the melli-second delay and the implementation
*	of the micro-second delay (which is used in the melli-second implementation, so it has to be included)
*	delay.c contains the implementation of the delay_ms function, so it has to be here
*/

#include <pic.h>
#include "lcd.h"
#include "delay.h"
#define LCD_STROBE ((RE1 = 1),(RE1=0))	//* The E bit on the lcd, where it tells the lcd that we're writing data to it when it's set to 1*/
/* 
*	the following write functions take a character inpute or 8 bits where it takes the higher 4 bits and passes their values to the D port of the pic
*	then it shifts the character by 4 bits to the left in order to take the values of the lower 4 bits and put them on the used D port bits. The strobe
*	is used indicate that the LCD is receving data so that the values are guaranteed to be passed in order and without interference
* 
*	As for the RS bit which is connected to RE0. It is used to tell the LCD to accept the character as a command when it's set to 0, or as a character to
*	be displayed on the screen when it's set to 1
*/
void lcd_write(unsigned char c)
{
PORTD = (PORTD & 0x0F) | (c);
LCD_STROBE;
PORTD = (PORTD & 0x0F) | (c << 4);
LCD_STROBE;
DelayUs(40);
}
void lcd_clear(void)
{
RE0 = 0;
lcd_write(0x1);
DelayMs(2);
}
void lcd_puts(const char * s)
{
RE0 = 1;
while(*s)
lcd_write(*s++);
}
void lcd_putch(char c)
{
RE0 = 1;
PORTC = !(0x31 ^ c) << 1; 
PORTD = (PORTD & 0x0F) | (c);
LCD_STROBE;
PORTD = (PORTD & 0x0F) | (c << 4);
LCD_STROBE;
DelayUs(40);
}
void lcd_goto(unsigned char pos)
{
RE0 = 0;
lcd_write(0x80+pos);
}
void lcd_init(void)
{
RE0 = 0;
DelayMs(15); // power on delay
PORTD = (0x3 << 4);
LCD_STROBE;
DelayMs(5);
LCD_STROBE;
DelayUs(100);
LCD_STROBE;
DelayMs(5);
PORTD = (0x2 << 4);
LCD_STROBE;
DelayUs(40);
lcd_write(0x28); // 4 bit mode, 1/16 duty, 5x8 font
lcd_write(0x08); // display off
lcd_write(0x0F); // display on, blink curson on
lcd_write(0x06); // entry mode
}
