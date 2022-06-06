class BouncingBall {
  
  int x, y, size, speedX, speedY;
  color ballColor;

  BouncingBall(int tempX, int tempY, int tempSize) {
    x = tempX;
    y = tempY;
    size = tempSize;
    ballColor = #FFFFFF;
    speedX = 6;
    speedY = 2;
  }
  
  void display() {
    pushMatrix();
    noStroke();
    fill(ballColor);
    circle(x, y, size);

    if (x + size / 2 > width) {
      speedX = -speedX;
    }
    else if (x - size / 2 < 0) {
      speedX = -speedX;
    }
    
    if (y > height - size / 2) {
      speedY = -speedY;
    }
    else if (y < 0 + size / 2) {
      speedY = -speedY;
    }
    
    x += speedX;
    y += speedY;
    
    popMatrix();
  }
  
}
