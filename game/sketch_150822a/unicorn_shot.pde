
  
class UniLaser
{
  int unilaserxpos;
  int unilaserypos;
  PImage uniSprite;
  float xSpeed;
  float ySpeed;
  int targetY;
  int targetX;

  public UniLaser(int unilaserxpos, int  unilaserypos, int targetX, int targetY)
  {

    this.unilaserxpos=unilaserxpos;
    this.unilaserypos=unilaserypos;

    this.uniSprite = loadImage("rainbow.png"); 
    this.targetX = targetX;
    this.targetY = targetX;
    
    this.xSpeed = -5;
    this.ySpeed = (targetY - unilaserypos) / (targetX - unilaserxpos);
  }



  public void draw() {
    image(uniSprite, int(unilaserxpos), int(unilaserypos));
    println(unilaserxpos);
  }

  public void update()
  {
    unilaserxpos += xSpeed;
    unilaserypos -= ySpeed;

    color downPixel = get(int(unilaserxpos), int(unilaserypos));
    //if (downPixel==-16777216)
    //{

    // unilaserypos=unilaserypos+100000;
    //}    
    draw();
  }
}


