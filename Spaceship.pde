class Spaceship extends Floater  
{   
    //your code here
  public Spaceship()
  {
    corners = 4;
    int[] xS = {10, -6, -3, -6};
    int[] yS = {0, 7, 0, -7};
    xCorners = xS;
    yCorners = yS;
    myColor = 222;
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0 ;
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