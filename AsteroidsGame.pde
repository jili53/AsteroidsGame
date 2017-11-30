//your variable declarations here
Stars[] aLot;
Spaceship bob = new Spaceship();
ArrayList<Asteroid> asteroid = new ArrayList<Asteroid>();

public void setup() 
{
  //your code here
  size(500,500);
  aLot = new Stars[400];
  for(int i=0; i< aLot.length; i++) {aLot[i] = new Stars();}
  for(int i=0; i<25; i++) {asteroid.add(new Asteroid());}
}
public void draw() 
{
  //your code here
  background(0);
  for(int i=0; i< aLot.length; i++) {aLot[i].show();}
  for(int i=0; i< asteroid.size(); i=i+2)
  {
    asteroid.get(i).show();
    asteroid.get(i).move();
  }
  for(int i=1; i< asteroid.size(); i=i+2)
  {
    asteroid.get(i).show();
    asteroid.get(i).move();
  }
  bob.show();
  bob.move();
  for(int i = 0; i< asteroid.size(); i=i+1)
  {
    if(dist(asteroid.get(i).getX(), asteroid.get(i).getY(), bob.getX(), bob.getY()) <16)
    {
      asteroid.remove(i);
      i--;
    }
  }
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