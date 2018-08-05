PImage img;
String path = "E:\\Users\\will2\\Documents\\Google Drive\\Cool Art\\The Internet\\Kate Leth\\2017Dec1.tif";
int screenWidth = 1920;
int screenHeight = 1080;
ImageGetter images;

void setup() {
  fullScreen();
  images = new ImageGetter();
  img = images.getImage();
  //img = loadImage(path);
}

void draw() {
  background(0);
  img = images.getImage();
  image(img,0,0);
  delay(1500);
}
