
 class Tank
{
  float rotationSpeed=2.5;
  int movementSpeed=2;
  float angle;
  int xpos;
  int ypos;



  
  
  

  PImage sprite;
  public Tank(int xpos,int ypos,float angle,PImage sprite)
  {
    this.xpos=xpos;
    this.ypos=ypos;
   this.angle=angle;
    this.sprite = sprite;
  }
 
public void moveUp()
{ 
 

   color topPixel = get(xpos, ypos-(35-num));
 println(topPixel);

 if(topPixel!=-16777216)
{
  this.ypos=this.ypos-movementSpeed;
}

}
public void moveDown()
{
  color downPixel = get(xpos,ypos+(35-num));
  if(downPixel!=-16777216)
{
  this.ypos=this.ypos+movementSpeed;
}
  
}

public void moveRight()
{
  color rightPixel = get(xpos+(40+num1),ypos);
  if(rightPixel!=-16777216)
{
  this.xpos=this.xpos+movementSpeed;
}
  
  
}
public void moveLeft()
{
  color leftPixel = get(xpos-40-num1,ypos);
  if(leftPixel!=-16777216)
{
  this.xpos=this.xpos-movementSpeed;
}
  
  
}
public void rotateLeft()
{
   this.angle=this.angle+rotationSpeed;
  
  
  
}
public void rotateRight()
{
  
     this.angle=this.angle-rotationSpeed;
  
}
}


