class Ball {
  //fields
  int cx;
  int cy;
  int xVel;
  int yVel;
  int radius;
  color c;
  //constructors
  Ball() {
    c = 255;
    radius = int(random(10, 26));
    cx = int(random(radius, width-radius));
    cy = int(random(radius, height-radius));
    xVel = int(random(-5, 5));
    if (xVel == 0) { 
      xVel = 5;
    }
    yVel = int(random(-5, 5));
    if (yVel == 0) { 
      yVel = 5;
    }
  } //constructor

  Ball(color f) {
    this();
    c = f;
  }
  //methods

  void display() {
    fill(c);
    circle(this.cx, this.cy, this.radius*2);
  }


  void move() {
    if (cx <= radius || cx >= (width-radius)) {
      xVel *= -1;
    }
    if ( cy <= radius ||
      cy >= (height-radius)) {
      yVel *= -1;
    }
    cx+= xVel;
    cy+= yVel;
  }

  boolean detect(Ball other) {
    if (dist(other.cx, other.cy, this.cx, this.cy)<=(this.radius + other.radius)) {
      return true;
    }
    return false;
  }
  boolean detect( Brick b) {
    float distTopLeft=dist(cx, cy, b.rx, b.ry);
    float distTopRight=dist(cx, cy, b.rx+b.rectWidth, b.ry);
    float distBotLeft=dist(cx, cy, b.rx, b.ry+b.rectHeight);
    float distBotRight=dist(cx, cy, b.rx+b.rectWidth, b.ry);


    if (distTopLeft<=radius || distTopRight<=radius ||distBotLeft<=radius||distBotRight<=radius  /*case1: corners*/
      ||
      /*case 2: is it touching a side or directly inside the bricc*/
      isInsideBox(cx,cy, b.rx-radius, b.ry,b.rectWidth+2*radius,b.rectHeight) 
      ||
      isInsideBox(cx,cy,b.rx,b.ry-radius,b.rectWidth, b.rectHeight+2*radius)){

      return true;
  } else {
  return false;
}
}
boolean isInsideBox(float x, float y, float xb, float yb, float rectWidth, float rectHeight) {
  if (x>xb &&y>yb && x< xb+rectWidth && y<yb+rectHeight) {
    return true;
  } else {
    return false;
  }
}
}
