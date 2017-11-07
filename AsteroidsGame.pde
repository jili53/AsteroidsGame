//your variable declarations here
Stars[] aLot;
Spaceship bob = new Spaceship();
Asteroid sue = new Asteroid();
public void setup() 
{
  //your code here
  size(500,500);
  aLot = new Stars[400];
  for(int i=0; i< aLot.length; i++) {aLot[i] = new Stars();}
}
public void draw() 
{
  //your code here
  background(0);
  for(int i=0; i< aLot.length; i++) {aLot[i].show();}
  bob.show();
  bob.move();
  sue.show();
  }
 
public void keyTyped()
{
  if(key == 'w')
  {
    bob.accelerate(0.3);
  }
  if(key == 'd')
    {
    bob.turn(10);
    }
  if(key == 'a')
  {
    bob.turn(-10);
    
  }
  if(key == 'h')
  {
    bob.setPointDirection((int)(Math.random()*360));
    bob.setX((int)(Math.random()*500));
    bob.setY((int)(Math.random()*500));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
}