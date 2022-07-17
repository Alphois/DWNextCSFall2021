//Krishna Dudani
ball b0;
ball b1;
ball b2;
void setup() {
  size(400,400);
  background(255,0,0);
  b0=new ball();
  b1=new ball();
  b2=new ball();
}
void draw() {
  frameRate(60);
  background(255,0,0);
  b0.display();
  b0.move();
  b1.display();
  b1.move();
  b2.display();
  b2.move();

}
