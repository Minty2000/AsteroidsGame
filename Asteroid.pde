class Asteroids extends Floater{
  private double rotSpeed;
  public Asteroids(){
    rotSpeed = (int)(Math.random()*20-10);
    corners = 6;
    xCorners = new int[]{-14,12,17,13,-10,-17};
    yCorners = new int[]{-15,-14,7,15,13,5};
    myColor = (int)(Math.random()*100+100);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = (int)(Math.random()*3+1);
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
