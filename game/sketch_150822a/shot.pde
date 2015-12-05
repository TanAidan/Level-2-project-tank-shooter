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
    this.laserSpeed = 10;
  }


  public void draw() {
    image(laserSprite, laserxpos, laserypos);
   
  }

  public void update()
  {
    laserxpos += laserSpeed * cos(radians(angle-90));
    laserypos += laserSpeed * sin(radians(angle-90));
    color downPixel = get(int(laserxpos), int(laserypos));
    if (downPixel==COLOR_BLACK)
    {
 
      laserypos=laserypos+100000;
      
    }
    
    draw();
    
  } 
}
