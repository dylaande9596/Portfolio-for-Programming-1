Line[] myLines = new Line[310];
float frames = 0;

void setup() {
  background(random(10));
  size(displayWidth, displayHeight);
  frameRate(60);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Line(random(width), random(height), random(1, 5), random(10, 65));
  }
}

void draw() {
  frames ++;
for (int i=0; i<myLines.length; i++) {
    myLines[i].display();
  }
  if (frames>(300)) {
    background(0);
    frames = 0;
  }
}
