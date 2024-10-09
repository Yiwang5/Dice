void setup()
{
  size(500, 535);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{

  int count = 0;
  for (int y = 0; y < 500; y = y + 100)
  {
    for (int x = 0; x < 500; x = x + 100) {
      Die bob = new Die (x, y);
      if (bob.one == true)
        count = count + 1;
      else if (bob.two == true)
        count = count + 2;
      else if (bob.three == true)
        count = count + 3;   
      else if (bob.four == true)
        count = count + 4;   
      else if (bob.five == true)
        count = count + 5;
      else if (bob.six == true)
        count = count + 6;
      fill(255);
      rect (-1, 500, 501, 60);
      fill(0); 
      text("count:", 245, 517);
      text(count, 273, 517);
      text ("By Yixuan Wang, APCS A, 2024", 400,517);
      bob.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int chance;
  boolean one;
  boolean two; 
  boolean three; 
  boolean four; 
  boolean five; 
  boolean six; 
  int myX, myY;

  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    int chance = (int)(Math.random() *6)+ 1;
    if (chance == 1)
      one = true;
    if (chance == 2)
      two = true;
    if (chance == 3)
      three = true;
    if (chance == 4)
      four = true;
    if (chance == 5)
      five = true;
    if (chance == 6)
      six = true;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 100,100);
    fill(0);
    if (one == true) {
      text("1", myX+ 25, myY+ 50);
      ellipse (myX + 50, myY + 50, 20, 20);
    } else if (two == true) {
      text("2", myX+ 25, myY+ 50);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
    } else if (three == true) {
      text("3", myX+ 25, myY+ 50);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
    } else if (four == true) {
      text("4", myX+ 25, myY+ 50);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+20, myY+20, 20, 20);
    } else if (five == true) {
      text("5", myX + 25, myY+ 50);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+50, myY+50, 20, 20);
    } else if (six == true) {
      text("6", myX+ 50, myY+ 50);
      ellipse(myX+80, myY+20, 20, 20);
      ellipse(myX+20, myY+80, 20, 20);
      ellipse(myX+80, myY+80, 20, 20);
      ellipse(myX+20, myY+20, 20, 20);
      ellipse(myX+20, myY+50, 20, 20);
      ellipse(myX+80, myY+50, 20, 20);
    }
  }
}
