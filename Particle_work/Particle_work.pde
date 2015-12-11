//Robbie Mills
//http://natureofcode.com/book/chapter-4-particle-systems/ - look

//-----------------Interactions------------------//
// Use the num. keys to delete the corresponding rects.  
// Click to add a Paricle at the mouse pos.  
// Use the up arrow to add a particle at the mouse pos(Hold to add multiple particles).
// Use the down arrow to remove a particle (Hold to remove multiple particles).
// Use the ENTER key to clear all particles.
//-----------------------------------------------//

//PImage img;

ArrayList<Particle> particles;
ArrayList<PreciseDelete> precisedeleterects;

//boolean click = false;

void setup() {

  //size(800, 600);
  fullScreen();

  frameRate(60);
  ellipseMode(CENTER);
  smooth();
  textAlign(CENTER, CENTER);

  //img = loadImage("background.jpg");

  particles = new ArrayList<Particle>();
  precisedeleterects = new ArrayList<PreciseDelete>();

  precisedeleterects.add(new PreciseDelete(100, 50, 50, 50, "1"));
  precisedeleterects.add(new PreciseDelete(200, 50, 50, 50, "2"));
  precisedeleterects.add(new PreciseDelete(300, 50, 50, 50, "3"));
  precisedeleterects.add(new PreciseDelete(400, 50, 50, 50, "4"));
  precisedeleterects.add(new PreciseDelete(500, 50, 50, 50, "5"));
  precisedeleterects.add(new PreciseDelete(600, 50, 50, 50, "6"));
}

void draw() {

  background(0);
  //image(img, 0, 0);
  //color ParticleColour = get(ParticleXpos, ParticleYpos);

  for (PreciseDelete z : precisedeleterects) {

    z.drawRect();
  }

  for (Particle p : particles) {

    p.updateParticle();
    p.particleBoundary();
    p.drawParticle();
  }
}

void mousePressed() {

  particles.add(new Particle(mouseX, mouseY, random(5, 50), random(5, 50), random(-1, 1)));
  println("Particle Arraylist size:" + particles.size());
}

void keyPressed() {

  if (keyPressed == true) {

    if (keyCode == ENTER) {

      particles.clear();
      println("Particle Arraylist size:" + particles.size());
    }
  }
  if (keyCode == UP) {

    particles.add(new Particle(mouseX, mouseY, random(5, 50), random(5, 50), random(-1, 1)));
    println("Particle Arraylist size:" + particles.size());
  }

  if (keyCode == DOWN) {

    if (particles.size() > 0) {
      particles.remove(0);
      println("Particle Arraylist size:" + particles.size());
    }
  }


  //-----PRECISE DELETION(RECTS)-----//
  if (keyPressed) {
    if (key == '1') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(0);
        println("PreciseDelete Arraylist size:" + precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '2') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(1);
        println("PreciseDelete Arraylist size:" + precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '3') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(2);
        println("PreciseDelete Arraylist size:" + precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '4') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(3);
        println("PreciseDelete Arraylist size:" + precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '5') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(4);
        println("PreciseDelete Arraylist size:" + precisedeleterects.size());
      }
    }
  }

  if (keyPressed) {
    if (key == '6') {
      if (precisedeleterects.size() > 0) {
        precisedeleterects.remove(5);
        println("PreciseDelete Arraylist size:" + precisedeleterects.size());
      }
    }
  }
}