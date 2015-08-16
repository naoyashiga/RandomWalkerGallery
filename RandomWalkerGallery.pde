ParticleWithRandomAcceleration[] particles;

int particlesSize = 10;

void setup() {
  size(600,600);

  particles = new ParticleWithRandomAcceleration[particlesSize];

  for (int i = 0; i < particlesSize; i++) {
    ParticleWithRandomAcceleration p = new ParticleWithRandomAcceleration();
    particles[i] = p;
  }
  
  frameRate(30);
  background(0);
  
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  for (int i = 0; i < particlesSize; i++) {
    ParticleWithRandomAcceleration p = particles[i];

    p.walk();
    p.render();

  }
  //saveFrame("frames/######.tif");
}