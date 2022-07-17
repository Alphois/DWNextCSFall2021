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
    megalo.resize(1000, 1000);
  }
  if (key=='g') {
    greyScale();
    megalo.updatePixels();
  }
  if (key=='f') {
    colorFilter(color(183, 139, 85));
    megalo.updatePixels();
  }
}
void greyScale() {
  PImage tmp=new PImage (1000, 1000);
  for (int p=0; p<megalo.width; p++) {//columns
    for (int i=1; i<megalo.height; i++) {//rows
      color pc=megalo.pixels[megalo.width*i+p];
      float r= red(pc);
      float g = green(pc);
      float b = blue(pc);
      float greyVal= (r+g+b)/3.0;
      color greyC = color(greyVal, greyVal, greyVal);
      tmp.pixels[megalo.width*i+p]=greyC;
      tmp=megalo;
    }
  }
}
void colorFilter(color c) {
  PImage tmp=new PImage(1000, 1000);
  for (int p=0; p<megalo.width; p++) {//columns
    for (int i=1; i<megalo.height; i++) {//rows
      color pc=megalo.pixels[megalo.width*i+p];
      //first calculate greyVal
      float r= red(pc);
      float g = green(pc);
      float b = blue(pc);
      float greyVal= (r+g+b)/3.0;
      //apply greyVal to all the values in 
      float cr=red(c);
      float cg=green(c);
      float cb=blue(c);
      float shade = int(greyVal/100);
      color targetColor=color(shade*cr,shade*cg, shade*cb);
      tmp.pixels[megalo.width*i+p]=targetColor;
      tmp=megalo;
    }
  }
}
