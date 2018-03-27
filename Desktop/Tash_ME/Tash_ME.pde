PImage mustache;
   PImage friend;
void setup(){
    friend = loadImage("face.jpg");
  size(800,800);
  friend.resize(800,800);
  mustache = loadImage("mustache.png");
}
  void draw(){
    background(friend);
   if(mousePressed){
    image(mustache, mouseX, mouseY);
  }
  }