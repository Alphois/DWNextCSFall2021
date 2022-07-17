class MoveList {
  
  Move[] moves;
  int last;
  //last is the integer assigned to the # of moves that there is
  //"how many moves are there in the string array moves?"
  
  
  MoveList() {
    last = 0;
    moves = new Move[10];
  }//constructor
void loadList(String file){
  file
  for(int i=0;i<file
}
  void expand() {
    Move[] newList = new Move[moves.length * 2];
    for (int m=0; m<moves.length; m++) {
      newList[m] = moves[m];
    }//copy values
    moves = newList;
  }//expand
  
  void add(Move m) {
    if (last == moves.length) {
      expand();
    }//expand
    moves[last] = m; 
    last++;
  }//add
  
  Move remove() {
    Move v = moves[0];
    for (int m=0; m < last-1; m++) {
      moves[m] = moves[m+1];
    }//slide values down
    last--;
    return v;
  }//remove
  
  int length() {
    return last;
  }
  //since toString() is blue, it means that java "knows" this
  //ever string has a toString
  //toString is automatically called whenever you use an object variable in a string context
  String toString() {
    String s = "[ ";
    for (int m=0; m<last; m++) {
      s+= moves[m] + " ";
      // as aforementioned, u r using an object in a string context
      //if u rename toString to something else, u are overriding java's default toString, causing
      //da ting to just print out these random chars:
      //"hw20githubSourceTester$MoveList@5fb00588"
          //the hw20githubSourceTester is the folder
    }
    s+= "]";
    return s;
  }//toString
}
