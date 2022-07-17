int DIRT=0;
int FIRE=1;
int BURNT=2;
int TREE=3;
Land plots[];
void setup() {
  size(500, 500);
  frameRate(1);
  setupPlots(20, 75);
  drawLand();
}
void draw() {
  drawLand();
  liveFire();
  for (int i=0; i<plots.length; i++) {
    plots[i].updateState();
  }
}
void setupPlots(int numPlots, float fertility) {
  plots=new Land[numPlots];
  int plotSize=width/numPlots;
  for (int i=0; i<plots.length; i++) {
    //if fertility is like 3, then there are 3 integers less than 3 - 0,1,2
    // there is 3 possibilities
    //int*random(100) is 0-99 (100 possible choices)
    //100 possibilities
    //3 out of 100
    //  3/100 is 3%
    if (int(random(100))<fertility) {
      plots[i]= new Land(i*plotSize, 0, plotSize, TREE);
    } else {
      plots[i]= new Land(i*plotSize, 0, plotSize, DIRT);
    }
    plots[0].state = FIRE;
  }
}
void drawLand() {
  for (int i=0; i<plots.length; i++) {
    plots[i].display();
  }
}
void liveFire() {
  for (int p=1; p<plots.length; p++) {
    plots[p].changeState(plots[p-1].state);
    //for all the land objects in the array, change nextState
    //of current object based on the previous object in the array to 
    
  }
}
