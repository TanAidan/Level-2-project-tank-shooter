
class Tank
{
  float rotationSpeed=2.5;
  int movementSpeed=3;
  float angle;
  int xpos;
  int ypos;
  float vertBound=0;

  float hortBound=0;




  PImage sprite;
  public Tank(int xpos, int ypos, float angle, PImage sprite)
  {
    this.xpos=xpos;
    this.ypos=ypos;
    this.angle=angle;
    this.sprite = sprite;
  }

  public void moveUp()
  { 
    adjustAngle();
    color topPixel = get(xpos, ypos-int(36+vertBound));



    if (topPixel!=-16777216)
    {
      this.ypos=this.ypos-movementSpeed;
    }
    fill(255, 0, 0);
    ellipse(xpos, ypos-int(35+vertBound), 10, 10);
  }
  public void moveDown()
  {
    adjustAngle();
    color downPixel = get(xpos, ypos+int(35+vertBound));
    if (downPixel!=-16777216)
    {
      this.ypos=this.ypos+movementSpeed;
    }
  }

  public void moveRight()
  {
    adjustAngle();
    color rightPixel = get(xpos+int(40+hortBound), ypos);
    if (rightPixel!=-16777216)
    {
      this.xpos=this.xpos+movementSpeed;
    }
  }
  public void moveLeft()
  {
    adjustAngle();
    color leftPixel = get(xpos-int(40+hortBound), ypos);
    if (leftPixel!=-16777216)
    {
      this.xpos=this.xpos-movementSpeed;
    }
  }
  public void rotateLeft()
  {
    this.angle=this.angle-rotationSpeed;
  }
  public void rotateRight()
  {

    this.angle=this.angle+rotationSpeed;
  }
  public void adjustAngle()
  {

    if (angle>=360) {
      angle=angle-360;
    }
    if (angle<0) {
      angle=angle+360;
    }
    if (angle>=0&&angle<45)
    {
      vertBound=angle/2.55;
      hortBound=angle/2.75;
    } else if (angle>45&&angle<90)
    {
      vertBound=(angle-45)/2.55;
      hortBound=(angle-45)/2.75;
    } else if (angle>90&&angle<135) {
      vertBound=(angle-90)/2.55;
      hortBound=(angle-90)/2.75;
    } else if (angle>135&&angle<180) {
      vertBound=(angle-135)/2.55;
      hortBound=(angle-135)/2.75;
    } else if (angle>180&&angle<225) {
      vertBound=(angle-180)/2.55;
      hortBound=(angle-180)/2.75;
    } else if (angle>225&&angle<270) {
      vertBound=(angle-255)/2.55;
      hortBound=(angle-255)/2.75;
    } else if (angle>270&&angle<315) {
      vertBound=(angle-270)/2.55;
      hortBound=(angle-270)/2.75;
    } else if (angle>315&&angle<360) {
      vertBound=(angle-315)/2.55;
      hortBound=(angle-315)/2.75;
    }
  }
  public void draw() {
    degrees = radians(player1.angle);

    pushMatrix();
    translate(player1.xpos, player1.ypos);

    rotate(degrees);

    image(player1.sprite, -42.5, -40.5);


    popMatrix();
  }
}

