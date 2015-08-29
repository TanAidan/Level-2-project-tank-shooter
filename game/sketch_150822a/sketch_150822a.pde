class tankClass{

 

}
PImage tank;
tank=loadImage("tank.png");
void setup()
{
  
     
  tankClass player=new tankClass();
  
}
void draw()

{
  image(tank,0,0);
  
  
}
void keyPressed()
{
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
