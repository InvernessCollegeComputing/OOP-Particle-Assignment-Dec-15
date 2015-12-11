ArrayList<Particle> listOfParticles;
PImage myImage;
boolean Shake = false;
void setup(){
  frameRate(60);
  size(800, 500); 
  
  listOfParticles = new ArrayList<Particle>();
  
  colorMode(HSB, 100);
}

void draw(){
 
  myImage = loadImage("rain.jpg");
  myImage.resize(800,500); 
  image(myImage, 0, 0);
  
 
    
    
    listOfParticles.add(new Particle(new PVector(random(700), 13),
                                     random(5,10), new PVector(random(-4, 4), 
                                     random(0, 4))));

  
  for(int i = 0; i < listOfParticles.size(); i++){
    Particle thisParticle = listOfParticles.get(i);
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
    if(thisParticle.coords.y > 485 || thisParticle.coords.y < 10 || thisParticle.coords.x > 785 || thisParticle.coords.x < 15){
      listOfParticles.remove(i);
  }
  }
}  
 
 void keyReleased() {
  if (key == ENTER) {
    Shake = true;
  }
}


 