class Target extends Ball
{
  float r;  float g;  float b;

  float diameter;
  int id;
  float gravity = 0.0004;
  float vx = 0; float vy = 0;
  float xPos;  float yPos;
  int counter;
  Ball[] others;
  boolean isHit;
  
  public Target(float xPos, float yPos, float diameter, float r, float g, float b, int id, Ball[] others) 
    { super(r,g,b,xPos,yPos,diameter,id,others);
      
      this.r = random(255);
      this.b = random(255);
      this.g = random(255);
      this.xPos = xPos;
      this.yPos = yPos;
      this.diameter = random(100,150);
      this.id = id;
      this.isHit = false;
      this.others = others;
      super.move();
    }
    
 
  public float getPosY()  // Gives Y-position on Target ball
  {
    float pos = yPos;
    return pos;
  }
  
  public float getPosX() // Gives Y-position on Target ball
  { 
    float posX = xPos;
    return posX;
  } 
  
   void move()
  { 
    vy += gravity;
    xPos += vx;
    yPos += vy-0.09;
    if (xPos + diameter/2 > width) { // Keeps Balls from going off screen X-axis
      xPos = width - diameter/2;
      vx *= friction; 
    }
    else if (xPos - diameter/2 < 0) {
      xPos = diameter/2;
      vx *= friction;
    }
    if (yPos + diameter/2 > height) {
      yPos = height - diameter/2; // Keeps Balls from going off screen Y-axis
      vy *= friction; 
    } 
    else if (yPos - diameter/2 < 0) {
      yPos = diameter/2;
      vy *= friction;  
    }
  }
  
   void collide() 
  {
    for (int i = id + 1; i < numBalls; i++) {
      float dx = others[i].xPos - xPos;
      float dy = others[i].yPos - yPos;
      float distance = sqrt(dx*dx + dy*dy);
      float minDist = others[i].diameter/2 + diameter/2;
      if (distance < minDist) { 
        float angle = atan2(dy, dx);
        float targetX = xPos + cos(angle) * minDist;
        float targetY = yPos + sin(angle) * minDist;
        float ax = (targetX - others[i].xPos) * spring;
        float ay = (targetY - others[i].yPos) * spring;
        vx -= ax;
        vy -= ay;
        others[i].vx += ax;
        others[i].vy += ay;
      }
    }   
  }
  
  void display() 
  {
      
     fill(r,b,g); 
     textSize(32);
     text("Hit Me", xPos-50, yPos-70);
     ellipse(xPos,yPos,diameter,diameter);
     
     if( mouseY > getPosY()-40 && mouseY < getPosY()+40 && mouseX > getPosX()-40 && mouseX < getPosX()+40)
      {        
        if (mousePressed)
        {
         isHit = true;             
        } 
      }     
      
  } // END OF DISPLAY
  
  
  
    
} //END OF CLASS
