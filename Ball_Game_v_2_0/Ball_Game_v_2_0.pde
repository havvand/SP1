float friction = -0.9;
float spring = 0.05;
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
     balls[i] = new Ball(random(width),random(height),0,10,10,10,i,balls);
  }
  
  target = new Target(random(width),random(height),0,10,10,10,0,balls);
  
}

void reset()
  {
    if(target.isHit == true)
    {
      counter++;
      for (int i = 0; i < numBalls; i++)
        {
          balls[i] = new Ball(random(width),random(height),20,10,10,10,i,balls);
          target = new Target(random(width),random(height),20,10,10,10,0,balls);
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
        ball.move();
        target.move();
        ball.display();
        target.collide();        
        ball.collide();
        
      }     
      target.display();
      
      reset();
      
      score();

 }
