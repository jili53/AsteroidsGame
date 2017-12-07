//your variable declarations here
Stars[] aLot;
Spaceship bob = new Spaceship();
ArrayList<Asteroid> asteroid = new ArrayList<Asteroid>();
ArrayList<Bullet> shoot = new ArrayList<Bullet>();
public void setup() 
{
  //your code here
  size(700,700);
  aLot = new Stars[500];
  for(int i=0; i< aLot.length; i++) {aLot[i] = new Stars();}
  for(int i=0; i<40; i++) {asteroid.add(new Asteroid());}
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
  for(int i=0; i< shoot.size();i++)
  {
    shoot.get(i).show();
    shoot.get(i).move();
    for(int j=0; j<asteroid.size(); j++)
    {
      if(dist(asteroid.get(j).getX(), asteroid.get(j).getY(), shoot.get(i).getX(), shoot.get(i).getY()) < 15)
      {
        asteroid.remove(j);
        shoot.remove(i);
        break;
      }
    }
  }
  bob.show();
  bob.move();
  for(int i = 0; i< asteroid.size(); i++)
  {
    if(dist(asteroid.get(i).getX(), asteroid.get(i).getY(), bob.getX(), bob.getY()) <16)
    {
      asteroid.remove(i);
      asteroid.add(new Asteroid());
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
  if(key == ' ') {shoot.add(new Bullet(bob));}
}