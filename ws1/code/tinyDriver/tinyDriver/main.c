/*
tinyDriver - HCSR04 (Ultrasonic Sensor), DRV8835 (Motor Driver), RGB Led

HCSR04 uses timer0 with interrupt PCINT0. 
DRV8835 uses timer1 in Phase-Correct PWM mode.

Initially, tinyDriver moves forward. On obstacle detection within a range of 10 cms,
tinyDriver stops, reverses and takes a left turn.

*/

#define F_CPU 8000000

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

// GPIO pins HIGH to accelerate
void motorForward(int speed)
{
	// non-inverting mode
	TCCR1A |= (1<<COM1A1)|(1<<COM1B1);
	PORTA |= 1<<PA7;
	PORTB |= 1<<PB2;
	OCR1A = OCR1B = speed;
	//_delay_ms(50);
}

//GPIO pins low to reverse 
void motorReverse(int speed)
{
	// non-inverting mode
    TCCR1A |= (1<<COM1A1)|(1<<COM1B1);
	PORTA &= ~(1<<PA7);
	PORTB &= ~(1<<PB2);
	OCR1A = OCR1B = speed;
	//_delay_ms(50);
}

// turn left
void motorLeft(int speed)
{
	// non-inverting mode
	// left motor off, right motor on
	TCCR1A |= (1<<COM1A1)|(1<<COM1B1);
	PORTA &= 1<<PA7;
	PORTB |= 1<<PB2;
	OCR1B = speed;
}

// turn right
void motorRight(int speed)
{
	// non-inverting mode
	// left motor on, right motor off
	TCCR1A |= (1<<COM1A1)|(1<<COM1B1);
	PORTA |= 1<<PA7;
	PORTB &= 1<<PB2;
	OCR1A = speed;
}

// turn off PWM o/p channels to stop
void motorStop()
{
	TCCR1A &= ~((1<<COM1A1)|(1<<COM1B1));
}
int pinEcho = 0;
volatile char echoDone = 0;
uint32_t countTimer0 = 0;


//begin HCSR04
float getDistance()
{
	float distance = 0.0;
	
	cli();
	
	// interrupt enable
	GIMSK |= 1<<PCIE0;
	// enable pin
	PCMSK0 |= 1<<PCINT0;
	
	sei();
	
	// reset echo flag
	echoDone = 0;
	// reset counter
	countTimer0 = 0;
	
	// send 10us trigger pulse
	
	PORTB &= ~(1<<PB0);
	_delay_ms(20);
	PORTB |= (1<<PB0);
	_delay_ms(12);
	PORTB &= ~(1<<PB0);
	_delay_ms(20);
	
	// listen for echo
	while(!echoDone);
	
	// disable interrupt
	GIMSK &= ~(1<<PCIE0);
	// disable pin
	PCMSK0 &= ~(1<<PCINT0);

	// calculate duration
	float duration = countTimer0/8000000.0;
	
	// distance = duration * speed of sound * 0.5;
	// distance(in cms) = duration * 340.26 * 0.5 * 100
	// distance = 17013 * duration
	distance = 17013.0 * duration;
	
	return distance;	
}

// timer overflow handler
ISR(TIM0_OVF_vect)
{
	countTimer0 += 255;
}


//pin-change interrupt handler
ISR(PCINT0_vect)
{
	// read PCINT0
	if (PINA & (1<<pinEcho))
	{
		//start 16 bit timer
		// Divide by 1 - prescalar
		TCCR0B |= 1<<CS00;
		// set interrupt overflow flag
		TIMSK0 |= 1<<TOIE0;
	}
	else
	{
		// stop timer
		TCCR0B &= ~(1<<CS00);
		// calculate time elapsed
		countTimer0 += TCNT0;
		// reset counter - TCNT0
		TCNT0 = 0;
		// set flag
		echoDone = 1;
	}
}


int main(void)
{
	// pin set-up
	// PB1 - mode pin HIGH for phase enable in motor driver, PB0 - trigger, PB2 - GPIO for motor 2
	DDRB |= (1<<PB2)|(1<<PB1)|(1<<PB0);
	// PA6, PA5 = OC1A, OC1B - PWM, PA7 = GPIO for motor 1
	DDRA |= (1<<PA7)|(1<<PA6)|(1<<PA5);
	// Pull-up mode for PA0 - echo pin
	PORTB |= 1<<PB1;
	
	// TIMER0 PWM configurations
	// Phase Correct PWM, TOP = 0xFF
    TCCR1A |= (1<<WGM10);
	// CLK/8 pre-scalar for 2KHz motor frequency
	TCCR1B |= 1<<CS11;
	// register clear while in PWM mode
	TCCR1C = 0x00;
	
	float prevDist = 0.0;
/*	while(1)
	{
		motorForward(200);
		_delay_ms(2000);	
		motorReverse(200);
		_delay_ms(2000);
	}
*/	
	
	while (1) 
    {	
		float dist = getDistance();
		if(dist>400)
		{
			dist = prevDist;
		}
		//prevDist = dist;
		if(dist>=10)
		{
			// no obstacle detected
			// move forward
			motorForward(150);
		}
		else
		{
			motorStop();
			_delay_ms(1000);
			motorReverse(150);
			_delay_ms(2000);
			motorLeft(150);
			_delay_ms(1000);
		}
		_delay_ms(50);
    }
	return 1;
}

