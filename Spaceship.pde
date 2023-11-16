class Spaceship extends Floater {
  public Spaceship() {
    corners=3;  //the number of corners, a triangular floater has 3
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]= -8;
    yCorners[0]=  -8;
    xCorners[1]= 16;
    yCorners[1]= 0;
    xCorners[2]= -8;
    yCorners[2]= 8;
    myColor=255;
    myCenterX= myCenterY=250; //holds center coordinates
    myXspeed=myYspeed=0; //holds the speed of travel in the x and y directions
    myPointDirection=0;
  }
  public void hyperSpace() {
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public double getX() {
    return myCenterX;
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public double getY() {
    return myCenterY;
  }
  public void setY(int y ) {
    myCenterY = y;
  }
  public void addSpeed() {
    myXspeed = myXspeed + 0.1 * Math.cos(radians((float)myPointDirection));
    myYspeed = myYspeed + 0.1 * Math.sin(radians((float)myPointDirection));
  }
  public void subSpeed() {
    myXspeed = myXspeed - 0.1 * Math.cos(radians((float)myPointDirection));
    myYspeed = myYspeed - 0.1 * Math.sin(radians((float)myPointDirection));
  }
}
