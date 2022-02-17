float friction = -0.9;
int numBalls = 15;
Ball[] balls = new Ball [numBalls];
Target target;
int counter;

void setup()
{
  smooth();
  size (1600,1200);
  
 
  
  // Initialzing balls through array
  for (int i = 0; i < numBalls; i++)
  {
     balls[i] = new Ball(random(width),random(height),20,10,10,10,i);
  }
  
  target = new Target(random(width),random(height),10,0,0,0,0); 
  
}

void reset()
  {
    if(target.isHit == true)
    {
      counter++;
      for (int i = 0; i < numBalls; i++)
        {
          balls[i] = new Ball(random(width),random(height),20,10,10,10,i);
          target = new Target(random(width),random(height),10,0,0,0,0); 
        }       
    }  
  }
   
void score()
 {
   fill(0);
   textSize(64);
   text("Score " + counter, 40, 120); 
     
 }


void draw()
 {
    background(240);
    cursor(CROSS);

  
    for(Ball ball : balls) // Calling methods
      { 
        ball.display();
        ball.move();
        target.display();
        target.move();
        reset();
        score();
  }

 }
