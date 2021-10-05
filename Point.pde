class Point
{
  float x;
  float y;
  color col;
  float z;
  
  Point(float _x, float _y, float _z)
  {
    x=_x;
    y=_y;
    z=_z;
    col = 255;
  }
  
  Point(float _x, float _y, float _z, color _col)// float _z)
  {
    x=_x;
    y=_y;
    z=_z;
    col = _col;
  }
  
  Point(Point p, color _col)
  {
    x=p.x;
    y=p.y;
    z=p.z;
    col=_col;
  }
  
  void display()
  {
    fill(col);
    ellipse(x,y,10,10);
  }
  
}
