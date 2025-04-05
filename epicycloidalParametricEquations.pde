float theta = 0;
float speed = 0.1;
ArrayList<PVector> trail;

void setup() {
  size(600, 600);
  trail = new ArrayList<PVector>();
}

void draw() {
  background(0);
  translate(width/2, height/2);
  
  float l1 = 100;
  float l2 = 100;

  float theta1 = theta;
  float theta2 = PI * theta;

  float x1 = l1 * cos(theta1);
  float y1 = l1 * sin(theta1);

  float x2 = x1 + l2 * cos(theta2);
  float y2 = y1 + l2 * sin(theta2);

  stroke(255);
  line(0, 0, x1, y1);
  line(x1, y1, x2, y2);
  fill(255);
  ellipse(x2, y2, 6, 6);

  // Save trail
  trail.add(new PVector(x2, y2));
  stroke(0, 255, 255);
  noFill();
  beginShape();
  for (PVector p : trail) {
    vertex(p.x, p.y);
  }
  endShape();

  theta += speed;
}
