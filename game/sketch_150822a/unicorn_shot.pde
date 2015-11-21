class uniLaser
{
  float unilaserxpos;
  float unilaserypos;
float uniangle;
  PImage uniSprite;
  float unilaserSpeed;

  public uniLaser(float unilaserxpos, float  unilaserypos,  PImage uniSprite)
  {
    this.unilaserxpos=unilaserxpos;
    this.unilaserypos=unilaserypos;
   
    this.uniSprite = uniSprite;
    this.unilaserSpeed = 5;
  }


  public void draw() {
    image(uniSprite, unilaserxpos, unilaserypos);
   
  }

  public void update()
  {
    unilaserxpos += unilaserSpeed * cos(radians(uniangle-90));
    unilaserypos += unilaserSpeed * sin(radians(uniangle-90));
    color downPixel = get(int(unilaserxpos), int(unilaserypos));
    if (downPixel==-16777216)
    {
      print("stop"); 
      unilaserxpos=unilaserypos+100000;
      
    }
    
    draw();
    
  } 
}


