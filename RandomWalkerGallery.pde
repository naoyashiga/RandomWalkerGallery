ParticleWithRandomRotationAndVelocity[] particles;

int particlesSize = 1000;

void setup() {
  size(displayWidth, displayHeight);

  particles = new ParticleWithRandomRotationAndVelocity[particlesSize];

  for (int i = 0; i < particlesSize; i++) {
    ParticleWithRandomRotationAndVelocity p = new ParticleWithRandomRotationAndVelocity();
    particles[i] = p;
  }
  
  frameRate(30);
  background(0);
  
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  for (int i = 0; i < particlesSize; i++) {
    ParticleWithRandomRotationAndVelocity p = particles[i];

    p.walk();
    p.render();

  }
  //saveFrame("frames/######.tif");
}