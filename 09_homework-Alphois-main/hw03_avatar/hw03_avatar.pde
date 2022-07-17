size(100,100);
background(120,0,0);
int xcor=50;
int ycor=50;
stroke(0,0,80);
strokeWeight(8);
fill(#D499E5);
circle(xcor,ycor,80);
int ycorEyesStart= xcor-20;
line(ycorEyesStart,ycorEyesStart,ycorEyesStart,ycorEyesStart+10);
//eye1
line(ycorEyesStart+30,ycorEyesStart,ycorEyesStart+30,ycorEyesStart+10);
//eye2
line(ycorEyesStart+5,ycorEyesStart+40,ycorEyesStart+35,ycorEyesStart+40);
//beginning of mouth

line(ycorEyesStart+35,ycorEyesStart+40, ycorEyesStart+40, ycorEyesStart+35);
//smirk
