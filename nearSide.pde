float ax, ay, bx, by;

float f(float value, float mx, float my) {
  return (value - mx) + (my - my);

}

void setup() {
  size(300, 300);
  ax = bx = 250;
  ay = 50;
  by = height - 50;
  
}


void draw() {
  background(255);
  stroke(0);
  line(ax, ay, bx, by);

  final float r = 20;
  float x = mouseX;
  float y = mouseY;
  
  noFill();
  ellipse(x, y, r*2, r*2);
  
  line(ax, ay, x, y);
  line(ax, y, x, y);
  
  // Line 1
  if (f(ax, x, y) < r) {
    stroke(255, 0, 0);
    ellipse(ax, y, 10, 10);
    
  }
  
}