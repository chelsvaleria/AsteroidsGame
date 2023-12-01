Star[] wow = new Star[1000]; 
ArrayList <Asteroid> atroid = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i =0; i< wow.length; i++){
    wow[i] = new Star();
  } 
  for (int i = 0; i < 10; i++){
    atroid.add(new Asteroid());
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
  for(int i = 0; i < atroid.size(); i++){ 
    atroid.get(i).move();
    atroid.get(i).show();
    float d= dist((float)bob.getX(), (float)bob.getY(), (float)atroid.get(i).getX(), (float)atroid.get(i).getY());
    if(d < 23)
    atroid.remove(i);
  }
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
