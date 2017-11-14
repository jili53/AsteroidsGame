class Asteroid extends Floater
{
  protected int rotSpeed;
  public Asteroid()
  {
    myColor= 100;
    if(Math.random() <0.5) {rotSpeed = (int)(Math.random()*5)+1;}
    else {rotSpeed = (int)(Math.random()*5)-5;}
    corners=5;
    int[] xS = {-10,0,8,5,-4};
    int[] yS= {8, 11, 7, -6, -4};
    xCorners = xS;
    yCorners = yS;
    myCenterX= (int)(Math.random()*500);
    myCenterY= (int)(Math.random()*500);
    myDirectionX= (int)(Math.random())+1;
    myDirectionY= (int)(Math.random())+1;
  }

  public void move()
  {
    turn(rotSpeed);
    super.move();
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