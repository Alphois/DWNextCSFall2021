PImage megalo;
void setup() {
  size(1000, 1000);
  megalo=loadImage("MegaloS2.jpg");
  megalo.loadPixels();
  megalo.resize(1000, 1000);
}
void draw() {
  image(megalo, 0, 0);
}
void keyPressed() {
  if (key=='r') {
    megalo=loadImage("MegaloS2.jpg");
  }
  if (key=='h') {
    horizontalFlip();
    megalo.updatePixels();
  }
  if (key=='v') {
    verticalFlip();
    megalo.updatePixels();
  }
  if (key=='m') {
    mirror();
    megalo.updatePixels();
  }
}
void horizontalFlip() {
  PImage tmp=new PImage(1000, 1000);
  for (int p=0; p< megalo.width; p++) {//columns {
    for (int i=1; i< megalo.height; i++) { //rows {
      color newC=megalo.pixels[megalo.width*i-p]; //new pixel will become
      tmp.pixels[megalo.width*i+p]=newC; //rows*width+ specific column
    }
  }
  megalo=tmp;
  //for (int p=megalo.width; p>0; p--) {//columns {
  //  for (int i=1; i< megalo.height; i++) { //rows {
  //    color newC=tmp.pixels[tmp.width*i+p]; //new pixel will become
  //    megalo.pixels[megalo.width*i+p]=newC; //rows*width+ specific column
  //  }
  //}
}
void verticalFlip() {
}
void mirror() {
}
