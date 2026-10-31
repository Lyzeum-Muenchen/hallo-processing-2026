
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
  background(0,0,50);
  x = x + gx;
  y = y + gy;
  if (y - 10 <= 0) {
    gy = -gy;
  }
  if (x - 10 <= 0) {
    gx = -gx;
  }
  if (y + 10 >= height) {
    gy = -gy;
  }
  if (x + 10 >= width) {
    gx = -gx;
  }
  
  fill(255,100,0);
  noStroke();
  ellipse(x-10, y, 20, 38);
  ellipse(x, y, 20, 40);
  ellipse(x+10, y, 20, 38);
}
