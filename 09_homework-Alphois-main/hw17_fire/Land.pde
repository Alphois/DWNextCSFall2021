class Land {
  //instance
  int x, y;
  int size;
  int state;
  int nextState;
  //constructors
  Land(int rx, int ry, int rSide, int ste) {
    x=rx;  
    y=ry;
    size=rSide;
    state=ste;
  }
  //methods
  void display() {
    if (state==DIRT) {
      fill(#74404A);
      //brown
    }
    if (state==FIRE) {
      fill(#FF5703);
      //orange-y
    }
    if (state==BURNT) {
      fill(#150903);
      //bleck
    }
    if (state==TREE) {
      fill(#58CE19);
      //green
    }

    rect(x, y, size, size);

    //state=(int(random(0, 4)))
  }
  void changeState(int neighborState) {
    if (this.state==TREE && neighborState==FIRE) {
      this.nextState=FIRE;
    }
    else if (state==FIRE) {
      nextState=BURNT;
    } else {
      nextState=state;
    }
  }
  void updateState() {
    state=nextState;
  }
}
