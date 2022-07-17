//What processing functions do you think are needed for this program?
  //while, rect, random
  //size(..?)
  //I later decided on if/else
//What processing control structures are needed?
  //The necessary control structures are void setup and while (looping)(9/24/21)
//Come up with an initial plan on how to make this program.
  // Make a drawing function for just one rectangle
    // limit the size so that it is 100 units away from the starting coordinate max
  //loop it in void setup

  
//everything runs in the setup
void setup(){
  size(500,500);
  int x=500;
  while(x>0){
  drawRandomTings();
  x--;
  }
  
  
  drawRandomTings();
}
void drawRandomTings(){
    //as I was coding this I changed my plan slightly because I saw that my code didn't produce enough black and white shapes
  //so I decided for fill I'd do
  //a "coinflip" to increase the probability of black and white shapes
  float zeta=random(0,5);

  if (zeta>=1.5){
  fill(random(255),random(255),random(255),random(200,255));
  }
  //GIMME EVERYTHIN

  else {
    if (zeta>1){
    fill(0);
      //we need more black shapes

    }
    else{
    fill(255);
      //we need moar white shapes

  }};
  float x=random(400);
  float y=random(400);
  
  //these are all based on the assumption that the window is 500px x 500px
  rect(x,y,x+random(100),y+random(100));
  //limit the size of the rectangles to up to 100 units from starting coordinate
  //DRAW RECTANGLE
  
}
