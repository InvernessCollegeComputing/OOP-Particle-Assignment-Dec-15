/* Matthew Stapleton 13006126

Particle programming using moving particles to reveal a car image

*/


ArrayList<Particle> listOfParticles;
PImage car; //create space in ram for variable called car

void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
 
  
  
  colorMode(RGB, 100); //colour mode red,green,blue
  car = loadImage("car.png"); // load up an image called car.png and store it in variable called car
 
}
 

void draw(){
  
 background(0);
  
    
    listOfParticles.add(new Particle(new PVector(random(0,width), random(0,height)), //random positions of particles. .add adds a particle everyframe rate under 
                                     2,                                             // void draw function.  //size of particle changed from 10 to 2.
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