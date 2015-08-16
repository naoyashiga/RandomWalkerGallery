class ParticleWithRandomRotationAndVelocity extends BaseParticleWithVector {
  float v;
  float angle;
  
  ParticleWithRandomRotationAndVelocity() {
    v = 0;
    angle = 0;
  }

  void walk() {

    v += random(0,3);
    v *= 0.5;

    angle += random(-PI / 2, PI / 2);

    velocity.x = (float)Math.cos(angle) * v;
    velocity.y = (float)Math.sin(angle) * v;

    location.x += velocity.x;
    location.y += velocity.y;
    
    location.x = constrain(location.x, 0, width - 1);
    location.y = constrain(location.y, 0, height - 1);
  }
}