class ParticleWithRandomRotationAcceleration extends BaseParticleWithVector {
  float v;
  float angle;
  
  ParticleWithRandomRotationAcceleration() {
    v = 0;
    angle = 0;
  }

  void walk() {

    scalarAcceleration += random(-0.5, 0.5);
    scalarAcceleration *= 0.9;

    scalarVelocity += scalarAcceleration;
    scalarVelocity *= 0.85;

    angleAcceleration += random(-PI / 10, PI / 10);
    angleAcceleration *= 0.9;

    angleVelocity += angleAcceleration;
    angleVelocity *= 0.95;

    angle += angleVelocity;

    velocity.x = (float)Math.cos(angle) * scalarVelocity;
    velocity.y = (float)Math.sin(angle) * scalarVelocity;

    location.x += velocity.x;
    location.y += velocity.y;
    
    location.x = constrain(location.x, 0, width - 1);
    location.y = constrain(location.y, 0, height - 1);
  }
}