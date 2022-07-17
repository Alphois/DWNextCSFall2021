class ball {
  //fields
  float radius=radiusAssigner();
  float positionX=positionXAssigner(radius);
  float positionY=positionYAssigner(radius); 
  float colors=colors();
  float xVector=xVector(); 
  float yVector=yVector();
  //constructors
  //none, cause its a "default constructor"
  //methods
  void display() {
    circle(positionX, positionY, radius*2);
  }
  void move() {
    positionX+=xVector;
    positionY+=yVector;
    if ((positionX>width-radius)||(positionX<0+radius)) {
      xVector*=-1;
    }
    if ((positionY>height-radius)||(positionY<0+radius)) {
      yVector*=-1;
    }
  }
}





float radiusAssigner() {
  float x=int(random(9, 27));
 
  return x/2;
}
float positionXAssigner(float radius) {
  float x = random(radius, width-radius);
  return x;
}
float positionYAssigner(float radius) {
  float x = random(radius, height-radius);
  return x;
}
float xVector() {
  float x=random(1, 6);
  if ((int(random(0, 2)))==0) {
    x*=-1;
  }
  return x;
}
float yVector() {
  float y=random(1, 6);
  if ((int(random(0, 2)))==0) {
    y*=-1;
  }
  return y;
}

float colors() {
  float white = random(0, 255);
  return white;
}
