class Brick {
  //fields
  float rx, ry, rectWidth, rectHeight;
  color col;
  //constructors
  Brick() {
    rectWidth=int(random(25, 100));
    rectHeight=int(random(25, 100));
    rx=random(0, width-rectWidth);
    ry=random(0, height-rectHeight);
    col= color (random(255), random(255), (random(255)));
  }

  //methods
  void display() {
    fill(col);
    rect(rx, ry, rectWidth, rectHeight);
  }

  boolean detect(Ball b) {
  return b.detect(this);
  }
}
