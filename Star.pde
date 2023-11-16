class Star //note that this class does NOT extend Floater
{
  private int xCoord, yCoord, starColor;
  public Star(){
    xCoord = (int)(Math.random()*500);
    yCoord = (int)(Math.random()*500);
    starColor = color(255,255,255);
  }
  public void show(){
    fill(starColor);
    ellipse(xCoord,yCoord,2,2);
}
}
