class MoveList {

  Move[] moves;
  int last;

  MoveList() {
    last = 0;
    moves = new Move[10];
  }//constructor
  void loadList(String file) {
    String[] list = loadStrings(file);
    //list is an array of strings. Each line of the file is one element of the array, which are each, once
    //again, a string
    //make new MoveList,and then add to it
    int j[];
    for (int i=0; i<list.length;i++){
      j= int(split(list[i], ' '));
    Move a = new Move(j[0],j[1],j[2]);
    add(a);
  }
        
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

  String toString() {
    String s = "[ ";
    for (int m=0; m<last; m++) {
      s+= moves[m] + " ";
    }
    s+= "]";
    return s;
  }//toString
}
/*====== 
solving the maze

Solve(r,c)
0. if I (r,c) is the end, finish
1. If (r,c) is wall or already a path, do not continue
2. Otherwise, 
  - add (r,c) to move out
  -set type of (r,c) to path
  -check if (r,c+1) is the end
----> go baack to Solve(r,c)!
  -Check if (r+1,c) is the end
  -Check if (r,c-1) is the end.
  -check if (r-1,c) is the end
  Check if (r-1,c) is the end
  this is 100% recursion
  consider adding new type(..?)
======*/
