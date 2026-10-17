int x = 600;

void setup() {
  size(800, 200);
  background(247, 79, 12);
  text(x, 50, 50);
}

void draw() {
  x = x - 2;
  circle(x, 100, 20);
}
