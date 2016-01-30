class UniLaser
{
  float unilaserxpos;
  float unilaserypos;
  PImage uniSprite;
  float xSpeed;
  float ySpeed;
  float targetY;
  float targetX;
  float angle;
  boolean dead=false;
  public UniLaser(int unilaserxpos, int  unilaserypos, int targetX, int targetY)
  {
    this.unilaserxpos=unilaserxpos;
    this.unilaserypos=unilaserypos;

    this.uniSprite = loadImage("rainbow.png"); 
    this.targetX = targetX;
    this.targetY = targetY;

    this.xSpeed = -10;
    this.ySpeed = -10 * (float)(targetY - 600) / (float)(targetX - 900);
    //0.1 is too cahnge the angle of the  uni shot
    this.angle = atan((targetY-unilaserypos + 0.1 ) / (targetX-unilaserxpos+0.1));
  }
  public void draw() {
    //println(ySpeed);
    fill(255, 0, 0);
    ellipse(player1.xpos, player1.ypos, 10, 10);
   
    pushMatrix();
    translate(unilaserxpos, unilaserypos);
    //rotates the xyplain to point gun towards the mouse
    rotate(angle );

    translate(-unilaserxpos, -unilaserypos);
    image(uniSprite, unilaserxpos, unilaserypos);
    //reverts to pushed xy plain
    popMatrix();
  }
  public void update()
  {
    unilaserxpos += xSpeed;
    unilaserypos += ySpeed;

    draw();
  }
}

