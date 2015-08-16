class Particle {
  float x;
  float y;
  float vx;
  float vy;
  float friction;
  float r;
  
  Particle() {
    x = random(0, width);
    y = random(0, height);
    vx = 0;
    vy = 0;
    friction = 0.95;
    r = 3;
  }

  void render() {
    fill(255);
    noStroke();
    
    ellipse(x,y,r,r);
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