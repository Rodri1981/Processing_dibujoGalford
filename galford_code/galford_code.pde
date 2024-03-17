PImage img;

int totalPoints = 20000;

void setup(){
  size(620, 650);
  img = loadImage("galford_02.jpg");
  background(0);
}

void draw(){
  float pointRandom = random(1, 15);
  float alphaRandom = random(50, 200);
  
  float centerX = width / 2.0;
  float centerY = height / 2.0;
  
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y * img.width;
  
  
  imageMode(CENTER);
  
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  fill(r, g, b, alphaRandom);
  ellipse(x, y, pointRandom, pointRandom);
}
