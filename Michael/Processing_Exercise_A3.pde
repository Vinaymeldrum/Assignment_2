// Michael Lam
// March 9, 2018
// Beautiful circles that follow the mouse.

void setup(){
 background(0);
 size(800, 600);
}

void draw(){
  fill(mouseX, mouseY, 255);
  ellipse(mouseX, mouseY, 50, 50); 
}