class Planet {
  float distance;
  float diameter;
  float theta;
  float speed;
  Moon moon;

  Planet(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    speed = random(0.01, 0.03);
    moon = new Moon(15, 5);
  }


  void move() {
    theta += speed;
  }

  void display() {

    pushMatrix();

    rotate(theta);

    translate(distance, 0);

    moon.move();
    moon.display();

    ellipse(0, 0, diameter, diameter);

    popMatrix();
  }
}
