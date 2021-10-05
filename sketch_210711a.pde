
PImage img, img2;

KMeans km;

void setup()
{
  
  ArrayList<Point> pts = new ArrayList<Point>();
  size(600,600);
  img = loadImage("junoon.jpeg");
  img.resize(256,256);
  background(255);
  //image(img,172,172);
  for(int i=0;i<256;i+=10)
  {
    for(int j=0;j<256;j+=10)
    {
      color here = img.get(i,j);
      
      pts.add(new Point(red(here),green(here),blue(here)));
      //pts.add(new Point(hue(here),saturation(here),brightness(here)));
    }
  }
  //colorMode(HSB);
  noStroke();
  km = new KMeans(pts,5);
}

void mousePressed()
{
  color c = get(mouseX,mouseY);
  println(hue(c),saturation(c),brightness(c));
}

//void keyPressed()
//{
//  km.fit();
//}
int iter=0;
void draw()
{
  background(255);
  image(img,0,0);
  km.fit();
  km.display();
  println(iter);
  iter++;
  //noLoop();
}
