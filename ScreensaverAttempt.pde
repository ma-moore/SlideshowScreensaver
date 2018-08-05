PImage img;
String path = "E:\\Users\\will2\\Documents\\Google Drive\\Cool Art\\C_v6T1UUAAAdS72.jpg";
int screenWidth = 1920;
int screenHeight = 1080;


void setup() {
  img = loadImage(path);
  fullScreen();
}

void draw() {
  background(0);
  image(img,screenWidth,screenHeight);
}
