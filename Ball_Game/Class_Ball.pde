class Ball {
  float r;  float g;  float b;
  float xPos;  float yPos;
  float diameter;
  int id;
  float gravity = 0.04;
  float vx = 0;
  float vy = 0;
  
  //Constructor
  public Ball(float xPos, float yPos, float diameter, float r, float g, float b, int id) 
  { 
    this.r = random(256);
    this.b = random(256);
    this.g = random(256);
    this.xPos = xPos;
    this.yPos = yPos;
    this.diameter = random(100,150);
    this.id = id;
    
  } 
  
  void display() {
    fill(r,g,b);
    ellipse(xPos,yPos,diameter,diameter);
    
  }
  
  void move(){
    vy += gravity;
    xPos += vx;
    yPos += vy;
    if (xPos + diameter/2 > width) {
      xPos = width - diameter/2;
      vx *= friction; 
    }
    else if (xPos - diameter/2 < 0) {
      xPos = diameter/2;
      vx *= friction;
    }
    if (yPos + diameter/2 > height) {
      yPos = height - diameter/2;
      vy *= friction; 
    } 
    else if (yPos - diameter/2 < 0) {
      yPos = diameter/2;
      vy *= friction;  
    }
  }
  
  /*void Collide() {
  
   
  
  }*/

}
