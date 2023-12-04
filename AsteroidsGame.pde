Star [] s = new Star [100];
Spaceship ship = new Spaceship();
ArrayList <Asteroids> ash = new ArrayList<Asteroids>();
boolean PW = false;
boolean PS = false;
boolean PA = false;
boolean PD = false;
boolean PSp = false;
public void setup() {
  size (500, 500);
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
  for(int i = 0;i<50;i++){
   ash.add(new Asteroids());
  }
}
public void draw() {
  background(0);
  for (int i = 0; i<s.length; i++) {
    s[i].show();
  }
  for(int i = 0;i<ash.size();i++){
     ash.get(i).show(); 
     ash.get(i).move();
     float d= dist((float)(ship.getX()), (float)(ship.getY()), (float)(ash.get(i).getX()), (float)(ash.get(i).getY()));
  if(d < 12){
    ash.remove(i);
    ash.add(new Asteroids());
    }
  }
  ship.show();
  ship.move();
  checker();
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
