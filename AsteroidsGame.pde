Star [] s = new Star [100];
Spaceship ship = new Spaceship();
ArrayList <Asteroids> ash = new ArrayList<Asteroids>();
ArrayList <Bullet> bull = new ArrayList<Bullet>();
boolean PW = false;
boolean PS = false;
boolean PA = false;
boolean PD = false;
boolean PSp = false;
int score= 0;
int hp = 100;
public void setup() {
  size (800, 800);
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i<20; i++) {
    ash.add(new Asteroids());
  }
}
public void draw() {
  if (hp > 0){
  background(0);
   fill(255);
   textSize(40);
   text("HP: "+ hp, 10,50);
   text("Score: "+score, 10,90);
  for (int i = 0; i<s.length; i++) {
    s[i].show();
  }
  for (int i = 0; i<ash.size(); i++) {
    ash.get(i).show();
    ash.get(i).move();
    float d= dist((float)(ship.getX()), (float)(ship.getY()), (float)(ash.get(i).getX()), (float)(ash.get(i).getY()));
    if (d < 12) {
      ash.remove(i);
      ash.add(new Asteroids());
      score-=10000;
      hp -= 10;
    }
  }
  for (int j = 0; j < ash.size(); j++) {
    for (int i = 0; i < bull.size(); i++) {
      if (dist((float)ash.get(j).getX(), (float)ash.get(j).getY(), (float)bull.get(i).getX(), (float)bull.get(i).getY() ) < 12) {
        ash.remove(j);
        bull.remove(i);
        ash.add(new Asteroids());
        score+= 500;
       
        break;
      }
    }
    
  }
  
  for (int i = 0; i<bull.size(); i++) {
    bull.get(i).move();
    bull.get(i).show();
  }
  ship.show();
  ship.move();
  checker();
  }else {
  fill(255);
  rect (0,0,width,height);
  textSize(150);
  fill (0);
  text("Game over", 50,400);
  textSize(25);
  text("Score: "+ score, 325,450);
  textSize(30);
  text("Press 1 to Play Again",290,550);
  if(score < 0){
   textSize(20);
   text("You can do better than that", 10,790);
  }
  if(score == 0){
   textSize(20);
   text("Looks like you didn't make any progress..",250,750);
  }
  if(score > 0){
   textSize(20);
   text("You know your cousin Justin gets "+ (score + score/2) +" without breaking a sweat..",150,750);
  }
}
}

public void keyPressed() {
  if (key == 'e') {
    ship.hyperSpace();
  }
  if (key == 'w') {
    PW = true;
  }
  if (key == 's') {
    PS = true;
  }
  if (key == 'a') {
    PA = true;
  }
  if (key == 'd') {
    PD = true;
  }
  if (key == ' ') {
    PSp = true;
  } else if (key =='q') {
    bull.add(new Bullet(ship));
  }
  if(hp == 0){
  if(key == '1'){
   hp = 100; 
   score = 0;
   ship.setXspeed(0);
   ship.setYspeed(0);
   ship.setX(400);
   ship.setY(700);
   ship.setPointDirection(0);
  }
  }
}

public void keyReleased() {
  if (key == 'w') {
    PW = false;
  }
  if (key == 's') {
    PS = false;
  }
  if (key == 'a') {
    PA = false;
  }
  if (key == 'd') {
    PD = false;
  }
  if (key == ' ') {
    PSp = false;
  } else if (key =='q') {
    bull.add(new Bullet(ship));
  }
}

public void checker() {
  if (PW == true) {
    ship.addSpeed();
  }
  if (PS == true) {
    ship.subSpeed();
  }
  if (PA == true) {
    ship.turn(-5);
  }
  if (PD == true) {
    ship.turn(5);
  }
}
