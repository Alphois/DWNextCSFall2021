int x;
int y;
int radius;
int xspeed;
int yspeed;
void setup()
{
  size (1000,1000);
  background (120,0,0);
  fill (0, 0, 120);
  x=200;
  y=200;
  radius=50;
  xspeed=0;
  yspeed=0;
}
void draw()
{
  background (120,0,0);
  circle (x,y, radius);
  x+=xspeed;
  y+=yspeed;
  //updates center of circle
  if (x>width+radius)
  {x=0;}
  //don't go over x bound, or you restart
  if (x<0-20)
  {x=width;}
  //if x reaches below 0 by a reasonable amount, then make it start at the right end of the screen
  //this will only happen if x approaches left and not to the right because when x 
  //oversteps in the right direction it ends up restarting at x=0 and not x-(random value), thus
  //not triggering this if statement
  if (y>height+20)
  {y=0;}
  //
  if (y<0-20)
  {y=height;}
  //same idea for y
}

void keyPressed ()
{
 println(key); 
 if (key == 'w')
 {
   yspeed=-5;
   xspeed=0;
 }
 //if key is pressed, update yspeed var
 else if (key == 's')
 {
   yspeed=5;
   xspeed=0;
 }
  //if key is pressed, update yspeed var

 else if (key == 'a')
 {
   xspeed=-5;
   yspeed=0;
 }
  //if key is pressed, update xspeed var

 else//if (key == 'd')
 {
   xspeed=5;
   yspeed=0;
 }
}
