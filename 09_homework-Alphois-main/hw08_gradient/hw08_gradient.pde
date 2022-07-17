float numCirclesInRow=1000/100;
//I decided each circle is 10 pixels in diameter
//assuming width is 500, this should become 50
float numCirclesInColumn=1000/100;
//this is the number of circles that run along the height of the screen
//assuming height is 500, it should become 50
void setup() {
  background(255,0,0);
  size(1000, 1000);
  circColumn();
}

void circColumn() {
  float diameter=1000/numCirclesInRow;
  float colorIncrement=255/(numCirclesInRow);
  float colorIncrement2=colorIncrement;
  //allow for the color increment to not get constantly reset for no reason
  float xcor=diameter/2;
  float ycor=diameter/2;
  //set initial xcor and ycor of the very first circle

  fill(0);
  int x=int(diameter/2);
  int y=int(diameter/2);
  int r=0;
  int c=0;
  while (r<height) {
    while (c<width) {
  
      circle(x, y, diameter);
      if (colorIncrement>255) {  
        colorIncrement=0;
      }
      y+=diameter;
      
      
      fill(colorIncrement);
      colorIncrement+=colorIncrement2;
      
      c++;
//the child while loop on its own prints a perfect column of evenly incremented shades of greyscale
    }
    c=0;
    y=int(diameter/2);
    r+=1;
    x+=diameter;
  }
}
  //this will draw one column of circles}
