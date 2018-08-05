

private class ImageGetter {
  ArrayList<String> images;
  //ArrayList<PImage> images;
  String path = "E:\\Users\\will2\\Documents\\Google Drive\\Cool Art\\";
  ArrayList<String> supportedTypes;
  ArrayList<Image> allImages;
  
  ImageGetter() {
    supportedTypes = new ArrayList<String>();
    supportedTypes.add("jpg"); supportedTypes.add("png"); supportedTypes.add("gif"); supportedTypes.add("bmp");
    images = new ArrayList<String>();
    images.addAll(getFiles(path));
    allImages = getAllImages();
  }
  
  public Image getImage() {
    int rand = int(random(images.size()));
    String selection = images.get(rand);
    Image image = new Image(selection);
    return image;
  }
  
  public ArrayList<Image> getAllImages() {
    ArrayList<Image> allLandscape = new ArrayList<Image>();
    ArrayList<Image> allPortrait = new ArrayList<Image>();
    ArrayList<Image> allSquare = new ArrayList<Image>();
    int count=0;
    while (count<50&&count<images.size()){
      Image image = getImage();
      String orientation = image.getOrientation();
      if (orientation.equals("landscape")) {
        allLandscape.add(image);
      } else if (orientation.equals("portrait")) {
        allPortrait.add(image);
      } else {
        allSquare.add(image);
      }
      count++;
    }
    System.out.println("Landscape: "+allLandscape.size());
    System.out.println("Portrait: "+allPortrait.size());
    System.out.println("Square: "+allSquare.size());
    return allLandscape;
  }
  
  private ArrayList<String> getFiles(String path) {
    ArrayList<String> images = new ArrayList<String>();
    File[] files = listFiles(path);
    for (File f: files) {
      if (f.isDirectory()) {
        images.addAll(getFiles(f.getAbsolutePath()));
      } 
      else {
        String filePath = f.getAbsolutePath();
        Integer n = filePath.lastIndexOf('.');
        String type = filePath.substring(n+1);
        if (supportedTypes.contains(type)) {
          images.add(filePath);
        }
      }
    }
    return images;
  }
  
  private void listFileTypes(ArrayList<String> paths) {
    HashMap<String, Integer> types = new HashMap<String, Integer>();
    for (String f: paths) {
      Integer n = f.lastIndexOf('.');
      String type = f.substring(n+1);
      if(types.containsKey(type)) {
        types.put(type, types.get(type)+1);
      }
      else {
        types.put(type,1);
      }
    }
    for (String k: types.keySet()) {
      println("Type: "+k+" "+types.get(k));
    }
  }
}
