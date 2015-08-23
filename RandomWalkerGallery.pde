ArrayList<ParticleWithRandomRotationAcceleration> particles;

int particlesSize = 300;

void setup() {
  size(displayWidth, displayHeight);

  particles = new ArrayList<ParticleWithRandomRotationAcceleration>();

  for (int i = 0; i < particlesSize; i++) {
    ParticleWithRandomRotationAcceleration p = new ParticleWithRandomRotationAcceleration();
    particles.add(p);
  }
  
  frameRate(30);
  background(0);
  
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  for (ParticleWithRandomRotationAcceleration p : particles) {
    p.walk();
    p.render();
  }
  //saveFrame("frames/######.tif");
}