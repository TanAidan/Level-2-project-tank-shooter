boolean canShoot=true;
float degrees;
boolean[] keys = new boolean[6];
int xpos2=35;
int ypos2=-3;
Tank player1;
unicorn unicorn1;
PImage map;


ArrayList<Laser> laserArray = new ArrayList<Laser>();
void setup()
{

  player1=new Tank(30, 419, 90, loadImage("tank.png") );
  size(1025, 769);
unicorn1=new unicorn(920, 585, loadImage("images.png"));

  map=loadImage("background.png");  


  background(map);
}
void draw()
{


println(mouseX);
println(mouseY);
  background(map);

  if (keyPressed== true) {
    if (keys[4])  
    {
      canShoot=false;
      laserArray.add(new Laser(player1.xpos,player1.ypos-5, player1.angle, loadImage("lazer.png")));
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
      
      unicorn1.unimissle();
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
  if(key==' '){
    keys[4]=true;
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
    if(key==' '){
    keys[4]=false;
  }
  println(player1.xpos);
  println(player1.ypos);
}

