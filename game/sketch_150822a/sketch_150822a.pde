import javax.swing.*;
PImage key2;
sketch_150822a sketch =  this ;
Button restart=new Button(300, 513, 384, "Restart");
int COLOR_BLACK = -16777216;
boolean canShoot=true;
float degrees;
boolean[] keys = new boolean[6];
boolean dead=false;
int xpos2=35;
int ypos2=-3;
Tank player1;
unicorn unicorn1;
PImage map;
PImage map2;
ArrayList<UniLaser> uniArray = new ArrayList<UniLaser>();
ArrayList<Laser> laserArray = new ArrayList<Laser>();
int m =0;
gates gate = new gates();
int s=0;
float rectY = 80;
float rectZ=85;
int rectX = 41;
void setup()
{
  JOptionPane.showMessageDialog(null, "Kill the unicorn and you will unlock the gates to freedom. !!!");
  JOptionPane.showMessageDialog(null, "W-A-S-D to move and space to shoot");
  player1=new Tank(30, 300, 90, loadImage("tank.png") );
  size(1025, 769);
  unicorn1=new unicorn(920, 585, loadImage("images.png"));
  map=loadImage("backgroundkkk.png");



  background(map);
}
void draw()
{

  println(mouseX);
  println(mouseY);
  background(map);
  PImage img;
  fill(0);
  gate.show();
  img=loadImage("imgres.jpg");
  noStroke();
  fill(255, 0, 0);
  rect(920, 537, rectZ, 18);
  fill(0, 0, 255);
  rect(923, 539, rectY, 13);
  stroke(0);
  fill(255, 0, 0);
  ellipse(player1.xpos, player1.ypos, 10, 10);
  fill(0);
  rect(0,200,5,200);

  if (rectY<=0)
  {
    rectY=0;
    rectZ=0;
    fill(0, 102, 153);
    gate.open();
  }
  if (millis() - m >= 2000) {
    m += 2000;
    uniArray.add(new UniLaser(923, 607, player1.xpos, player1.ypos));
  }
  if (keyPressed== true) {
    if (keys[4])  
    {
      canShoot=false;
      laserArray.add(new Laser(player1.xpos, player1.ypos-5, player1.angle, loadImage("lazer.png")));
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


    if (ls.laserxpos>=924 && ls.laserypos>=510 && ls.laserypos<=705&&ls.laserxpos<=1000)
    {
      println("hi");
      rectY=rectY-0.1;
    }
  }
  player1.draw();


  if (rectY>0) {
    unicorn1.unimissle();
  }
  for (UniLaser ms : uniArray)
  {
    ms.update();
    color downPixel = get(int(ms.unilaserxpos-25), int(ms.unilaserypos-5));
    if (downPixel==-16777216)
    {
      ms.unilaserxpos+=1000;
      ms.unilaserypos+=1000;
    }
    if (ms.unilaserypos>=player1.ypos-39.5 && ms.unilaserypos <= player1.ypos +39.5 && ms.unilaserxpos>=player1.xpos-38 && ms.unilaserxpos <= player1.xpos+34)
    {
      player1.xpos=30;
      player1.ypos=419;
      dead=true;
    }

    if (dead) {
      
      background(200, 0, 0);
     

      restart.align(CENTER, CENTER);
      restart.setVisible(true);

      rectY=80;
       textSize(32);
      fill(0);
text("YOU ARE DEAD",500, 100); 
    }
  }
  if (player1.xpos>=871 && player1.ypos<=0)
  {
    background(0, 0, 200);
    restart.align(CENTER, CENTER);
    restart.setVisible(true);
  }
}

void resetGame() {
  uniArray = new ArrayList<UniLaser>();
  laserArray = new ArrayList<Laser>();
  dead=false;
  gate=new gates();
  background(map);
  player1.draw();
  player1.xpos= 30;
  player1.ypos=300;
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
  if (key==' ') {
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
  if (key==' ') {
    keys[4]=false;
  }
}

