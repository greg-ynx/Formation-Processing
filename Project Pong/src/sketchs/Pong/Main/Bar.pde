class Bar {
  int x, y, w, h, speed;
  color barColor;
  boolean up, down;
  
  Bar(int tempX, int tempY, int tempW, int tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    barColor = #FFFFFF;
    speed = 5;
    up = false;
    down = false;
  }
  
  void moveBar() {
    if (up) {
      y -= speed;
    }
    else if (down) {
      y += speed;
    }    
  }
  
  void restriction() {
    if (y - h / 2 < 0) {
      y += speed;
    }
    else if (y + h / 2 > height) {
      y -= speed;
    }
  }
  
  void display() {
    pushMatrix();
    fill(barColor);
    rect(x, y, w, h);
    rectMode(CENTER);
    popMatrix();
  }
}
