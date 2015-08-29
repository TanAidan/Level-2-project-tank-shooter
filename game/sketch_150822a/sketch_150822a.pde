


     Tank player1=new Tank(0,375,270, "tank.png");




void setup()
{
  size(1024,768);
   PImage map;
  
    map=loadImage("background.png");
    
  
  background(map);
  


  
}
void draw()
{
image(player1.sprite,player1.xpos, player1.ypos);
 pushMatrix();
 translate(player1.xpos, player1.ypos);
 rotate(radians(player1.angle));
  translate(0,0);
  popMatrix();
  
}

/*void keyPressed()
{
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
*/
