

float degrees;
Tank player1;

PImage map;

//Laser[] laserArray = new Laser[0];
void setup()
{

  player1=new Tank(30, 419, 90, loadImage("tank.png") );
  size(1024, 768);


  map=loadImage("background.png");


  background(map);
}
void draw()
{

  //if(key==' ')
  // {
  //  append(laserArray, new Laser(player1.xpos,player1.ypos,player1.angle,loadImage("good laser shot.png")));

  // }

  if (keyPressed== true) {
    if (key == 'd') {
      player1.moveRight();
    }
    if (key == 'a') {
      player1.moveLeft();
    }
    if (key == 'w') {
      player1.moveUp();
    }
    if (key == 's') {
      player1.moveDown();
    }
    if (keyCode ==RIGHT) {
      player1.rotateLeft();
    }
    if (keyCode ==LEFT) {
      player1.rotateRight();
      
    }
  }
  background(map);
   degrees = radians(player1.angle);
  println(degrees);
  pushMatrix();
  translate(player1.xpos, player1.ypos);
  rotate(degrees);
  image(player1.sprite, -42.5, -40.5);

  popMatrix();


  fill(255, 0, 0);
  ellipse(player1.xpos, player1.ypos-50 , 5, 5);

  

  /*for(laser ls: LaserArray)
   {
   ls.update();
   }*/
}
public float returnAngle()
  {
  return degrees;
  
  }
