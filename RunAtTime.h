/*
  RunAtTime.h (or BlinkWithoutDelay)- Library for launching a task after x milisecond
  Created by Stefan Gotkowski, 27 mai 2018
  Released into the public domain.
*/
#ifndef RunAtTime_h

  #define RunAtTime_h
  #include "Arduino.h"

  class RunAtTime
  {
    public:
      RunAtTime( unsigned long milisec );
      boolean isTime();
      void resetTimeout( long ms );
      
    private:
      unsigned long _previousMillis = 0;
      unsigned long _milisec;
  };

#endif
