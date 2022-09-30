import java.util.Random;
import java.util.ArrayList;

ArrayList<RedWarrior> redWList = new ArrayList<RedWarrior>();
ArrayList<BlueWarrior> blueWList = new ArrayList<BlueWarrior>();
Background one;
Mechanics mech = new Mechanics();
RedWarrior redW;
BlueWarrior blueW;
Timer time = new Timer();

void setup()
{
   size (2000,1600);
   
   // Instantiates 10 objects. 
   /*for (int i = 0; i < 10; i++)
   {
     blueWList.add(new BlueWarrior(width+40,random(width,height),40,-8)); 
     
   }*/
   
}

void draw()
{
  //println((millis())/1000);
  
  
  
  //println("TIME " + time.second()); 
  
  
  one = new Background();
  one.drawBackground();
 
  
  one.drawBush();
  one.HUD();
  
  // Adding Red Warriors on mouse-click
   mech.addRedWarrior();
   mech.addBlueWarrior();
  
  // Adv For-Loop for moving Warriors
  for(RedWarrior redW : redWList)
  {
    redW.drawRedWarrior();
    redW.moveRedWarrior();
  }
  for(BlueWarrior blueW : blueWList)
  {
    blueW.drawBlueWarrior();
    blueW.moveBlueWarrior();
  }
  // collision detection between red and blue
  mech.collision();
  
 
  
  
}
