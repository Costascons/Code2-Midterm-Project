class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float alpha;


  Particle(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-2, 2);
    this.velY = random(-2, 2);
    life = 80;
    alpha = 255;
    
  }

  void display() {
    noStroke();
    fill(map(life, 80,0,0,100),  map(life,80,0,8,0));
    //fill(noise());
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life--;
    alpha --;
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width || this.posX < 0) {
      this.velX *= -1;
    }
    if (this.posY > height || this.posY < 0) {
      this.velY *= -1;
    }
  }
}
