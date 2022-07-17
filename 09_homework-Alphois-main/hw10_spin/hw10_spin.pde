//Krishna Dudani
float cx, cy, theta, radius, centerX, centerY, greenTing;
void setup() {
  size(400, 400);
  background(255);
  radius=80;
  //distance from the center 
  centerX=width/2;
  centerY=height/2;
  cx=centerX-radius;
  cy=centerY;
  theta=0;
  greenTing=0;

}
void draw() {
  frameRate(60);
    println("hour: " + hour());
  println("min: " + minute());
  println("sec: " + second());
  background(255);
  
  
  //picking out my fill color lel
  if (theta%60==0) {
    //is theta divisible by 60 yet?
    if (greenTing>255) {
      //if so, is the color shade greater than 255 yet?
      greenTing=0;
      //if so, become BLACK 
      //spend all yo green 
      //JUST LIKE MY SOUL MUAHAH
    } else {
      //if not, go n get some green
      greenTing+=10;
        fill(0, greenTing, 0);
    }
  }
  
  
  //we have the paint, time 2 draw
  circle(cx, cy, 50);
  line(centerY, centerX, cx, cy);
  //cx=100*cos(theta)+centerX;
  cx=newX(100, centerX, theta);
  cy=newY(100, centerY, theta);
  //incrementing cx and cy by 100*cos(theta)+width/2  and 100*sin(theta)+height/2
  //respectively

  theta+=1;
  //incrementing degree measure by 1
}
float newX(float pathRadius, float centerX, float theta) {
  //keep in mind that centerY for this method is NOT the same as the
  //earlier global variable defined which also happens to be centerX
  float x=(cos(radians(theta)));
  x=x*pathRadius+centerX;
  return x;
}
float newY(float pathRadius, float centerY, float theta) {
  //keep in mind that centerX for this method is NOT the same as the
  //earlier global variable defined which also happens to be centerY
  //pathRadius is the radius of the circular path that the circle follows
  float y=(sin(radians(theta)));
  y=centerY+y*pathRadius;
  return y;
  //think polar coords: y=rsin(theta)
  //smooort right
  //yessir
}
