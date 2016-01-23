class gates {
  int rightdegrees;
  int leftdegrees;
  boolean show = true;

  gates() {
  }

  void show() {
    if (show) {
      rightdegrees = -leftdegrees;
      pushMatrix();
      translate(850, 82);
      rotate(radians(leftdegrees));
      translate(-850, -82);
      rect(850, 68, rectX, 14);
      popMatrix();

      pushMatrix();
      translate(933, 82);
      rotate(radians(rightdegrees));
      translate(-933, -82);
      rect(933, 68, -rectX, 14);
      popMatrix();
    }
  }
  void open() {
    if (leftdegrees < 130)
      leftdegrees+=1;
    else
      show = false;
  }
}

