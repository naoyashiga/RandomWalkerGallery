class ParticleWithRandomRotationVelocity extends BaseParticleWithVector {
  float v;
  float angle;
  
  
  ParticleWithRandomRotationVelocity() {
    v = 0;
    angle = 0;
  }

  void walk() {

    v += random(0,1);
    v *= 0.75;

    angleVelocity += random(-PI / 10, PI / 10);
    angleVelocity *= 0.95;

    angle += angleVelocity;

    velocity.x = (float)Math.cos(angle) * v;
    velocity.y = (float)Math.sin(angle) * v;

    location.x += velocity.x;
    location.y += velocity.y;
    
    location.x = constrain(location.x, 0, width - 1);
    location.y = constrain(location.y, 0, height - 1);
  }
}