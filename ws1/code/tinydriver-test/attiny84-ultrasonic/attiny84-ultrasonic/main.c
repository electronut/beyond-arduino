#define F_CPU 8000000
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

int pinEcho = PA0;

// initialize HC-SR04
void initHCSR04()
{
	// initialize HC-SR04 pins
	
	// set Trigger pin (connected to PB0) as output
	DDRB |= (1 << PB0);
}

// 1/0 flag to check if echo is over
volatile char echoDone = 0;

// current timer0 count
uint32_t countTimer0 = 0;

// get distance in cm from HC-SR04
float getDistanceHCSR04()
{
	// Send a 10us HIGH pulse on the Trigger pin.
	// The sensor sends out a “sonic burst” of 8 cycles.
	// Listen to the Echo pin, and the duration of the next HIGH
	// signal will give you the time taken by the sound to go back
	// and forth from sensor to target.

	float distance = 0.0f;

	// enable pin-change interrupt on PCINT0:
	cli();
	// enable interrupt
	GIMSK |= (1 << PCIE0);
	// enable pin
	PCMSK0 |= (1 << PCINT0);
	sei();

	// set echo flag
	echoDone = 0;
	// reset counter
	countTimer0 = 0;

	// send 10us trigger pulse
	//    _
	// __| |__
	PORTB &= ~(1 << PB0);
	_delay_us(20);
	PORTB |= (1 << PB0);
	_delay_us(12);
	PORTB &= ~(1 << PB0);
	_delay_us(20);

	// listen for echo and time it
	//       ____________
	// _____|            |___

	// loop till echo pin goes low
	while(!echoDone);

	// disable pin-change interrupt:
	// disable interrupt
	GIMSK &= ~(1 << PCIE0);
	// disable pin
	PCMSK0 &= ~(1 << PCINT0);

	// calculate duration
	float duration = countTimer0/8000000.0;

	// dist = duration * speed of sound * 1/2
	// dist in cm = duration in s * 340.26 * 100 * 1/2
	// = 17013*duration
	distance = 17013.0 * duration;
	
	return distance;
}
float getDistance2()
{
	float distance = 0.0f;
	
	// send 10us trigger pulse
	//    _
	// __| |__
	PORTB &= ~(1 << PB0);
	_delay_us(20);
	PORTB |= (1 << PB0);
	_delay_us(12);
	PORTB &= ~(1 << PB0);
	_delay_us(20);


	// listen for echo and time it
	//       ____________
	// _____|            |___

	while(!(PINA & (1<<PA0)));
	
	// reset counter
	int count = 0;
	
	// loop till echo pin goes low
	while(PINA & (1<<PA0))
	{
		count++;
	}

	// calculate duration - 5 instructions consumed + 1 false (while) condition
	float duration = (count*5 + 1)/8000000.0;

	// dist = duration * speed of sound * 1/2
	// dist in cm = duration in s * 340.26 * 100 * 1/2
	// = 17013*duration
	distance = 17013.0 * duration;
	
	return distance;
}

// timer0 overflow interrupt
ISR(TIM0_OVF_vect)
{
	// increment
	countTimer0 += 255;
}

// pin-change interrupt handler
ISR(PCINT0_vect)
{
	// read PCINT0 (PA0 - pn 13):
	if(PINA & (1 << pinEcho)) {
		// rising edge:

		// start 8-bit timer
		// Divide by 1
		TCCR0B |= (1<<CS00);
		// set overflow interrupt flag
		TIMSK0 |= 1<<TOIE0;

	}
	else {
		// falling edge

		// stop timer
		TCCR0B &= ~(1<<CS00);

		// calculate time passed
		countTimer0 += TCNT0;

		// reset counter in timer0
		TCNT0 = 0;

		// set flag
		echoDone = 1;
	}
}
//
// END: HC-SR04 code
//


//
// main loop:
//
int main (void)
{
	// serial
	//init_serial();

	// HC-SR04
	initHCSR04();

	// set as output
	DDRB |= (1 << PB0);
	DDRA |= (1 << PA1);
	
	char str[16];

	float prevDist = 0.0;
	// loop
	while (1) {

		//float dist = getDistanceHCSR04();
		float dist = getDistance2();
		// sensor only works till 400 cm - if it exceeds, this value
		// just send previous reading
		if(dist > 500) {
			dist = prevDist;
		}
		// print distance to serial port
		//sprintf(str, "%f\n", dist);
		//send_str(str);
		prevDist = dist;

		if(dist < 15) {
			PORTA |= (1 << PA1);
		}
		else {
			PORTA &= ~(1 << PA1);
		}

		// wait
		_delay_ms(200);
	}
	
	return 1;
}