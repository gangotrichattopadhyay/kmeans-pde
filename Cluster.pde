class Cluster
{
  ArrayList<Point> pts;
  Point cen;
  color c;
  
  Cluster(Point _cen, color _c)
  {
    pts = new ArrayList<Point>();
    c = _c;
    
    cen = new Point(_cen,c);
    pts.add(cen);
  }
  
  void add(Point p)
  {
    pts.add(new Point(p,c));
  }
  
  float meanify()
  {
    float x=0,y=0,z=0,co=0;
    float oldX = cen.x, oldY = cen.y, oldZ = cen.z;
    for(Point p:pts)
    {
      x+=p.x;
      y+=p.y;
      z+=p.z;
      co++;
    }
    x/=co;
    y/=co;
    z/=co;
    cen = new Point(x,y,z,c);
    pts.clear();
    return Math.abs(x-oldX)+Math.abs(y-oldY)+Math.abs(z-oldZ);
  }
  
  void display(int x, int y, int size)
  {
    fill(cen.x,cen.y,cen.z);
    rect(x,y,size,size);
  }
}
