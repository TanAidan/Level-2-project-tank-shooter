
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
      
    player1.rotateRight();
        
      
    }
    if (keyCode ==LEFT) {
      player1.rotateLeft();
      
    }
  }
  background(map);
   degrees = radians(player1.angle);
  
  pushMatrix();
  translate(player1.xpos, player1.ypos);
  rotate(degrees);
  image(player1.sprite, -42.5, -40.5);

  popMatrix();


 
  //print(upBound);

  /*for(laser ls: LaserArray)
   {
   ls.update();
   }*/
}
/*public int num()
  {
  return num;
  
  }
  public int num1()
  {
   return num1; 
  }
  */
