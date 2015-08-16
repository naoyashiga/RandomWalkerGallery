Particle[] particles;

int particlesSize = 10;

void setup() {
  size(600,600);

  particles = new Particle[particlesSize];

  for (int i = 0; i < particlesSize; i++) {
    Particle p = new Particle();
    particles[i] = p;
  }
  
  frameRate(30);
  background(0);
  
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  for (int i = 0; i < particlesSize; i++) {
    Particle p = particles[i];

    p.walk();
    p.render();

  }
  //saveFrame("frames/######.tif");
}