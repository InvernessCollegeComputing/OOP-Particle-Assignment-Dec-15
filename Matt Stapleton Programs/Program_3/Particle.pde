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
    color pixelcolour = car.get(int(coords.x),int(coords.y)); // create color variable and use .get on car image to get the colour of individual pixels. Store them in c
    fill(pixelcolour); // each particle will now be filled with the pixel colour stored in c
    ellipse(coords.x, coords.y, diameter, diameter);
    
    if(pixelcolour == 0){ //if statement that if the colour in pixel =black then change the fill colour to red and draw ellipse
      
      fill(255,0,0); // red colour
      ellipse(coords.x, coords.y, diameter *2, diameter); //draw ellipse (particle)
    }
    
    if(coords.x < 0){  //if particles x position is smaller than 0 set the coords.x to width. This will give the illusion of the particle hitting the screen and bouncing back
      
     coords.x = width; 
      
      
    }
    
    if(coords.x > width){//if particles x position is greater than width set the coords.x to 0. This will give the illusion of the particle hitting the screen and bouncing back
      
      coords.x = 0;
      
    }
    
    if(coords.y < 0){ //if particles y position is smaller than 0 set the coords.y to height. This will give the illusion of the particle hitting the screen and bouncing back
      
      coords.y = height;
      
    }
    
    if(coords.y > height){ //if particles y position is greater than height set the coords.y to 0. This will give the illusion of the particle hitting the screen and bouncing back
      
      coords.y = 0;
      
      
    }
    
  }
  
  void updateParticlePosition(){
   
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
    
  }
  
  
}