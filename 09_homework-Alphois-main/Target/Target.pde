void setup(){
background(0,100,0);
  size(400,400);
frameRate(60);
int x=0;
//you can concatenate strings and floats/integers
//  \t means tab
// \n means new line
// \t moves to next tab line (the next set of 5 spaces (in other words if you put \tab before the x: +x thing and the +x is acc 20, 
//then it will seem to have no space because it is already in the next set of 5 char
//if u instead name targetDraw to voidDraw, it loops the drawing func until you stop the program manually

}
void draw(){
float diameter=random(10,200);

float x= random((diameter/2), (width-diameter/2)  );
float y=random((diameter/2),(width-diameter));
print("x: " +x);
print("\ty : " +y);
println("\t diameter: " + diameter);
print("framerate: " +frameRate);
  targetDraw(x,y,diameter);
x++;
}

void targetDraw(float x,float y,float diameter){
  
  fill(255,0,0);
circle(x,y,diameter);
fill(255);
circle(x,y,diameter*2/3);
fill(255,0,0);
circle(x,y,diameter*1/3);
}
