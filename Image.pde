private class Image {
  String path;
  PImage image;
  String orientation;
  
  Image(String p) {
    path = p;
    image = loadImage(path);
    orientation = setOrientation();
  }
  
  public PImage getImage() {
    return image;
  }
  
  public String getOrientation() {
    return orientation;
  }
  
  private String setOrientation() {
    int w = image.width;
    int h = image.height;
    float ratio = 100*(min(w,h)/max(w,h));
    if (ratio<80) {
      if (w>h) {
        return "landscape";
      }
      else {
        return "portrait";
      }
    }
    else {
      return "square";
    }
  }
  public void setFormat(int cw, int ch) {
    int w = image.width;
    int h = image.height;
    if (w>h) {
      image.resize(cw,0);
    }
    else {
      image.resize(0,ch);
    }
  }
}
