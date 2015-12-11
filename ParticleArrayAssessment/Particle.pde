class Particle {
  
  PVector coords; 
  float diameter;
  float radius;
  color particleFill;
  PVector speed;
  float gravity;
  
  Particle(PVector initialCoords, float initialDiameter,  
    color initialFill, PVector initialSpeed, float initialGravity) {
      
    coords = initialCoords;
    diameter = initialDiameter;
    particleFill = initialFill;
    radius = diameter * 0.5;
    speed = initialSpeed;
    gravity = initialGravity;
  }

  void drawParticle() {
    noStroke();
    ellipse(coords.x, coords.y, diameter, diameter); // Uses PVectors for ellipse coordinates.
    diameter--; // The diameter decreases by 1 pixel each frame to simulate a shrinking effect.
    gravity += 0.2; // The gravity strength gradually increases each frame.
    coords.y += gravity; // Gravity strength is added to the Y axis of the particle.

    int currentPositionX = int(coords.x); // Variable created that is made equal to current particle position.
    int currentPositionY = int(coords.y);
    color particleFill = pictureOfApple.get(currentPositionX, currentPositionY); // Creates variable
    fill(particleFill);                                                          // that takes color
  }                                                                              // value from the 
                                                                                 // current array pos

  void updateParticlePosition() { // Moves particle position by adding the speed value to X/Y values.
    coords.x = coords.x + speed.x;
    coords.y = coords.y + speed.y;
  }
}