class Spaceship extends Floater {
  public Spaceship() {
    corners=25;  //the number of corners, a triangular floater has 3
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0] = -18;
    xCorners[1] = -14;
    xCorners[2] = -17;
    xCorners[3] = -11;
    xCorners[4] = 3;
    xCorners[5] = 12;
    xCorners[6] = 12;
    xCorners[7] = 16;
    xCorners[8] = 16;
    xCorners[9] = 12;
    xCorners[10] = 12;
    xCorners[11] = 3;
    xCorners[12] = 13;
    xCorners[13] = 3;
    xCorners[14] = 12;
    xCorners[15] = 12;
    xCorners[16] = 16;
    xCorners[17] = 16;
    xCorners[18] = 12;
    xCorners[19] = 12;
    xCorners[20] = 3;
    xCorners[21] = -11;
    xCorners[22] = -17;
    xCorners[23] = -14;
    xCorners[24] = -18;
    yCorners[0] = 4;
    yCorners[1] = 4;
    yCorners[2] = 11;
    yCorners[3] = 15;
    yCorners[4] = 10;
    yCorners[5] = 10;
    yCorners[6] = 8;
    yCorners[7] = 8;
    yCorners[8] = 6;
    yCorners[9] = 6;
    yCorners[10] = 4;
    yCorners[11] = 4;
    yCorners[12] = 0;
    yCorners[13] = -4;
    yCorners[14] = -4;
    yCorners[15] = -6;
    yCorners[16] = -6;
    yCorners[17] = -8;
    yCorners[18] = -8;
    yCorners[19] = -10;
    yCorners[20] = -10;
    yCorners[21] = -15;
    yCorners[22] = -11;
    yCorners[23] = -4;
    yCorners[24] = -4;
    myColor=color(255, 255, 255);
    myCenterX= 400;
    myCenterY=700; //holds center coordinates
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
  public void setXspeed(int x){
   myXspeed = x;
  }
  public void setYspeed(int y){
   myYspeed = y;
  }
  public double getXspeed(){
   return myXspeed;
  }
  public double getYspeed(){
   return myXspeed; 
  }
  public double getPointDirection(){
   return myPointDirection; 
  }
  public void setPointDirection(int x){
   myPointDirection = x; 
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
