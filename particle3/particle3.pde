ArrayList<Particle> listOfParticles;
PImage myImage;
boolean Shake = false;
void setup(){
  
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(HSB, 100);
}

void draw(){
 
  myImage = loadImage("colour.jpg");
  myImage.resize(810,510); 
  image(myImage, 0, 0);
  
  
  if(mousePressed){  
    listOfParticles.add(new Particle(new PVector(mouseX, mouseY),
                                     10, new PVector(random(-4, 4), 
                                     random(-4, 4))));

  }
  for(Particle thisParticle: listOfParticles){            // This version uses a nicer for loop. You'll hear this described as:
                                                          //      an enhanced for loop
                                      //      a for-each loop
                                                          // It does exactly the same thing as the last example.
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
    
    
} 

}  
 
 void keyReleased() {
  if (key == ENTER) {
    Shake = true;
  }
}


 