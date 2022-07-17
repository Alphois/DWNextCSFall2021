float rectWidth=80;
float xVector, yVector;
float rectHeight=160;
float rectXStart=random(0, width-rectWidth);
float rectYStart=random(0, height-rectHeight);

void setup() {
  size(1000, 1000);
   xVector=random(1, 11);
   yVector=random(1, 11);
  if (int(random (0, 2))==0) {
    xVector*=-1;
  }
  if (int(random(0, 2))==0) {
    yVector*=-1;
  }
}

void draw() {
  background(255);
  strokeWeight(5);
  rect(rectXStart, rectYStart, 80, 160);
  if ((rectXStart>=width-rectWidth)||(rectXStart<=0)) {
    xVector*=-1;
  }
  if ((rectYStart>=height-rectHeight)||(rectYStart<=0)) {
    yVector*=-1;
  }
  rectXStart+=xVector;
  rectYStart+=yVector;

  //rect start should have a random x start and a random y start
  //x It should range from 0 right up until width-rectWidth, 
  //y it should range from 0 right up until height-rectHeight
}
