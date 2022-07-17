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
  setupLand(80, 80, 75);
  showLand();
}
void draw() {
  showLand();
  liveFire();
  //for (int i=0; i<plots.length; i++) {
  //  plots[i].updateState();
  //}
}
void setupLand(int numPlots, int numRows, float fertility) {
  int plotSize=round(width/numPlots);
  plots=new Land[numPlots][numRows];
  println(plotSize);
  for (int p=0; p<plots.length; p++) {
    for (int i=0; i<plots[0].length; i++) {
      //if fertility is like 3, then there are 3 integers less than 3 - 0,1,2
      // there is 3 possibilities
      //int*random(100) is 0-99 (100 possible choices)
      //100 possibilities
      //3 out of 100
      //  3/100 is 3%
      if (int(random(100))<fertility) {
        plots[p][i]= new Land(i*plotSize, p*plotSize, plotSize, TREE);
      } else {
        plots[p][i]= new Land(i*plotSize, p*plotSize, plotSize, DIRT);
      }
      if (i==0) {
        plots[p][i].state=FIRE;
      }
    }
  }
}
void showLand() {
  for (int p=0; p<plots.length; p++) {
    for (int i=0; i<plots[0].length; i++) {
      plots[p][i].display();
    }
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
  int up=DIRT;
  int down=DIRT;
  int left=DIRT;
  int right=DIRT;
  for (int p=0; p<plots.length; p++) {
    for (int i = 0; i < plots[0].length; i++) {
      /*   if (i==0) {
       left=DIRT;
       } else {
       left=plots[p][i-1].state;
       }
       if (p==plots[p].length-1) {
       right=DIRT;
       } else {
       right=plots[p].length-1
       }
       */
       if ((i-1)>=0){
          plots[p][i].changeState(plots[p][i-1].state); 
       }
       if ((i+1)<plots[p].length){
          plots[p][i].changeState(plots[p][i+1].state); 
       }
       if ((p-1)>=0){
          plots[p][i].changeState(plots[p-1][i].state); 
       }
       if ((p+1)<plots.length){
          plots[p][i].changeState(plots[p+1][i].state); 
       }
     
      /*
  if (fullGrid){
       neighborFire=(up==FIRE)||down==FIRE||right==FIRE
       }
       neighborFire=
       */
    }
  }
  //youve updated the nextState and not its currentState so it knows what
  //it should be next but it doesn't change immediately
  //you've already displayed the plots with their current state previously in the loop, 
  //next their state will be changed to the nextState and then become displayed in the next loop 
  // bc you change the state in the next loop
  for (int p=0; p<plots.length; p++) {
    for (int i = 0; i < plots[0].length; i++) {
      plots[p][i].updateState();
    }
  }
}
/* void keyPressed){
set to full grid or just one line
}
*/
