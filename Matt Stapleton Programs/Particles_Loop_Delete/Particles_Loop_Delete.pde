ArrayList<Particle> listOfParticles;


void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(HSB, 100);
  
}
 

void draw(){
  
  background(0, 0, 100);
  
    
    listOfParticles.add(new Particle(new PVector(width/2, height/2),
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
   
 for (int i = listOfParticles.size() - 1; i >= 0; i--) { //for loop running throught the listOfParticles array. .size is the length of the array as it grows.
  Particle thisParticle = listOfParticles.get(i); // .get pulls an particle positioned i from the arraylist listOfParticles.
  if (thisParticle.coords.x > width || thisParticle.coords.x < 0 || thisParticle.coords.y > height || thisParticle.coords.y < 0 ) {   //.finish kills the activity instance.
    listOfParticles.remove(i); // .remove(i) removes position i particle from the array list
  } 
 }

/////////////Testing to See if particles are being removed after reaching screen boundaries/////////////////
int total = listOfParticles.size();  // .size finds out the size of the array and stores the value in int total variable.
println("The total number of particles is: " + total); //Display a message + the number in total.
}


// tested using printline to view number of particles in the array. The No. slowly goes up but that is due to the increase of slow moving particles on the screen.

   
  









  