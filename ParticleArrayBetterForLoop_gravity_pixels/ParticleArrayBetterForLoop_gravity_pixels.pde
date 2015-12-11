
//mouse pressed adds one hundred new particles of random size


import java.util.Iterator;

PImage colorimg;

ArrayList<Particle> listOfParticles;

void setup() {

  size(800, 500); 

  colorMode(HSB, 100);
  listOfParticles = new ArrayList<Particle>();

  for (int i=0; i<1000; i++) {
    listOfParticles.add(new Particle(new PVector(random(width), random(height)), 
    20, 
    color(random(0, 100), 100, 100), 
    new PVector(random(-4, 4), 
    random(-4, 4))));
  }

  colorMode(HSB, 100);
  colorimg = loadImage("pixels.jpg");

  colorimg.loadPixels();

}


void draw() {

  background(0, 0, 100);
 //frameRate(12);
/*
  colorimg = loadImage("colors.jpg");
  colorimg.loadPixels();

  for (int y = 0; y < colorimg.height; y++) {
    for (int x = 0; x < colorimg.width; x++) {

      color thisPixel = colorimg.pixels[y*width+x];
    }
  }
  colorimg.updatePixels();
*/

  image(colorimg, 0, 0);



  Iterator<Particle> it = listOfParticles.iterator();            // This version uses a nicer for loop. You'll hear this described as:
  //      an enhanced for loop
  //      a range based for loop
  //      a for-each loop
  // It does exactly the same thing as the last example.
  while (it.hasNext ()) {
    Particle p = it.next();
    p.run(colorimg.get(p.getX(), p.getY()));
    println(colorimg.get(p.getX(), p.getY())); //to check when a particle gets a pixel

    if (p.isDead()) {
      it.remove();
      println("Particle is dead!");
    }
  }
} 

void mousePressed() { 
 // clicked = true;
 // if(clicked){
 for (int i=0; i<100; i++) {
    listOfParticles.add(new Particle(new PVector(random(width), random(height)), 
    random(10,30), 
    color(random(0, 100), 100, 100), 
    new PVector(random(-4, 4), 
    random(-4, 4))));
      }
    }