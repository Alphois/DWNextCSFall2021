void setup() {
  size(1000, 1000);
  background(#E3843C);
  int xcor=0;
  int ycor=50;
  println("random #", random(100));
  //random gives a random floating point #
 while (ycor <1000){
   println("new y: " + ycor);

   xcor=0;
  while (xcor<1000 ) {
    println("newx: " + xcor);
    drawThing(50+xcor,ycor);
    xcor+=100;
}//end x while
 ycor+=100;}//end y while
 }//end setup
void drawThing(int xcor, int ycor) {
  stroke(0, 0, 80);
  strokeWeight(8);
  fill(#D499E5);
  circle(xcor, ycor, 80);
  int xcorEyesStartA= xcor-20;
  int ycorEyesStartA=ycor-30;
  int xcorEyesStartB= xcor+10;
  //the second eye starts 30 pixels away from the left eye (thus, 10 pixels to the right from the center of the circle of the face)
  int ycorEyesStartB= ycor-30;
  int xcorMouthStart= xcor-15;
  //start 15 units from the left of the center of the circle of the face, but still 5 units to the right of the left eye (in between left eye and circle center)
  int ycorMouthStart=ycor+15;
  // 15 units below center of the circle
  

  
  line(xcorEyesStartA, ycorEyesStartA, xcorEyesStartA, ycorEyesStartA+20);
  //eye1
  line(xcorEyesStartB, ycorEyesStartB, xcorEyesStartB, ycorEyesStartB+20);
  //eye2
  line(xcorMouthStart, ycorMouthStart, xcorMouthStart+35, ycorMouthStart);
  //beginning of mouth

  line(xcorMouthStart+35, ycorMouthStart, xcorMouthStart+40, ycorMouthStart-10);
  //smirk
}
