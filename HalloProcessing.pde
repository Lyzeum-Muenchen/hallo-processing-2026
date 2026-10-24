int x = 600;
int y = 150;

int gx = -2;
int gy = -1;

void setup() {
  size(800, 200);
  background(247, 79, 12);
  text(x, 50, 50); 
}

void draw() {
  background(247,79,12);
  x = x + gx;
  y = y + gy;
  if (y - 10 <= 0) {
    gy = -gy;
  }
  
  circle(x, y, 20);
}
