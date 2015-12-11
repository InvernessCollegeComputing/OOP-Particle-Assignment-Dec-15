ArrayList<Particle> listOfParticles;

void setup() {

  size(800, 500); 

  listOfParticles = new ArrayList<Particle>();

  colorMode(HSB, 100);
}


void draw() {

  background(0, 0, 100);
  frameRate(10);

  if (mousePressed == true) { //If statement that if the mousebutton is pressed down then read the code between the curly brackets

    listOfParticles.add(new Particle(new PVector(mouseX, mouseY), //Create new particle with x &y position being that of the mouse's
      10, 
      color(random(0, 100), 100, 100), 
      new PVector(random(-4, 4), 
      random(-4, 4))));




    for (Particle thisParticle : listOfParticles) {            // This version uses a nicer for loop. You'll hear this described as:
      //      an enhanced for loop
      //      a range based for loop
      //      a for-each loop
      // It does exactly the same thing as the last example.
      thisParticle.updateParticlePosition();  //run updateparticleposition function
      thisParticle.drawParticle(); //run drawParticle function.
    }
  }
}