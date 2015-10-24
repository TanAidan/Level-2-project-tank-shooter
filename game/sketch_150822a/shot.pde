class Laser
{
  float laserxpos;
  float laserypos;
  float angle;
  PImage laserSprite;
  float laserSpeed;

  public Laser(float laserxpos, float laserypos, float angle, PImage laserSprite)
  {
    this.laserxpos=laserxpos;
    this.laserypos=laserypos;
    this.angle=angle;
    this.laserSprite = laserSprite;
    this.laserSpeed = 5;
  }


  public void draw() {
    image(laserSprite, laserxpos, laserypos);
    print(laserxpos);
    print(laserypos);
  }

  public void update()
  {
    laserxpos += laserSpeed * cos(radians(angle-90));
    laserypos += laserSpeed * sin(radians(angle-90));
    draw();
  }
}