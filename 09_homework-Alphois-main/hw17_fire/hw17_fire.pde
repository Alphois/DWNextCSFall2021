int DIRT=0;
int FIRE=1;
int BURNT=2;
int TREE=3;
Land plots[][];
/*======
 2D arrays are made such that 
 the rows goes first, the column second
 if you have 0th row like 25 35 45 55 65,
 then nums[0] will give u entire row
 0th element of the first column*
 nums[0][2]
 if u have 4 rows, 
 *this gives u a specific element in the first row (namely 45)
 num2.length would give u 4
 if u do nums2[0].length that would give u 5 because the subarray has 5 elements
 
 =====*/
void setup() {
  size(500, 500);
  frameRate(1);
  setupPlots(20, 4, 75);
  drawLand();
}
void draw() {
  drawLand();
  liveFire();
  //for (int i=0; i<plots.length; i++) {
  //  plots[i].updateState();
  //}
}
void setupPlots(int numPlots, int numRows, float fertility) {
  plots=new Land[numRows][numPlots];
  int plotSize=width/numPlots;
  for (int p=0; p<plots.length; p++) {
    for (int i=0; i<plots[0].length; i++) {
      //if fertility is like 3, then there are 3 integers less than 3 - 0,1,2
      // there is 3 possibilities
      //int*random(100) is 0-99 (100 possible choices)
      //100 possibilities
      //3 out of 100
      //  3/100 is 3%
      if (int(random(100))<fertility) {
        plots[p][i]= new Land(i*plotSize, 0, plotSize, TREE);
      } else {
        plots[p][i]= new Land(i*plotSize, 0, plotSize, DIRT);
      }
      if (i==0) {
        plots[p][i].state=FIRE;
      }
    }
  }
}
void drawLand() {
  for (int i=0; i<plots.length; i++) {
    plots[i].display();
  }
}
//void liveFire() {
//  if (plots[0].state==FIRE) {
//    plots[0].nextState=BURNT;
//  }
//  for (int p=1; p<plots.length; p++) {
//    plots[p].changeState(plots[p-1].state);
//    //for all the land objects in the array, change nextState
//    //of current object based on the previous object in the array to
//  }
//}
void liveFire() {
  for (int i = 1; i < plots.length; i++) {
    plots[i].changeState(plots[i-1].state); 
    plots[0].changeState(BURNT);
  }
  //youve updated the state so it knows what
  //it should be next but it doesn't change immediately
  // bc you change the state in the next loop
  for (int i = 0; i < plots.length; i++) {
    plots[i].updateState();
  }
}
