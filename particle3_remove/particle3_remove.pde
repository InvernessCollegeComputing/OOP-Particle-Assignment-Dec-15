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
  for(int i = 0; i < listOfParticles.size(); i++){
    Particle thisParticle = listOfParticles.get(i);
    thisParticle.updateParticlePosition();
    thisParticle.drawParticle();
    if(thisParticle.coords.y > 400 || thisParticle.coords.y < 100 || thisParticle.coords.x > 700 || thisParticle.coords.x < 100){
      listOfParticles.remove(i);
  }
  }
}  
 
 void keyReleased() {
  if (key == ENTER) {
    Shake = true;
  }
}


 