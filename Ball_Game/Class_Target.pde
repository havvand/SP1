class Target 
{
  float r;  float g;  float b;
  float xPos;  float yPos;
  float diameter;
  int id;
  float gravity = 0.0003;
  float vx = 0; float vy = 0; 
  boolean isHit;
  int counter;
  
//Constructor
  public Target(float xPos, float yPos, float diameter, float r, float g, float b, int id) 
    { 
      this.r = random(256);
      this.b = random(256);
      this.g = random(256);
      this.xPos = xPos;
      this.yPos = yPos;
      this.diameter = random(100,150);
      this.id = id;
      this.isHit = false;
  
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
  
  
  
  
  void display() 
  {
     fill(r,b,g); 
     textSize(32);
     text("Hit Me", xPos-50, yPos-70); 
     
     ellipse(xPos,yPos,diameter,diameter);
     
     if( mouseY > getPosY()-40 && mouseY < getPosY()+40 && mouseX > getPosX()-40 && mouseX < getPosX()+40)
      {
         //fill(255,255,255);
         ellipse(xPos,yPos,diameter,diameter);
           if (mousePressed)
           {
             isHit = true;             
           } 
      }     
      
  } // END OF DISPLAY
  
  void move()
  {
    vy += gravity;
    xPos += vx;
    yPos += vy;
    if (xPos + diameter/2 > width) 
    {
      xPos = width - diameter/2;
      vx *= friction; 
    }
    else if (xPos - diameter/2 < 0) 
    {
      xPos = diameter/2;
      vx *= friction;
    }
    if (yPos + diameter/2 > height) 
    {
      yPos = height - diameter/2;
      vy *= friction; 
    } 
    else if (yPos - diameter/2 < 0) 
    {
      yPos = diameter/2;
      vy *= friction;  
    }
  } // END OF MOVE
  
  
  
}
