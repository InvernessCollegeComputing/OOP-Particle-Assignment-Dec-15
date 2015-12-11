class Particle{
  
  PVector coords;
  float diameter;
  float radius;
  
 // color particleFill;
  
  PVector speed;
  
  
  Particle(PVector initialCoords, float initialDiameter, 
           color initialFill, PVector initialSpeed){
             
           coords = initialCoords;
           diameter = initialDiameter;
    //       particleFill = initialFill;
           radius = diameter * 0.5;
           speed = initialSpeed;
           
  }
  
  void drawParticle(){
    
    noStroke();
    color pixel = car.get(int(coords.x),int(coords.y)); // create color variable and use .get on car image to get the colour of individual pixels. Store them in c
    fill(pixel); // each particle will now be filled with the pixel colour stored in c
    ellipse(coords.x, coords.y, diameter, diameter);
    
  }
  
  void updateParticlePosition(){
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
  }
  
  
}