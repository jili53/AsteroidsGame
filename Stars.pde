class Stars //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, rgb;
  public Stars()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    rgb = 0;
  }
  public void show()
  {
    rgb = (int)(Math.random()*256);
    noStroke();
    fill(150,100,rgb);
    ellipse(myX,myY, 3, 3);
  }
}