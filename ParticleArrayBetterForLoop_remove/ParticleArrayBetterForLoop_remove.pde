import java.util.Iterator;

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
                                     random(-2, 2))));

  
  Iterator<Particle> it = listOfParticles.iterator();            // This version uses a nicer for loop. You'll hear this described as:
                                                          //      an enhanced for loop
                                                          //      a range based for loop
                                                          //      a for-each loop
                                                          // It does exactly the same thing as the last example.
//  int index;
//  int indexof(object xx);
  
   while (it.hasNext()) {
    Particle p = it.next();
    p.run();
    if (p.isDead()) {
      it.remove();
       println("Particle is dead!");
      
    }
  }
}

  
 