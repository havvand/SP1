
class Background
{  
  public Background()
  {
    
  }
  
  public void HUD()
  {
    fill(255);
    textSize(50);
    text("Press mouse to launch warrior!", 5, 60); 
  }
  
  // Array that draws the background.
  public void drawBackground()
  {
    PImage photo;
    photo = loadImage("Grass.png");
    image(photo, 0, 0);
   
    // 3 rows and 1 colum to cover the screen.
    int[] arr = new int[3];
    
    for (int i = 0; i < arr.length; i++)
    {
      for(int j = 0; j < arr.length; j++)
      {
        //rect(j*64, i*64, 200, 200);
        image(photo, j*900,i*400);
      }
    }    
    
  }
  // Array that displays a bush.png
  public void drawBush()
  {
    PImage bush;
    bush = loadImage("Bush.png");
    bush.resize(100,100);
    int[]arr = new int[4];
    
    for (int i = 0; i < arr.length; i++)
    {
      for(int j = 0; j < arr.length; j++)
      {
        image(bush,i*625,j*730);
      }
    }      
    
  }
}
