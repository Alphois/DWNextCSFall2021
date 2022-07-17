//Krishna Dudani
int numRows;
int numCols;
int rectWidth;
int rectHeight;
int count;
/* ===================
 Set the global variables to reasonable values.
 Set the screen size based on the global variable values.
 
 NOTE this is not setup. In order to use variables for size()
 this function must be called settings()
 =================== */
void settings() {
  numRows = 20;
  numCols = 20;
  rectWidth = 20;
  rectHeight = 20;
  size(numCols * rectWidth, numRows * rectHeight);
}


/* ===================
  You do not need to modify this function.
  You may change the frameRate for testing;
 =================== */
void setup() {
  frameRate(1);
  count = 0;
}

/* ===================
  DO NOT MODIFY DRAW.
  
  This will test each of the functions below.
  
  You may change the fill color if you like.
 =================== */
void draw() {
  fill(255);
  if (count < 5 ) {
    tile();
  } 
  else if (count < 10) {
    alternateRows();
  }
  else if (count < 15) {
    alternateCols();
  }
  else if (count < 20) {
    marksTheSpot();
  }
  else if (count < 25) {
    checkerboard();
  }
  count = (count + 1) % 25;
  saveFrame("output/" + nf(count, 3) + ".png");
}

/* ===================
  Create a grid of rectangles using the global variables.
 =================== */
void tile() {
  int x=0;
  int y=0;
  int c = 0;
  int r = 0;

  for (;r < numRows;r++) {
    for (;c < numCols;c++) {
      rect(x, y, rectWidth, rectHeight);
      x+= rectWidth;
      
    }
    y+= rectHeight;
    x= 0;
    c= 0;
    
  }
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should alternate every other ROW.
 =================== */
void alternateRows() {
  int x=0;
  int y=0;
  int c = 0;
  int r = 0;

  for (;r < numRows;r++) {
    if (r % 2 == 1) {
      fill(0);
    } else {
      fill(255);
    }
    for (;c < numCols;c++) {
      rect(x, y, rectWidth, rectHeight);
      x+= rectWidth;
    }
    y+= rectHeight;
    x= 0;
    c= 0;
  }
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should alternate every other COLUMN.
 =================== */
void alternateCols() {
  int x=0;
  int y=0;
  int c = 0;
  int r = 0;

  for (;r < numRows;r++) {
    for (;c < numCols;c++) {
      if (c % 2 == 1) {
        fill(0);
      } else {
        fill(255);
      }
      rect(x, y, rectWidth, rectHeight);
      x+= rectWidth;
    }
    y+= rectHeight;
    x= 0;
    c= 0;
  }
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should create a checkerboard pattern.
 =================== */
void checkerboard() {
  int x=0;
  int y=0;
  int c = 0;
  int r = 0;
  int i = 0;
  for (;r < numRows;r++) {
    for (;c < numCols;c++) {
      if (i % 2 == 1) {
        fill(0);
      } else {
        fill(255);
      }
      rect(x, y, rectWidth, rectHeight);
      x+= rectWidth;
      i++;
    }
    y+= rectHeight;
    x= 0;
    c= 0;
    i++;
  }
}

/* ===================
  Create a grid of rectangles using the global variables.
  
  fill color should create an X pattern.
  this will only work if numRows == numCols
 =================== */
void marksTheSpot() {
  int x=0;
  int y=0;
  int c = 0;
  int r = 0;

  for (;r < numRows;r++) {
    for (;c < numCols;c++) {
      if (c == r || c == (numRows-1) -r) {
        fill(0);
      } else {
        fill(255);
      }
      rect(x, y, rectWidth, rectHeight);
      x+= rectWidth;
    }
    y+= rectHeight;
    x= 0;
    c= 0;
  }
}
