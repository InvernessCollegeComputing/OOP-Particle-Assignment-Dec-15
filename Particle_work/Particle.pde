class Particle {

  int ParticleXpos;
  int ParticleYpos;
  float ParticleWidth;
  float ParticleHeight;

  float ParticleSpeedX;
  float ParticleSpeedY;

  float ParticleMass = 1;
  float gravity = 0.3;

  //color ParticleColour;

  Particle(int _ParticleXpos, int _ParticleYpos, float _ParticleWidth, float _ParticleHeight, float _ParticleSpeedX) {

    ParticleXpos = _ParticleXpos;
    ParticleYpos = _ParticleYpos;
    ParticleWidth = _ParticleWidth;
    ParticleHeight = _ParticleHeight;
    ParticleSpeedX = _ParticleSpeedX;
  }

  void drawParticle() {

    color c = get(ParticleXpos, ParticleYpos);

    fill(c);
    
    fill(255);
    strokeWeight(2);
    ellipse(ParticleXpos, ParticleYpos, ParticleWidth, ParticleHeight);
  }

  void particleBoundary() {

    if (((ParticleXpos + 25) > width) || ((ParticleXpos - 25) < 0)) {

      ParticleSpeedX = ParticleSpeedX * -1;
    }

    if ((ParticleYpos + 25) > height) {

      ParticleYpos = height - 25;
      ParticleSpeedY = ParticleSpeedY * -0.95;
    }

    if ((ParticleYpos - 25) < 0) {

      ParticleSpeedY = ParticleSpeedY * -1;
    }
  }

  void updateParticle() {

    ParticleXpos += ParticleSpeedX;
    ParticleYpos += + ParticleSpeedY;
    ParticleSpeedY += gravity;
  }
}