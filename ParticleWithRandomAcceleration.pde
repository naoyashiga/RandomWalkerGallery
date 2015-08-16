class ParticleWithRandomAcceleration extends BaseParticle {
  float fx;
  float fy;
  
  ParticleWithRandomAcceleration() {
    fx = 0;
    fy = 0;
  }

  void walk() {

    fx = random(-1, 1);
    fy = random(-1, 1);

    fx *= friction;
    fy *= friction;

    vx += fx;
    vy += fy;

    vx *= friction;
    vy *= friction;

    x += vx;
    y += vy;
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
}