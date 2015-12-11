class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  
  color particleFill;
  
  PVector speed;
  
  float lifespan; //lifespan of particle
  
  /*
  Particle(PVector initialCoords, float initialDiameter){
             
          //setup 
  }
  */
  Particle(PVector initialCoords, float initialDiameter, 
           color initialFill, PVector initialSpeed){
             
           coords = initialCoords;
           diameter = initialDiameter;
           particleFill = initialFill;
           radius = diameter * 0.5;
           speed = initialSpeed;
           lifespan = 255.0;
  }
  
  void run() {
   drawParticle();
   updateParticlePosition();
      }
  
  
  void drawParticle(){
    
    stroke(0,lifespan);
    fill(particleFill,lifespan);
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
  void updateParticlePosition(){
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    lifespan -= 2.0;
    
  }
  
   // Is the Particle alive or dead?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }

}
  