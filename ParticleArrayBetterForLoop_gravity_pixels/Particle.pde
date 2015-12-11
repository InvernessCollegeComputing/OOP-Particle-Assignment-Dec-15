class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  
  color particleFill;
  
  PVector speed;
  PVector gravity; //
  
  
  float lifespan; //lifespan of particle
  
    Particle(PVector initialCoords, float initialDiameter, 
           color initialFill, PVector initialSpeed){
             
           coords = initialCoords;
           diameter = initialDiameter;
           particleFill = initialFill;
           radius = diameter * 0.5;
           speed = initialSpeed;
           lifespan = 255.0;
           gravity = new PVector(0,0.2);
           
  }
  
  void run(color c) {
   particleFill = c;
   drawParticle(c); 
   updateParticlePosition();
   bounce();
   }
  
  
  void drawParticle(color c){
    particleFill = c;
    stroke(4,lifespan);
    fill(particleFill,lifespan);
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
   void updateParticlePosition(){
   
   // coords.x = coords.x + speed.x;
   // coords.y = coords.y + speed.y;
    lifespan -= 0.20;
    
    coords.add(speed);
  // Add gravity to speed(velocity)
    speed.add(gravity);
    }
  
   void bounce(){
     if ((coords.x > width-diameter) || (coords.x < 0+diameter)) {
    speed.x = speed.x * -1;
    
  }
  if (coords.y > height-diameter/2) {
    // Reducing velocity when it hits the bottom of the screen
    speed.y = speed.y * -0.90; //damp the speed on each bounce
    coords.y = height-diameter/2;
  }   
   }
   
   // Is the Particle alive or dead?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
 
 // get particle x position
  int getX(){
    return int(coords.x);
  }
  
  // get particle y position
  int getY(){
    return int(coords.y);
  }
  
}

  