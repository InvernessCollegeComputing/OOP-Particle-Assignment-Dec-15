/* Matthew Stapleton 13006126 

Particle Program giving an image a different background

*/


ArrayList<Particle> listOfParticles;
PImage car; //create space in ram for variable called car

void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(RGB, 100);
  car = loadImage("car.png"); // load up an image called car.png and store it in variable called car
  background(0); // call the background once (with its colour set to 0 - black)
}
 

void draw(){
  
 
  
    
    listOfParticles.add(new Particle(new PVector(width/2, height/2), //position of particles start from the centre of the screen
                                     10,
                                     color(random(0, 100), 100, 100),
                                     new PVector(random(-4, 4), 
                                     random(-4, 4))));

  
  for(Particle thisParticle: listOfParticles){            // for loop that loops through the array
                                                          // and each time loads two functions     
                                                          // 1. updateparticleposition - update particle in relation to speed     
                                                          // 2. draw individual particles in accordance to what is set in particle class under void drawParticle     
                                                          // 
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
  }
  

}