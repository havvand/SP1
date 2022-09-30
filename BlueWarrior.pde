class BlueWarrior
{
  float xPos;
  float yPos;
  int size;
  int speed;
  
  public BlueWarrior(float xPos, float yPos, int size, int speed)
  {
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
    this.speed = speed;
  }
  
  void drawBlueWarrior()
  {
    fill(93,94,152);
    rect(xPos+10,yPos-size/2,size/2,size/2);
    fill(93,94,152);
    rect(xPos,yPos,size,size);
  }
  
  void moveBlueWarrior()
  {
    xPos = xPos+speed;
  }

}
