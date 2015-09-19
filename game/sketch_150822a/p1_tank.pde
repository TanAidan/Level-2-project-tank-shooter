
 class Tank
{
  float rotationSpeed=2.5;
  int movementSpeed=2;
  float angle;
  int xpos;
  int ypos;
  boolean stuck=true;
 
  
  
  

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
   color topPixel = get(xpos,ypos-35);
 println(topPixel);

 if(topPixel>=-1)
{
  this.ypos=this.ypos-movementSpeed;
}

}
public void moveDown()
{
  color downPixel = get(xpos,ypos+34);
  if(downPixel==(-1))
{
  this.ypos=this.ypos+movementSpeed;
}
  
}

public void moveRight()
{
  color rightPixel = get(xpos+37,ypos);
  if(rightPixel==(-1))
{
  this.xpos=this.xpos+movementSpeed;
}
  
  
}
public void moveLeft()
{
  color leftPixel = get(xpos-37,ypos);
  if(leftPixel==(-1))
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

public void shoot()
{
  
  
}
  
}

  



