Ball sack, sacktu;
int turnedOn=1;
int blue=0;
void setup() {
  size(1000, 1000);
  background(255);
  sack=new Ball();
  sacktu=new Ball();
}
void draw() {
  background(255);
  sack.display();
  sacktu.display();
  sack.move();
  sacktu.move();
  if (sack.detect(sacktu)) {
    sack.c=color (255, 0, 0);
  } else {
    sack.c=(255);
  }
  if (sacktu.detect(sack)) {
    sack.c=color (255, 0, 0);
  } else {
    sacktu.c=(255);
  }
}
void keyPressed() {
  if ( key== 'p' ) {
    if (sack.state==turnedOn) {
      sack.state = blue;
      sacktu.state=blue;
    } else {
      sack.state=turnedOn;
      sacktu.state=turnedOn;
    }
  }
}
