


     Tank player1;

PImage map;


void setup()
{
  player1=new Tank(30,419, 90,loadImage("tank.png") );
  size(1024,768);
   
  
    map=loadImage("background.png");
    
  
  background(map);
  


  
}
void draw()
{

  if(keyPressed== true) {
    if(key == 'd') {
     player1.moveRight();
      
  }
   if(key == 'a') {
     player1.moveLeft();
      
  }
   if(key == 'w') {
     player1.moveUp();
      
  }
   if(key == 's') {
     player1.moveDown();
      
  }
  if(keyCode ==RIGHT){
     player1.rotateLeft();
  }
  if(keyCode ==LEFT){
    player1.rotateRight();
  }
  }
    background(map);
  pushMatrix();
 translate(player1.xpos, player1.ypos);
 rotate(radians(player1.angle));
 image(player1.sprite, -42.5, -40.5);
 
  popMatrix();


}


