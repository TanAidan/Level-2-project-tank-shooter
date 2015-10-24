boolean canShoot=true;
float degrees;
boolean[] keys = new boolean[6];
int xpos2=35;
int ypos2=-3;
Tank player1;

PImage map;


ArrayList<Laser> laserArray = new ArrayList<Laser>();
void setup()
{

  player1=new Tank(30, 419, 90, loadImage("tank.png") );
  size(1024, 768);


  map=loadImage("background.png");


  background(map);
}
void draw()
{



  background(map);

  if (keyPressed== true) {
    if (key==' ')
    {
      canShoot=false;
      laserArray.add(new Laser(player1.xpos,player1.ypos, player1.angle, loadImage("lazer.png")));
    }
    if (keys[0]) {
      player1.moveUp();
    }
    if (keys[1]) {
      player1.moveLeft();
    }
    if (keys[2]) {
      player1.moveDown();
    }
    if (keys[3]) {
      player1.moveRight();
    }
    if (keyCode ==RIGHT) {

      player1.rotateRight();
    }
    if (keyCode ==LEFT) {
      player1.rotateLeft();
    }
  }
for (Laser ls : laserArray)
  {
    ls.update();
  }
  player1.draw();
  
}

void keyPressed() {
  if (key == 'w') {
    keys[0] = true;
  }
  if (key == 'a') {
    keys[1] = true;
  }
  if (key == 's') {
    keys[2] = true;
  }
  if (key == 'd') {
    keys[3] = true;
  }
}

void keyReleased() {
  if (key == 'w') 
    keys[0] = false;
  if (key == 'a') 
    keys[1] = false;
  if (key == 's') 
    keys[2] = false;
  if (key == 'd') 
    keys[3] = false;
}