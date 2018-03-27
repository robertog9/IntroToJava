int foody,x,y;
int score;
void setup(){
  size(800,800);
}
  void draw(){
    background(0,0,80);
    drawFish();
    foody=foody+3;
    fill(300,10,0);
    noStroke();
    ellipse(100,foody,25,25);
if(foody>800){
  reset();

}
checkCatch(100,foody);
}
  void reset(){
    foody=3;
  }
    void drawFish(){

  background(141,233,237);

  noStroke();

  fill(255,255,255);

  ellipse(mouseX-17,mouseY-17,20,20); //back side eye

  fill(255,200,88);

  ellipse(mouseX,mouseY,90,50); //body

  triangle(mouseX+30,mouseY,mouseX+70,mouseY+30,mouseX+70,mouseY-30); //tail

  stroke(0);

  triangle(mouseX,mouseY,mouseX+15,mouseY+10,mouseX+15,mouseY-10); //side fin

  noStroke();

  fill(255,200,88);

  ellipse(mouseX,mouseY,15,15); //side fin cover

  noStroke();

  fill(255,255,255);

  ellipse(mouseX-25,mouseY-15,20,20); //front eye

  fill(0,0,0);

  ellipse(mouseX-25,mouseY-15,5,5); //pupil

  fill(141,233,237);

  ellipse(mouseX-45,mouseY,25,25); //mouth

}
 void checkCatch(int x, int y){

                         if(x > mouseX && x < mouseX+50){

                                    if(y > mouseY && y < mouseY+30){

                                      score++;
                                      foody=3;

                                    }

                          }

                         else if (y > height && score > 0){

                                    score--;

                          }

println("Your score is now: " + score);

}