///File-Preference設中文，大字形
//1. 點、線、面
void setup()
{
  size(500,500);
  dx = random(-1,+1);
  dy = random(-1,+1);
}
float x=250, y=250;
float dx=1, dy=1;
void draw()
{
  background(0);
   ellipse(x,y,5,5);
   x += dx;
   y += dy;
   if(x<0 || x>500) dx = -dx;
   if(y<0 || y>500) dy = -dy;
}
