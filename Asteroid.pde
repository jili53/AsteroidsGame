class Asteroid extends Floater
{
  protected int rotSpeed;
  public Asteroid()
  {
    myColor= 100;
    corners=6;
    int[] xS = {0, 7, 7, 0, -7, -7,};
    int[] yS= {10, 7, -7, -11, -7, 7,};
    xCorners = xS;
    yCorners = yS;
    myCenterX= (int)(Math.random()*500);
    myCenterY= (int)(Math.random()*500);
    if(Math.random() < 0.5)
    {
    myDirectionX= (int)(Math.random())+1;
    myDirectionY= (int)(Math.random())-1;
    }
    else
    {
    myDirectionX= (int)(Math.random())+1;
    myDirectionY= (int)(Math.random())+1;
    }
    if(Math.random() <0.5) {rotSpeed = (int)(Math.random()*3)+1;}
    else {rotSpeed = (int)(Math.random()*3)-3;}
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