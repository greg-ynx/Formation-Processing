class BouncingBall {
  
  int x, y, size, speedX, speedY;
  color ballColor;

  BouncingBall(int tempX, int tempY, int tempSize, int tempSpeedX) {
    x = tempX;
    y = tempY;
    size = tempSize;
    ballColor = #FFFFFF;
    speedX = tempSpeedX;
    speedY = 3;
  }
  
  void moveBall() {
    x += speedX;
    y += speedY;
  }
  
  void bounce() {
    if (x - size / 2 < 0) {
      speedX = -speedX;
      gameBallSpeed = 2;
      setup();
      score1++;
    }
    else if (x + size / 2 > width) {
      speedX = -speedX;
      gameBallSpeed = -2;
      setup();
      score2++;
    }
    
    if (y - size / 2 < 0) {
      speedY = -speedY;
    }
    else if (y + size / 2 > height) {
      speedY = -speedY;
    }
  }
  
  void display() {
    pushMatrix();
    noStroke();
    fill(ballColor);
    circle(x, y, size);
    popMatrix();
  }
  
}
