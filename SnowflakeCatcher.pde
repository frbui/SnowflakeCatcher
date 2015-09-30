Snowflake [] stuff;
void setup()
{
  background(0, 204,100);
  size(400,400);//your code here
}
void draw()
{
   //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  boolean isMoving;
  int x , y;  //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400);
    isMoving = true;  //class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);//your code here
  }
  void lookDown()
  {
    if (y > 0 && y < 400 && y + 10 != color(0))
    {
      isMoving = false;
    }
    else
    {
      isMoving = true;
    }//your code here

  }
  void erase()
  {
    fill(0);
    ellipse(x,y,8,8);//your code here
  }
  void move()
  {
    if (isMoving = true){
      y = y + 1;
    }//your code here
  }
  void wrap()
  {
    if ( y >= 400)
    {
      y = 0;
      x = (int)(Math.random()*400);//your code here
    }
  }
}




