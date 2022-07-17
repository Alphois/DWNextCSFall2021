int SPACE = 0;
int WALL = 1;
int START = 2;
int FINISH = 3;
int PATH = 4;

Maze m;
MoveList moves = new MoveList();


void setup() {
  size(400, 400);
  frameRate(5);
  m = new Maze("maze_simple.txt");
  m.display();

  moves.loadList("moves_simple.txt");
  println(moves);
}
void draw() {
  m.display();
  if (moves.length() != 0) {
    m.makeMove(moves.remove());
  }
}
