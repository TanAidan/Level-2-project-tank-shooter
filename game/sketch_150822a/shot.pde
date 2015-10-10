class Laser
{
  int laserxpos;
  int laserypos;
  float angle;
  PImage laserSprite;
 
   public Laser(int laserxpos,int laserypos,float angle,PImage laserSprite)
  {
    this.laserxpos=laserxpos;
    this.laserypos=laserypos;
   this.angle=angle;
    this.laserSprite = laserSprite;
  }
  
  public void update()
{
  
    image(laserSprite,laserxpos, laserypos);
  
}

}



