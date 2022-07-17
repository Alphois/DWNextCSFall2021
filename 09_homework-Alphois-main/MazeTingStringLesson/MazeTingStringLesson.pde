void setup() {
  size(400,400);
String[] lines;
String s = "goodbye";
//String is a class
  //whats special about this is that you don't actually need to do String s = new String("goodbye") 
  //String is a special type of class for this reason
  //because u dont need to instantiate objects
char c='g';
//character is a primitive, not a class
println("hello");
println(s);
println(s.charAt(3));
println(s.length());
//interestingly, u put parenthesis after s.length so its s.length()
//but you do not do this for arrays. for arrays its just like s.length
//weird, but remember dis
lines=loadStrings("maze_simple.txt");
println(lines[0]);
println(lines[1]);

}
 
