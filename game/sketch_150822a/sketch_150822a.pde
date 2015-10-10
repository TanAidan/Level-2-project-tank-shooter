 boolean canShoot=true;
float degrees;

Tank player1;

PImage map;


ArrayList<Laser> laserArray = new ArrayList<Laser>();
void setup()
{
  frameRate(1000);
  player1=new Tank(30, 419, 90, loadImage("tank.png") );
  size(1024, 768);


  map=loadImage("background.png");


  background(map);
}
void draw()
{

  
   
  background(map);
  
  if (keyPressed== true) {
    if(key==' ')
   {
    canShoot=false;
    laserArray.add(new Laser(player1.xpos+50,player1.ypos+50,player1.angle,loadImage("good laser shot.png"))); 
     println(laserArray.size());
   }
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
  
   degrees = radians(player1.angle);
  
  pushMatrix();
  translate(player1.xpos, player1.ypos);
  rotate(degrees);
  image(player1.sprite, -42.5, -40.5);

  popMatrix();


 
  //print(upBound);

  for(Laser ls : laserArray)
   {
   ls.update();
   }
}

