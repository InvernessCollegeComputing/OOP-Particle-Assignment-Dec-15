class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  int timer;
  
  PVector speed;
  
  
  Particle(PVector initialCoords, float initialDiameter, 
                                   PVector initialSpeed){
             
           coords = initialCoords;
           diameter = initialDiameter;
           radius = diameter * 0.5;
           speed = initialSpeed;
  }
  
  void drawParticle(){
    
    
    int newcoordsx = int(coords.x);
    int newcoordsy = int(coords.y);
    color particleFill = myImage.get(newcoordsx, newcoordsy);
    fill(particleFill);
    ellipseMode(CENTER);
    ellipse(coords.x, coords.y, diameter, diameter);
    
    
    if(Shake == true){
      speed.x = speed.x + random(-2,2);
      speed.y = speed.y - random(2,3);
      Shake = false;
    }
  }
  
  void updateParticlePosition(){
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
    
    
    //gravity y
    if(speed.y > 0){
      speed.y = speed.y + 0.09;
      speed.x = speed.x - 0.01;
    }
    if(speed.y < 0){
      speed.y = speed.y + 0.12;
      speed.x = speed.x - 0.01;
    }
    if(speed.y == 0){
      speed.y = speed.y + 0.09;
    }
    
    //gravity x
   if(speed.x < 0.011 && speed.x > -0.011){
     speed.x = 0;
   }
    
  
    }
    
    
      
    
}