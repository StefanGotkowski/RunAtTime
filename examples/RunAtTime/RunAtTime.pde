/*
*
* @Author : Stefan Gotkowski
* @Since : 28/05/2018
*
*/

// Include library from all Arduino libraries
#include <RunAtTime.h>
// or 
// Include library from code directory
// #include "RunAtTime.h"

// Set state of led
int ledState = LOW;
// Set timeout 
timeout = 2000;

// Instantiate blinkLed in miliseconds
RunAtTime blinkLed( timeout );

void setup(){
  // Set led output mode
  pinMode( LED_BUILTIN , OUTPUT );
}

void loop(){

  // Is time to run ?
  if( blinkLed.isTime() ){
  
    // Invert state
    if (ledState == LOW) 
      ledState = HIGH;
    else 
      ledState = LOW;
      
    // Change sate
    digitalWrite( LED_BUILTIN , ledState);
    
    // Change next timeout
    timeout += 100;
    resetTimeout( timeout );
  }
  
}