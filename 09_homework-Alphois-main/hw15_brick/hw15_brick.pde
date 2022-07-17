Ball b0, b1;
Brick thicc;
color originalBrickCol;

void setup() {
  size(1000, 1000);
  b0=new Ball();
  b1=new Ball();
  thicc=new Brick();
  originalBrickCol = thicc.col;
}
void draw() {
  background(255);
  b0.display();
  b1.display();
  thicc.display();
  b0.move();
  b1.move();
  if (  ( b0.detect (b1)) || ( b1.detect (b0) )  ) {
    b0.c= color (255, 255, 0);
    b1.c=color (255, 255, 0);
  } else {
    b0.c=255;
    b1.c=255;
  }  
  thicc.col = originalBrickCol;

  //if b0 sees thicc brick, then turn red and make brick green
  if (b0.detect(thicc)) {
    thicc.col= color (0, 255, 0);
    b0.c=color (255, 0, 0);
  }

  //if b1 sees thicc brick, then turn red and make brick green
  if (b1.detect(thicc)) {
    thicc.col= color (0, 255, 0);
    b1.c=color (255, 0, 0);
  }
}
