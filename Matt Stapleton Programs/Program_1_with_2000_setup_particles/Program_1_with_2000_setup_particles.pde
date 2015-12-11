/* Matthew Stapleton 13006126

Particle Program revealing an image with shooting particles

*/


ArrayList<Particle> listOfParticles;
PImage car; //create space in ram for variable called car

void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  
  for (int i = listOfParticles.size(); i < 2000; i++) {  //for loop running through the size of array and comparing it to the value 2000. if array is smaller keep 
                                                             // adding new paticles until the array size hits 2000.
    listOfParticles.add(new Particle(new PVector(random(0,width), random(0,height)), //random positions of particles,
                                     10,
                                     color(random(0, 100), 100, 100),
                                     new PVector(random(-4, 4), 
                                     random(-4, 4))));
  }
  
  colorMode(HSB, 100);
  car = loadImage("car.png"); // load up an image called car.png and store it in variable called car
  background(0); // call the background once (with its colour set to 0 - black)
}
 

void draw(){
  
 
  for(Particle thisParticle: listOfParticles){            // for loop that loops through the array
                                                          // and each time loads two functions
                                                          //  1. updateparticleposition - update particle in relation to speed
                                                          //  2. draw individual particles in accordance to what is set in particle class under void drawParticle
                                                          
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
  }
  

}