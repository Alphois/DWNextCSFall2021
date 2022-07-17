float cx,cy, theta;
void setup(){
  size(400,400);
  background(255);
  cx=0;
  cy=0;
  theta=0;
}
void draw(){
  cy=newY(100, height/2, theta);
  circle(cx,cy,50);

  //this is taking theta (a degree measure) and then converts that into radians
  //the DEGREE MEASURE IS INCREMENTED BY 1 BEFORE BEING FED TO THE CIRCLE FUNCTION
  cx++;
  theta++;
  println("degLEE " + theta + "\trad: " + radians(theta));
  if (cx>=width){
    cx=0;
  }
}
float newY(int amplitude, int offset, float t){
  float y=sin(radians(t));
  y=y*amplitude+offset;
  return y;
}

//y=100sin(theta)+h/2
//x=100cos(theta)+w/2
//thas how u graph a circle moving in the path of a circle
//polar coords
//y=rsintheta
//x=rcostheta
//r is basically radius of circle
//make clock
