Ball bs[];
Brick thicc;
int numBall;
color originalBrickCol;

void setup() {
  size(1000, 1000);
  numBall=10;
  bs=new Ball[numBall];
  for (int i=0;i<bs.length;i++){
  bs[i]=new Ball();
  }
  thicc=new Brick();
  originalBrickCol = thicc.col;
}
void draw() {
  background(255);
  thicc.display();
  for(int i=0;i<bs.length-1;i++){
    bs[i].display();
    bs[i].move();
    //if balls detect eachother, then turn yellow
  if (  ( bs[i].detect) || ( bs[i+1].detect (bs[i]) )  ) {
    bs[i].c= color (255, 255, 0);
    bs[i+1].c=color (255, 255, 0);
  } else {
    bs[i].c=255;
    bs[i+1].c=255;
  }  
  thicc.col = originalBrickCol;

  //if b0 sees thicc brick, then turn red and make brick green
  if (bs[i].detect(thicc)) {
    thicc.col= color (0, 255, 0);
    bs[i].c=color (255, 0, 0);
  }

  //if b1 sees thicc brick, then turn red and make brick green
  if (bs[i+1].detect(thicc)) {
    thicc.col= color (0, 255, 0);
    bs[i+1].c=color (255, 0, 0);
  }
  }
}
