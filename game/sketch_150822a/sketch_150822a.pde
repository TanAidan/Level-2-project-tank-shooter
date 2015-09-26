
float degrees;
int num=0;
int num1=0;
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
        
      num=num-1;
      if(num<0){
        num=0;
      }
      num1=num1-1;
      if(num1<0){
        num1=0;
      }
      
    }
    if (keyCode ==LEFT) {
      player1.rotateRight();
      
      
       num=num+1;
      if(num>15){
        num=15;
      }
       num1=num1+1;
      if(num1>10){
        num1=10;
      }
    }
  }
  background(map);
   degrees = radians(player1.angle);
  
  pushMatrix();
  translate(player1.xpos, player1.ypos);
  rotate(degrees);
  image(player1.sprite, -42.5, -40.5);

  popMatrix();


  fill(255, 0, 0);
  ellipse(player1.xpos, player1.ypos-50 , 5, 5);
fill(255, 0, 0);
  ellipse(player1.xpos-50, player1.ypos , 5, 5);

  print(num);

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
