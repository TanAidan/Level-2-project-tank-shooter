class UniLaser
{
  int unilaserxpos;
  int unilaserypos;
  float uniangle;
  PImage uniSprite;
  float unilaserSpeed;
  int targetY;
  int targetX;

  public UniLaser(int unilaserxpos, int  unilaserypos, int targetX, int targetY)
  {
    this.unilaserxpos=unilaserxpos;
    this.unilaserypos=unilaserypos;

    this.uniSprite = loadImage("rainbow.png");
    this.unilaserSpeed = 150;
    this.targetX=targetX;
    this.targetY=targetY;
  }




  public void update()
  {
    unilaserxpos += unilaserSpeed * cos(radians(uniangle-90));
    // unilaserypos -= unilaserSpeed * sin(radians(uniangle-90));


    bulletRotate();
    
  } 
  public void bulletRotate() {
    int xLoc=925;
    int yLoc=625;
    int distX = xLoc -targetX;
    int distY = yLoc - targetY;

    //pushes current xy plain
    pushMatrix();

    translate(xLoc, yLoc);

    uniangle = atan((distY + .01) / (distX +.01));

    if (distX < 0) {
      uniangle += PI;
    }
    uniangle += PI;                  
    //rotates the xyplain to point gun towards the mouse'

    rotate(uniangle);

    translate(-xLoc, -yLoc);
    image(uniSprite, unilaserxpos, unilaserypos);
    //reverts to pushed xy plain
    popMatrix();
  }
}

