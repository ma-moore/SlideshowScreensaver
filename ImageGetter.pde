

private class ImageGetter {
  ArrayList<String> images;
  //ArrayList<PImage> images;
  String path = "E:\\Users\\will2\\Documents\\Google Drive\\Cool Art\\";
  ArrayList<String> supportedTypes;
  
  ImageGetter() {
    supportedTypes = new ArrayList<String>();
    supportedTypes.add("jpg"); supportedTypes.add("png"); supportedTypes.add("gif"); supportedTypes.add("bmp");
    images = new ArrayList<String>();
    images.addAll(getFiles(path));
    //listFileTypes(images);
    println(images.size());
  }
  
  public PImage getImage() {
    int rand = int(random(images.size()));
    PImage image = loadImage(images.get(rand));
    return image;
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
    //ArrayList<String> types = new ArrayList<String>();
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
