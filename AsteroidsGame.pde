//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(500,500);
}
public void draw() 
{
  //your code here
  background(0);
  bob.show();
  if(key == 'w')
  {
  bob.setDirectionX(Math.cos(bob.getPointDirection()));
  bob.setDirectionY(-Math.sin(bob.getPointDirection()));
  System.out.println(bob.myDirectionX);
  bob.move();
  }
  }
public void keyPressed()
{
  if(key == 'd')
    {
    bob.turn(10);
    }
  if(key == 'a')
  {
    bob.turn(-10);
    System.out.println(bob.myPointDirection);
    
    
  }
  if(key == 'h')
  {
    bob.setPointDirection((int)(Math.random()*360));
    bob.setX((int)(Math.random()*500));
    bob.setY((int)(Math.random()*500));
    bob.setDirectionX(0);
    bob.setDirectionX(0);
  }
}