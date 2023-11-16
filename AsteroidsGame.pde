Star[] wow = new Star[1000]; 
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i =0; i< wow.length; i++){
    wow[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i< wow.length; i++)
  {
    wow[i].show();
  }
  bob.move();
  bob.show();

}
public void keyPressed(){
if(key == 'h'){
  bob.hyperspace();
}
else if(key == 'w'){
  bob.accelerate(1);
}
else if(key == 'a'){
  bob.turn(-10);
}
else if(key == 'd'){
  bob.turn(10);
}
}
