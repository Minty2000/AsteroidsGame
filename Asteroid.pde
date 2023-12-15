class Asteroids extends Floater{
  private double rotSpeed;
  public Asteroids(){
    rotSpeed = (int)(Math.random()*20-10);
    corners = 6;
    xCorners = new int[]{-14,12,17,13,-10,-17,-14};
    yCorners = new int[]{-15,-14,7,15,13,5,15};
    myColor = (int)(Math.random()*100+120);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*3+2);
    myYspeed = (int)(Math.random()*3);
    myPointDirection = (int)(Math.random()*360);
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
