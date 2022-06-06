color bgColor = #000000;
color objColor = #FFFFFF;
BouncingBall bb;

void setup() {
  size(800, 600);
  background(bgColor);
  stroke(objColor, 128);
  strokeWeight(5); // Modifie la largeur des traits
  line(width/2, 0, width/2, height);
  bb = new BouncingBall(430, 360, 25);
}

void draw() {
  background(bgColor);
  stroke(objColor, 128);
  strokeWeight(5);
  line(400, 0, 400, 600);
  bb.display();
}
