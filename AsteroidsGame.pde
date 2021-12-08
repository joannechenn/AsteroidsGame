Star[] stars = new Star[175];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
boolean w, a, s, d;

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
  
  rocks.add(new Asteroid());
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





