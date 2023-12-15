class Bullet extends Floater{
 public Bullet(Spaceship Spaceship){
   myColor = #87CEEB;
   myCenterX = Spaceship.getX();
   myCenterY = Spaceship.getY();
   myXspeed = Spaceship.getXspeed();
   myYspeed = Spaceship.getYspeed();
   myPointDirection = Spaceship.getPointDirection();
   accelerate(6);
   
 }
 public void show(){
   fill(myColor);
   if(myCenterX < 800 && myCenterX > 0 &&  myCenterY >0 && myCenterY<800){
     ellipse((float)myCenterX,(float)myCenterY,5,5);
   }
 }
 public void move ()   //move the floater in the current direction of travel
  {
    //change the x and y coordinates by myXspeed and myYspeed
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    
  }
  public double getX() {
    return myCenterX;
  }
   public double getY() {
    return myCenterY;
  } 
}
