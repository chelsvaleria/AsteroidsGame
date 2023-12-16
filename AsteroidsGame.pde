Star[] wow = new Star[1000]; 
ArrayList <Asteroid> atroid = new ArrayList <Asteroid>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i =0; i< wow.length; i++){
    wow[i] = new Star();
  } 
  for (int i = 0; i < 30; i++){
    atroid.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  // draws stars
  for(int i = 0; i< wow.length; i++)
  {
    wow[i].show();
  }
  // spaceship moves
  bob.move();
  bob.show();
  // loop to move & show asteroids
  for(int i = 0; i < atroid.size(); i++){ 
    atroid.get(i).move();
    atroid.get(i).show();
  // checks distance between asteroid and spaceship
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)atroid.get(i).getX(), (float)atroid.get(i).getY());
  // if the spaceship and the asteroid collide, the asteroid gets removed
    if(d < 23)
    atroid.remove(i);
  }
  // loop to move & show bullets
  for(int i = 0; i < pewpew.size(); i++){
  pewpew.get(i).move();
  pewpew.get(i).show();
  // removes a bullet once it has reached the border of the canvas
  if(pewpew.get(i).getX() == 500 || pewpew.get(i).getY() == 500 || pewpew.get(i).getX() == 0 || pewpew.get(i).getY() == 0)
    pewpew.remove(i);
    // loop for pewpew loops through all the bullets to see if there was a collision, and then the loop isnide it loops through all of the asteroids
  for(int j = 0; j < pewpew.size(); j++){
    for(int bruh = 0; bruh < atroid.size(); bruh++){
      float d = dist((float)pewpew.get(j).getX(), (float)pewpew.get(j).getY(), (float)atroid.get(bruh).getX(), (float)atroid.get(bruh).getY());
      if(d < 23){
        pewpew.remove(j);
        atroid.remove(bruh);
        break;
      }
    }
    }
    }
  }
// buttons
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
else if(key == ' '){
  pewpew.add(new Bullet(bob));
}
}


