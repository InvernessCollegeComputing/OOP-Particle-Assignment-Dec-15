class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  
  color particleFill;
  
  PVector speed;
  
  
  Particle(PVector initialCoords, float initialDiameter, 
           color initialFill, PVector initialSpeed){
             
           coords = initialCoords;
           diameter = initialDiameter;
           particleFill = initialFill;
           radius = diameter * 0.5;
           speed = initialSpeed;
  }
  
  void drawParticle(){
    
    noStroke();
    fill(particleFill);
    ellipse(coords.x, coords.y, diameter, diameter);
    
    
    
   coords.x = mouseX;    //relate x position of the ellipse to the x position of the mouse
   coords.y = mouseY;    //relate y position of the ellipse to the y position of the mouse
    
  }
  
  void updateParticlePosition(){
   
    
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
    
    
  }
  
  
}