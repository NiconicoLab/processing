PImage img;
 
void setup() {
  size(900, 630);
}
 
void draw() {
  img = loadImage("A.png");
  //image(img, 0, 0);
  //image(img, width/4, height/4, width/2, height/2);
  image(img, 0, 0, width, height);
  img.save("B.png");
}
