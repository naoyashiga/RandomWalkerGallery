class ParticleWithRandomVelocity extends BaseParticle {
  
  ParticleWithRandomVelocity() {
    super();
  }

  void walk() {
  	float speedX = 5;
  	float speedY = 5;
    
    vx = random(-speedX, speedX);
    vy = random(-speedY, speedY);

    vx *= friction;
    vy *= friction;

    x += vx;
    y += vy;
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
}