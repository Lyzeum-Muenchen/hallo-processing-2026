int x = 400;
int y = 150;

int gx = -2;
int gy = -1;

int SPALTEN = 10;
int ZEILEN = 5;

int kuerbisgroesse = 40;

void setup() {
  size(500, 700);
}

void draw() {
  background(0, 0, 50);
  x = x + gx;
  y = y + gy;
  if (y - 20 <= 0) {
    gy = -gy;
  }
  if (x - 20 <= 0) {
    gx = -gx;
  }
  if (y + 20 >= height) {
    gy = -gy;
  }
  if (x + 20 >= width) {
    gx = -gx;
  }

  fill(255, 100, 0);
  noStroke();
  ellipse(x-10, y, 20, 38);
  ellipse(x, y, 20, 40);
  ellipse(x+10, y, 20, 38);

  float blockbreite = (width - 40)/(SPALTEN + 0.2 * (SPALTEN - 1) );
  float blockhoehe  = (height - 40)/(ZEILEN + 0.2 * (ZEILEN - 1) ) * 0.33;

  for (int j = 0; j < ZEILEN; j = j+1) {
    colorMode(HSB);
    fill(255/ZEILEN * j,255,255);
    colorMode(RGB);
    for (int i = 0; i < SPALTEN; i = i+1) {
      if (
        x - kuerbisgroesse / 2 <= 20 + i * 1.2 * blockbreite + blockbreite &&
        y - kuerbisgroesse / 2 <= 20 + j * 1.2 * blockhoehe + blockhoehe &&
        x + kuerbisgroesse / 2 >= 20 + i * 1.2 * blockbreite && 
        y + kuerbisgroesse / 2 >= 20 + j * 1.2 * blockhoehe
      ) {
        println("kollidiert");
      } else {
        rect (20 + i * 1.2 * blockbreite, 20 + j * 1.2 * blockhoehe, blockbreite, blockhoehe);
      }
    }
  }
}
