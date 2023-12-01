class Asteroid extends Floater{
  private double rotSpeed;
public Asteroid(){
  rotSpeed = 1;
  corners = 6;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = (int)(Math.random()*4)-9;
  yCorners[0] = (int)(Math.random()*4)-8;
  xCorners[1] = (int)(Math.random()*4)+7;
  yCorners[1] = (int)(Math.random()*4)-8;
  xCorners[2] = (int)(Math.random()*4)+10;
  yCorners[2] = (int)(Math.random()*4)-2;
  xCorners[3] = (int)(Math.random()*4)+9;
  yCorners[3] = (int)(Math.random()*4)+5;
  xCorners[4] = (int)(Math.random()*4)-9;
  yCorners[4] = (int)(Math.random()*4)+7;
  xCorners[5] = (int)(Math.random()*4)-10;
  yCorners[5] = (int)(Math.random()*4)-3;
  myCenterX = (int)(Math.random()*500);
  myCenterY = (int)(Math.random()*500);
  myColor = color(200,200,200);
  myPointDirection = (int)(Math.random()*30)-40;
  myXspeed = 0.5;
  myYspeed = 0.5;
}
public void move(){
  turn(rotSpeed);
  super.move();
}
public double getX(){
  return myCenterX;
}
public double getY(){
  return myCenterY;
}
}
