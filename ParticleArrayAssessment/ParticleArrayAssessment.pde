// - - - Sean McLelland 13002827 - - -

// - - -  ArrayLists Assessment - - -

//   __   ____  ____  ____  ____  ____  _  _  ____  __ _  ____   //
//  / _\ / ___)/ ___)(  __)/ ___)/ ___)( \/ )(  __)(  ( \(_  _)  //
// /    \\___ \\___ \ ) _) \___ \\___ \/ \/ \ ) _) /    / (  )   // 
// \_/\_/(____/(____/(____)(____/(____/\_)(_/(____)\_)__) (__)   // 

ArrayList<Particle> listOfParticles; // ArrayList which will hold "Particle" objects.
PImage pictureOfApple;               // The variable name of a PImage stored in memory.

void setup() {
  size(800, 500); 
  listOfParticles = new ArrayList<Particle>(); // Contructor called from "Particle" class.
  colorMode(HSB, 100);
  pictureOfApple = loadImage("apple.jpg"); // Image loaded into memory and is equal to variable name.
}

void draw() {
  background(0, 0, 100);
  image(pictureOfApple, 0, 0); // Static image is rendered from top left.
  
  if (mousePressed) {                                             // Only runs this when clicked.
    listOfParticles.add(new Particle(new PVector(mouseX, mouseY), // Particle class's variables
      40,                                                         // given values.
      color(random(0, 100), 100, 100), 
      new PVector(random(-2, 2), 
      random(-2, 2)),0));
  }
  
  for (int i = 0; i < listOfParticles.size(); i++) { // A for loop which loops an equal amount of 
    Particle thisParticle = listOfParticles.get(i);  // times to the amount of objects in the array.
    thisParticle.updateParticlePosition();           // It then takes current Particle with "(i)"
    thisParticle.drawParticle();                     // and stores the value in "thisParticle."
                                                     // Lastly, it draws the particle and decides
                                                     // its position.
    if (thisParticle.diameter < 0) { // If the 'size' of the particle is less than 0 (aka not visable)
      listOfParticles.remove(i);     // it will remove it from the ArrayList.
    }
  }
}