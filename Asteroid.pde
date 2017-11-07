class Asteroid extends Floater
{
  public Asteroid()
  {
    corners=5;
    int[] xS = {-7,0,6,5,-6};
    int[] yS= {6, 9, 5, -6, -8};
    xCorners = xS;
    yCorners = yS;
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