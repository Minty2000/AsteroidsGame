class Star { //note that this class does NOT extend Floater
  private int x, y;
  public Star() {
    x=(int)(Math.random()*width);
    y=(int)(Math.random()*height);
  }
  public void show() {
    noStroke();
    fill((int)(Math.random()*256 +180),(int)(Math.random()*256+180),0);
    ellipse(x, y, 10, 10);
  }
}
