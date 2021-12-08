class Spaceship extends Floater {
  public Spaceship() {
    corners = 14;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = 6;
    xCorners[1] = -12;
    yCorners[1] = -6;
    xCorners[2] = -3;
    yCorners[2] = -15;
    xCorners[3] = 9;
    yCorners[3] = -15;
    xCorners[4] = 15;
    yCorners[4] = -9;
    xCorners[5] = 30;
    yCorners[5] = -6;
    xCorners[6] = 30;
    yCorners[6] = -3;
    xCorners[7] = 21;
    yCorners[7] = -3;
    xCorners[8] = 21;
    yCorners[8] = 3;
    xCorners[9] = 30;
    yCorners[9] = 3;
    xCorners[10] = 30;
    yCorners[10] = 6;
    xCorners[11] = 15;
    yCorners[11] = 9;    
    xCorners[12] = 9;
    yCorners[12] = 15;  
    xCorners[13] = -3;
    yCorners[13] = 15; 
    myColor = color(180);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  } 
  
  public void hyperspace() {
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    myPointDirection = Math.random() * 180;
    myCenterX = (int)(Math.random() * 440) + 30;
    myCenterY = (int)(Math.random() * 440) + 30;
  }
}
