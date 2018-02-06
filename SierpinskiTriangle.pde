public void setup()
{
  background(0);
  size(800, 800);
  noStroke();
  fill(255);
}
public void draw()
{
  sierpinski(50,750, 700);
}
public void mouseDragged()//optional
{
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  text("wow", (int)(Math.random()*801), (int)(Math.random()*801));
}
private int stop = 100;
public void sierpinski(int x, int y, int len) 
{
  if (len<=stop) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}