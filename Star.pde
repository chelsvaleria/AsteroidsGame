class Star
{
  private int xCoord, yCoord, starColor;
  public Star(){
    xCoord = (int)(Math.random()*500);
    yCoord = (int)(Math.random()*500);
    starColor = color(255,255,255);
  }
  public void show(){
    fill(starColor);
    ellipse(xCoord,yCoord,1,1);
}
}
