private class Container {
  int cWidth, cHeight, xPos, yPos, iWidth, iHeight;
  Image image;
  
  Container(int cw, int ch, int xp, int yp) {
    cWidth = cw;
    cHeight = ch;
    xPos = xp;
    yPos = yp;
    iWidth = 0;
    iHeight = 0;
    image = images.getImage();
    image.setFormat(cWidth, cHeight);
  }
  
  public void drawImage() {
    image(image.getImage(),xPos,yPos);
    println(image.getOrientation());
  }
}
