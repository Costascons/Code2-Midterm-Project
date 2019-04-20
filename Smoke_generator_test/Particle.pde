class Particle {
  float posX;
  float posY;
  float velX;
  float velY;
  float life;
  float alpha;
  color c;
  float emitRate;


  Particle(float posX, float posY, float life, color c, float emitRate) {
    this.posX = posX;
    this.posY = posY;
    this.velX = random(-0.75, 0.75);
    this.velY = random(-3.75, 0.5);
    this.life = life;
    alpha = 255;
    this.c = c;
    this.emitRate = emitRate;
  }

  void display() {
    noStroke();
    //fill(map(life, 80,0,0,100),  map(life,80,0,8,0));
   fill(c, map(life, 0, alpha, 0, 85));
   // fill(c, map(life, 80, 0, 8, 0));
    ellipse(this.posX, this.posY, life, life);
  }

  void update() {
    life -= emitRate;
    alpha -= emitRate;
    this.posX += this.velX;
    this.posY += this.velY;

    // check if it goes off
    if (this.posX > width || this.posX < 0) {
      //this.velX *= -1;
      life = 0;
    }
    if (this.posY > height || this.posY < 0) {
      //this.velY *= -1;
      life = 0;
    }
  }
}
