class Ball {
  //fields
  float radius, cx, cy, xVel, yVel;
  color c;
  color displayC;
  int state;
  
  //constructors
  Ball() {
    radius=random(10, 26);
    cx=random(radius, width-radius);
    cy=random(radius, height-radius);
    state=1;
    xVel=int(random(-11, 11));
    
    if (xVel==0) {
      xVel=11;
    }

    yVel=int(random(-11, 11));
    if (yVel==0) {
      yVel=11;
    }
  }


  //methods
  void display() {
    fill(c);
    circle(cx, cy, radius*2);
  }
  void move() {
    if (state==1){
    cx+=xVel;
    cy+=yVel;
    }
    if ((cx>width-radius)||(cx<radius)) {
      xVel*=-1;
    }
    if ((cy>height-radius)||(cy<radius)) {
      yVel*=-1;
    }
  }
  boolean detect(Ball other) {
    if (dist(this.cx, this.cy, other.cx, other.cy)<=this.radius+other.radius) {
      return true;
    } else {
      return false;
    }
  }
}
