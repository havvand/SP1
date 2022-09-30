class RedWarrior
{
  float xPos;
  float yPos;
  int size;
  int speed;
  int health;
  
  public RedWarrior(float xPos, float yPos, int size, int speed)
  {
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
    this.speed = speed;
  }
  
  void drawRedWarrior()
  {
    fill(185,66,66);
    rect(xPos+10,yPos-size/2,size/2,size/2);
    fill(185,66,66);
    rect(xPos,yPos,size,size);
  }
  
  void moveRedWarrior()
  {
    xPos = xPos+speed;
  }
  
  

}
  
  
