class Ball {
  float r;  float g;  float b;
  float xPos;  float yPos;
  float diameter;
  int id;
  float gravity = 0.04;
  float vx = 0;
  float vy = 0;
  Ball[] others;
  
  //Constructor
  public Ball(float xPos, float yPos, float diameter, float r, float g, float b, int id, Ball[] others) 
  { 
    this.r = random(256);
    this.b = random(256);
    this.g = random(256);
    this.xPos = xPos;
    this.yPos = yPos;
    this.diameter = random(100,150);
    this.id = id;
    this.others = others;
    
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
    
    fill(r,g,b);
    ellipse(xPos,yPos,diameter,diameter);
    
  }
  
  void move()
  { 
    vy += gravity;
    xPos += vx;
    yPos += vy-0.9;
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
  

}
