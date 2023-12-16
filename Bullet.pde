class Bullet extends Floater{
 public Bullet(Spaceship bob){
  myColor = color(255,255,255);
  myCenterX = bob.getX();
  myCenterY = bob.getY();
  myXspeed = bob.getXspeed();
  myYspeed = bob.getYspeed();
  myPointDirection = bob.getPointDirection();
  accelerate(2);
 }
 public void show(){
   ellipse((float)myCenterX,(float)myCenterY,10,10);
 }
 public double getX(){
  return myCenterX; 
 }
 public double getY(){
  return myCenterY; 
 }
}
