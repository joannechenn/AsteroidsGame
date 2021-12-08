Star[] stars = new Star[175];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
boolean w, a, s, d;
float collision;

public void setup(){
  size(500, 500);
  
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
}

public void draw(){
  background(0);
  
  for(int i = 0; i < stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
  
  bob.show();
  bob.move();
  
  if(w){
    bob.accelerate(0.05);
  }
  
  if(a){
    bob.turn(-5);
  }
  
  if(s){
    bob.accelerate(-0.04);
  }
  
  if(d){
    bob.turn(5);
  }
  
  for(int i = 0; i < 16; i++){
    rocks.add(new Asteroid());
    rocks.get(i).show();
    rocks.get(i).move();
    collision = dist((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (collision < 30)
      rocks.remove(i);
  }
}

public void keyPressed(){ 
  if(key == 'w'){
    w = true;
  }

  if(key == 'a'){
    a = true;
  }
  
  if(key == 's'){
    s = true;
  }
  
  if(key == 'd'){
    d = true;
  }
  
  if(key == 'r'){
    bob.hyperspace();
  }
}

public void keyReleased() {
  if(key == 'w'){
    w = false;
  }

  if(key == 'a'){
    a = false;
  }
  
  if(key == 's'){
    s = false;
  }
  
  if(key == 'd'){
    d = false;
  }  
}
