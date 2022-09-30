class Mechanics
{
  int points;
  
    public Mechanics()
    {
    
    }  
   
  public void collision()
  {
    try 
    {
      for(RedWarrior redW : redWList)
      {
        for(BlueWarrior blueW : blueWList)
        {
           if(dist(blueW.xPos, blueW.yPos,redW.xPos, redW.yPos) < blueW.size)
           {
             redWList.remove(redW);
             blueWList.remove(blueW);
             //redW.xPos = redW.xPos - redW.speed;
           }
         }
       }
     }
    catch(Exception e)
    {
    }    
  }
  
  public void addRedWarrior()
  {
    if (mousePressed)
    {
      redWList.add(new RedWarrior(-40,mouseY,40,10));
    }
  }
  
  public void addBlueWarrior()
  {
    if(mousePressed)
    {
      time.start();
    }
    
    float arg = time.second();
       
    if (arg >= 1.2 && arg <= 1.7)
      {        
        for (int i = 0; i < 1; i++)
        {
         blueWList.add(new BlueWarrior(width+40,random(width),40,-8));
        }
      }
      
  }
  
}
