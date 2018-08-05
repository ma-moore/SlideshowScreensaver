PImage img;
String path = "E:\\Users\\will2\\Documents\\Google Drive\\Cool Art\\The Internet\\Kate Leth\\2017Dec1.tif";
int screenWidth = 1920;
int screenHeight = 1080;
public ImageGetter images;

void setup() {
  fullScreen();
  //images = new ImageGetter();
  //img = images.getImage();
  //img = loadImage(path);
}

void draw() {
  background(0);
  //img = images.getImage();
  //image(img,45,80,1000,1000);
  //Container c = new Container(500,500,100,100);
  //c.drawImage();
  rect(25,25,250,250); //small at top
  rect(25,300,500,750); //large portrait
  rect(550,300,750,500); //mid landscape
  rect(550,825,200,200); //small below mid landscape
  
  delay(1500);
}
