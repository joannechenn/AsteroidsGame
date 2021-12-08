class Star {
  private int myX, myY, mySize, myColor, mySpeed;
  
  public Star() {
    myX = (int)(Math.random() * 501);
    myY = (int)(Math.random() * 501);
    mySize = (int)(Math.random() * 8) + 3;
    myColor = color((int)(Math.random() * 131) + 125, (int)(Math.random() * 131) + 125, (int)(Math.random() * 131) + 125, (int)(Math.random() * 101) + 100);
    mySpeed = (int)(Math.random() * 2) + 1;
  }
  
  public void move() {
    myX = myX + mySpeed;
    if(myX > 512){
      myX = -12;
    }
  }
  
  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
