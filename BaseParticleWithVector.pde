class BaseParticleWithVector implements BaseParticleWithVectorInterface {
  PVector location;
  PVector velocity;
  PVector friction;
  PVector acceleration;

  float r;
  
  BaseParticleWithVector() {
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    friction = new PVector(0.95, 0.95);
    
    r = 1;
  }

  void render() {
    fill(255);
    noStroke();
    
    ellipse(location.x,location.y,r,r);
  }

  void walk() {
    //override in subclass
  }
}

interface BaseParticleWithVectorInterface {
  void walk();
}