color bgColor = #000000;
color objColor = #FFFFFF;
BouncingBall bb;
Bar player1, player2;
int score1, score2;
int gameBallSpeed = 2;
int winScore = 3;

void setup() {
  size(800, 600);
  background(bgColor);
  stroke(objColor, 128);
  strokeWeight(5);
  line(width/2, 0, width/2, height);
  bb = new BouncingBall(width / 2, height / 2, 20, gameBallSpeed);
  player1 = new Bar(40, height / 2, 10, 100);
  player2 = new Bar(width - 40, height / 2, 10, 100);
  textSize(30);
}

void draw() {
  background(bgColor);
  stroke(objColor, 128);
  strokeWeight(5);
  line(400, 0, 400, 600);
  bb.moveBall();
  bb.bounce();
  collision();
  bb.display();
  player1.moveBar();
  player2.moveBar();
  player1.restriction();
  player2.restriction();
  player1.display();
  player2.display();
  scores();
  gameOver();
}

void collision() {
  if (bb.x - bb.size/2 < player1.x + player1.w/2
      && bb.y + bb.size/2 > player1.y - player1.h/2
      && bb.y - bb.size/2 < player1.y + player1.h/2) {
        if (bb.speedX < 0) {
          bb.speedX--;
          bb.speedX = - bb.speedX;
        }
  }
  
  if (bb.x + bb.size/2 > player2.x - player2.w/2
      && bb.y + bb.size/2 > player2.y - player2.h/2
      && bb.y - bb.size/2 < player2.y + player2.h/2) {
        if (bb.speedX > 0) {
          bb.speedX++;
          bb.speedX = - bb.speedX;
        }
  }
}

void scores() {
  fill(objColor);
  text(score1, width * 0.25, 50);
  text(score2, width * 0.75, 50);
}

void gameOver() {
  textAlign(CENTER, CENTER);
  if(score1 == winScore) {
    text("Game Over",  width/2, height/2 - 130);
    fill(0, 255, 0);
    text("Player 1 wins !", width/2, height/2 - 85);
    text("Click to play again", width/2, height/2 - 50);
    gameOverPage();
  }
  
  if(score2 == winScore) {
    text("Game Over",  width/2, height/2 - 130);
    fill(0, 255, 0);
    text("Player 2 wins !", width/2, height/2 - 85);
    text("Click to play again", width/2, height/2 - 50);
    gameOverPage();
  }
}

void gameOverPage() {
  bb.speedX = 0;
  bb.speedY = 0;
  if(mousePressed) {
    score1 = 0;
    score2 = 0;
    setup();
  }
}

void keyPressed() {
  if (key == 'z' || key == 'Z') {
    player1.up = true;
  }
  else if (key == 's' || key == 'S') {
    player1.down = true;
  }
  if(keyCode == UP) {
    player2.up = true;
  }
  else if (keyCode == DOWN) {
    player2.down = true;
  }
}

void keyReleased() {
  if (key == 'z' || key == 'Z') {
    player1.up = false;
  }
  else if (key == 's' || key == 'S') {
    player1.down = false;
  }
  if(keyCode == UP) {
    player2.up = false;
  }
  else if (keyCode == DOWN) {
    player2.down = false;
  }
}
