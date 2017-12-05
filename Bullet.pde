class Bullet extends Floater
{
  Bullet()
  {
  }
  Bullet(Spaceship bob)
  {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180); 
    myDirectionX = 5*Math.cos(dRadians) + bob.getDirectionX();
    myDirectionY = 5*Math.cos(dRadians) + bob.getDirectionY();
  }
  public void show()
  {
    noStroke();
    fill(183,217,242);
    ellipse((float)myCenterX, (float) myCenterY, 5, 5);
  }
  public void move()
  {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY; 
  }
  
  public void setX(int x) { myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
}