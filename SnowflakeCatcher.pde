Snowflake [] stuff;
int potato;
int apple;
void setup()
{
  background(0);
  size(400,400);//your code here
  stuff = new Snowflake[100];
  for (int i = 0; i <stuff.length; i ++){
    stuff[i] = new Snowflake();
  }
}
void draw()
{
   for (int i = 0; i <stuff.length; i ++)
   {
   stuff[i].erase();
   stuff[i].lookDown();
   stuff[i].move();
   stuff[i].wrap();
   stuff[i].show();  //your code here
 }
 if(keyPressed == true && key == 'r')
  background(0);
}
void mouseDragged()
{
  int potato = mouseX;
  int apple = mouseY;
  noStroke();
  fill(200,100,100);
  ellipse(potato,apple,10,10);//your code here
}

class Snowflake
{
  boolean isMoving;
  int x , y;  //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*401);
    y = (int)(Math.random()*401) - 400;
    isMoving = true;  //class member variable initializations
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(x,y,5,5);//your code here
  }
  void lookDown()
  {
    if (y > 0 && y < 400 && (get(x,y+8) != color(0)))
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
    if (isMoving){
      y = y + 1;
    }
  }
  void wrap()
  {
    if ( y == 370)
    {
      y = 0;
      x = (int)(Math.random()*401);//your code here
    }
  }
}


