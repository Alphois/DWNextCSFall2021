PShape square;
void setup() {
  size(1000,1000);
  smooth();
  // Creating the PShape as a square. The
  // numeric arguments are similar to rect().
  square = createShape(RECT, 0, 0, 50, 50);
  square.setFill(color(0, 0, 255));
  //random copied and pasted code from the documentation
}

void draw() {
  circle(60,60, 100);//eyeball
  circle(900,25,100);//eyeball
  shape(square, 25, 25);//iris but when u get a brain aneurysm
  shape(square, 900,25);//iris but when u get a brain aneurysm
  ellipse(480,435,125,75);//mouth
  triangle(450,450, 500, 425, 525, 450);  //tounge

  triangle(450,200, 100, 300, 525, 200);  //this is a snowman nose


//  noFill();
//stroke(255, 102, 0);
//curve(20, 104, 20, 104, 292, 96, 292, 244);
//stroke(0); 
//curve(20, 104, 292, 96, 292, 244, 60, 260); 
//stroke(255, 102, 0);
//curve(292, 96, 292, 244, 60, 260, 60, 260);

}
