class Asteroid extends Floater {
  private double rotSpeed;
  
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random() * 5) - 11;
    yCorners[0] = (int)(Math.random() * 5) - 8;
    xCorners[1] = (int)(Math.random() * 5) + 7;
    yCorners[1] = (int)(Math.random() * 5) - 8;
    xCorners[2] = (int)(Math.random() * 5) + 13;
    yCorners[2] = (int)(Math.random() * 5) + 0;
    xCorners[3] = (int)(Math.random() * 5) + 6;
    yCorners[3] = (int)(Math.random() * 5) + 10;
    xCorners[4] = (int)(Math.random() * 5) - 11;
    yCorners[4] = (int)(Math.random() * 5) + 8;
    xCorners[5] = (int)(Math.random() * 5) - 5;
    yCorners[5] = (int)(Math.random() * 5) + 0;
    myCenterX = (int)(Math.random() * 451);
    myCenterY = (int)(Math.random() * 451);
    myColor = color(90);
    myPointDirection = 0;
    myXspeed = (int)(Math.random() * 2) + 0.5;
    myYspeed = (int)(Math.random() * 2) + 0.5;
    rotSpeed = (int)(Math.random() * 6) + 2.0;
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
