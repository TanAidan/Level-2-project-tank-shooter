
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
this.ypos=this.ypos-movementSpeed;
    
}
public void moveDown()
{
  this.ypos=this.ypos+movementSpeed;
  
  
}

public void moveRight()
{
  this.xpos=this.xpos+movementSpeed;
  
  
  
}
public void moveLeft()
{
  this.xpos=this.xpos-movementSpeed;
  
  
  
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

  



