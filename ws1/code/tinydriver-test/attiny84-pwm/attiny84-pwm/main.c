
#define F_CPU 8000000

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h> 

int main(void)
{
	int i;
	DDRB |= 1<<PB2;
	DDRA |= 1<<PA7;
	
	// PWM - phase correct - TOP = 0xFF
    TCCR0A = (1<<COM0A1)|(1<<COM0B1)|(1<<WGM00);
	// clock - no pre-scalar
	TCCR0B = (1<<CS00);
	while (1) 
    {
		for(i=0; i<=255;)
		{
			// PB2 functionality
			OCR0A = i;
			_delay_ms(100);
			i +=10;
		}
			
		for(i=0; i<=255;)
		{
			// PA7 functionality
			OCR0B = i;
			_delay_ms(100);
			i +=20;
		}
		for(i=255; i>=0;)
		{
			//PB2 functionality
			OCR0A = i;			
			// PA7 functionality
			i -=10;
		}
		for(i=255; i>=0;)
		{
			OCR0B = i;
			_delay_ms(100);
			i -=20;	
		}
    }
	return 1;
}

