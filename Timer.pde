class Timer
{
  float startTime = 0;
  float stopTime = 0;
  boolean on = false;
 
  public Timer()
  {
    
  
  }
  
  void start()
  {
    startTime = millis();
    on = true;
  
  }
  
  void stop()
  {
    stopTime = millis();
    on = false;
  }
  
  float getElapsedTime()
  {
    float elapsed;
    if(on)
    {
      elapsed = (millis()-startTime);
    } else
      {
        elapsed = (stopTime-startTime);
      }
      return elapsed;
  }
  
  float second() {
      return (getElapsedTime() / 1000) % 60;
    }

}
