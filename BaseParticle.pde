class BaseParticle implements BaseParticleInterface {
  float x;
  float y;
  float vx;
  float vy;
  float friction;
  float r;
  
  BaseParticle() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = 0;
    friction = 0.95;
    r = 1;
  }

  void render() {
    fill(255);
    noStroke();
    
    ellipse(x,y,r,r);
  }

  void walk() {
    //override in subclass
  }
}

interface BaseParticleInterface {
  void walk();
}