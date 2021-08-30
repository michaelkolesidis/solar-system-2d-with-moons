class Moon {
  float distance;
  float diameter;
  float theta;
  float speed;


  Moon(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    speed = random(0.01, 0.03);
  }


  void move() {
    theta += speed;
  }

  void display() {
    pushMatrix();

    rotate(theta);

    translate(distance, 0);
    ellipse(0, 0, diameter, diameter);

    popMatrix();
  }
}
