class unicorn {
  int xpos;
  int ypos;
  PImage sprite;
  public unicorn(int xpos, int ypos, PImage sprite)
  {
    this.xpos=xpos;
    this.ypos=ypos;
    this.sprite = sprite;
  }
  public  void unimissle() {

    int xLoc=956;
    int yLoc=641;
    int distX = xLoc -player1.xpos;
    int distY = yLoc - player1.ypos;
    //pushes current xy plain
    pushMatrix();
    translate(xLoc, yLoc);
    float angle = atan((distY + .01) / (distX +.01));
    if (distX < 0) {
      angle += PI;
    }
    angle += PI;                  
    //rotates the xyplain to point gun towards the mouse
    rotate(angle+2.49);

    translate(-xLoc, -yLoc);
    image(unicorn1.sprite, unicorn1.xpos, unicorn1.ypos);
    //reverts to pushed xy plain
    popMatrix();
  }
}

