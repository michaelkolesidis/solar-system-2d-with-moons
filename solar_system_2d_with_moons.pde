Planet[] planet = new Planet[4];

void setup() {
  size(800, 800);

  for (int i = 0; i < planet.length; i++) {
    planet[i] = new Planet(100+30*i, 10);
  }
}

void draw() {
  background(255);

  pushMatrix();

  translate(width/2, height/2);


  fill(155);
  ellipse(0, 0, 50, 50);

  for (int i = 0; i < planet.length; i++) {
    planet[i].move();
    planet[i].display();
  }

  popMatrix();
}
