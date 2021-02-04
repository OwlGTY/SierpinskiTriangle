public void setup()
{
  size(400,400);
}
public void draw()
{
  sierpinski(0,400,400);
}
int c = 400;
public void mousePressed()//optional
{
  c = c/2;
  if (c <= 5) {
    c = 400;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= c){
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else {
  sierpinski(x, y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
  }
}
