PImage megalo;
void setup() {
  size(950,534);
  megalo=loadImage("MegaloS2.jpg");
  megalo.loadPixels();
}
void draw() {
  megalo.updatePixels();
  image(megalo, 0, 0);
}
void keyPressed() {
  if (key=='r') {
    megalo=loadImage("MegaloS2.jpg");
  }
  if (key=='q') {
    colorQuad();
    megalo.updatePixels();
  }
}
void colorQuad() {
  println(megalo.height);
  println(megalo.width);
  //println(megalo.pixels);
  loadPixels();
  for (int p=0; p<megalo.width/2; p++) {
    for (int i=0; i<megalo.height/2; i++) {
      //if this is in top left quadrant
      color pc = megalo.pixels[megalo.width*i+p];
      float r = (red(pc));
      float g = (green(pc));
      float b = (blue(pc)*0);
      color newpc=color(r, g, b);
      megalo.pixels[megalo.width*i+p]=newpc;
    }
  } 
  for (int p=0; p<megalo.width/2; p++) {
    for (int i=megalo.height/2; i<megalo.height; i++) {
      //if this is in bottom left quadrant
      color pc = megalo.pixels[megalo.width*i+p];
      float r = (red(pc));
      float g = (green(pc)*0);
      float b = (blue(pc));
      color newpc=color(r, g, b);
      megalo.pixels[megalo.width*i+p]=newpc;
    }
  } 
  for (int p=megalo.width/2; p<megalo.width; p++) {
    for (int i=0; i<megalo.height/2; i++) {
      //if this is in top right quadrant
      color pc = megalo.pixels[megalo.width*i+p];
      float r = (red(pc)*0) % 256;
      float g = (green(pc));
      float b = (blue(pc)) % 256;
      color newpc=color(r, g, b);
      megalo.pixels[megalo.width*i+p]=newpc;
    }
  }
  for (int p=0; p>megalo.width/2; p++) {
    for (int i=0; i>megalo.height/2; i++) {
      //if this is in bottom right quadrant
      color pc = megalo.pixels[megalo.width*i+p];
      float r = (red(pc));
      float g = (green(pc));
      float b = (blue(pc)); 
      color newpc=color(r, g, b);
      megalo.pixels[megalo.width*i+p]=newpc;
      //STAY AS IS
    }
  }
}
