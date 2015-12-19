class UniLaser
{
  int unilaserxpos;
  int unilaserypos;
  PImage uniSprite;
  float xSpeed;
  float ySpeed;
  float targetY;
  float targetX;
  float angle;

  public UniLaser(int unilaserxpos, int  unilaserypos, int targetX, int targetY)
  {

    this.unilaserxpos=unilaserxpos;
    this.unilaserypos=unilaserypos;

    this.uniSprite = loadImage("rainbow.png"); 
    this.targetX = targetX;
    this.targetY = targetY;
    
    this.xSpeed = -7;
    this.ySpeed = -7 * (float)(targetY - 600) / (float)(targetX - 900);
    //0.1 is too cahnge the angle of the  uni shot
    this.angle = atan((targetY-unilaserypos + 0.1 ) / (targetX-unilaserxpos+0.1));
  }



  public void draw() {
    //println(ySpeed);
    println(angle);
    fill(255, 0, 0);
  ellipse(player1.xpos, player1.ypos, 10, 10);
  textSize(16);
  text("S:" + unilaserxpos + ", " +unilaserypos, 35, 50);
    
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
    unilaserypos += ySpeed+0.2;

    color downPixel = get(int(unilaserxpos-25), int(unilaserypos-5));
    if (downPixel==-16777216)
    {

     unilaserypos=unilaserypos+100000;
    }    
      if(unilaserypos>=int(targetY) && unilaserypos <= int(targetY + 79) && unilaserxpos>=int(targetX) && unilaserxpos <= int(targetX+76))
     {
       println("DEAD");
     }
    draw();
  }
}

