int x,y,radius;
void setup(){
size(1000,1000);
background(255,180,0);
x=500;
y=500;
radius=50;
}
void draw(){
background(255,180,0);

if (x<=(width/3)) {
fill(255,0,0);
}
else
//set fill color
if (x<=(2/3.0)*width ){
fill(0,255,0);
}else 
//set fill color
if (x<=width){
fill(0,0,255);
}
//set fill color
circle(x,y,radius);
x+=1;
if (x>width+20){
x=0;
y+=2*radius;
}
}
