class KMeans
{
  
  ArrayList<Cluster> cts;
  ArrayList<Point> pts;
  
  KMeans(ArrayList<Point> _pts, int k)
  {
    pts = _pts;
    int s = pts.size();
    cts = new ArrayList<Cluster>();
    while(k-->0)
    {
      cts.add(new Cluster(pts.get((int)random(s)), color(random(360),100,100)));
    }
  }
  
  void display()
  {
    int coun=0;
    for(Cluster c: cts)
    {
      c.display(coun,300,120);
      coun+=120;
    }
  }
  
  void fit()
  {
    for(Point p: pts)
    {
      Cluster cen = cts.get(0);
      float min = dist(p.x,p.y,p.z,cen.cen.x,cen.cen.y,cen.cen.z);
      for(Cluster c: cts)
      {
        float h = dist(p.x,p.y,p.z,c.cen.x,c.cen.y,c.cen.z);
        if(h<min)
        {
          min=h;
          cen=c;  
        }
      }
      cen.add(p);
    }
    if(meanify())
      noLoop();
  }
  
  boolean meanify()
  {
    float dif = 0;
    for(Cluster c: cts)
      {
        dif+= c.meanify();
      }
    if(dif<1)
      return true;
    return false;
  }
  
  
}
