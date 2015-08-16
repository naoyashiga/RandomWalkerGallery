class ParticleWithRandomRotation extends BaseParticle {
  float v;
  
  ParticleWithRandomRotation() {
    v = 0;
  }

  void walk() {

    v = random(0,3);
  
    float theta = random(TWO_PI);

    vx = (float)Math.cos(theta) * v;
    vy = (float)Math.sin(theta) * v;

    x += vx;
    y += vy;
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
}