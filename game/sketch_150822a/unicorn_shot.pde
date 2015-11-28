class uniLaser
{
  float unilaserxpos;
  float unilaserypos;
  float uniangle;
  PImage uniSprite;
  float unilaserSpeed;

  public uniLaser(float unilaserxpos, float  unilaserypos, PImage uniSprite)
  {
    this.unilaserxpos=unilaserxpos;
    this.unilaserypos=unilaserypos;

    this.uniSprite = uniSprite;
    this.unilaserSpeed = 100;
  }




  public void update()
  {
    unilaserxpos += unilaserSpeed * cos(radians(uniangle-90));
    // unilaserypos -= unilaserSpeed * sin(radians(uniangle-90));

    color downPixel = get(int(unilaserxpos), int(unilaserypos));
    if (downPixel==-16777216)
    {
      print("stop"); 
      unilaserxpos=unilaserypos+100000;
    }

    bulletRotate();
  } 
  public void bulletRotate() {
    int xLoc=923;
    int yLoc=607;
    int distX = xLoc -player1.xpos;
    int distY = yLoc - player1.ypos;

    //pushes current xy plain
    pushMatrix();

    translate(xLoc, yLoc);

    uniangle = atan((distY + .01) / (distX +.01));

    if (distX < 0) {
      uniangle += PI;
    }
    uniangle += PI;                  
    //rotates the xyplain to point gun towards the mouse
    rotate(uniangle);

    translate(-xLoc, -yLoc);
    image(uniSprite, unilaserxpos, unilaserypos);
    //reverts to pushed xy plain
    popMatrix();
  }
}

