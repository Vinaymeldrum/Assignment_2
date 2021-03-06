//Displaying the given exercise.
class Exercise1 {
  void setup(){
    
  }
  void draw () {
    strokeWeight(0);
    //Top
    fill (119, 176, 245);
    rect(0, 0, 800, 300);

    //Sun
    fill(252, 245, 0);
    ellipse(200, 300, 150, 150 );  
    //Horizn line
    fill(28, 234, 92);
    rect(0, 300, 800, 300);
    //House rect
    fill(240, 97, 123);
    rect(550, 250, 150, 125);
    //Door
    fill(255, 255, 255);
    rect(612, 320, 35, 50);
    //Doorknob
    fill(0);
    ellipse(622, 348, 10, 10);
    //Triangle
    fill(0);
    triangle(625, 225, 545, 250, 705, 250);
    //Sun ray 1 on left.
    stroke(252, 245, 0);
    strokeWeight(3);
    line(90, 280, 200, 280);
    line(90, 280-30, 200, 280);
    line(90, 280-60, 200, 280);
    line(90+10, 280-90, 200, 280);
    line(90+40, 280-100, 200, 280);
    line(90+80, 280-120, 200, 280);
    line(90+120, 280-120, 200, 280);
    line(90+140, 280-160, 200, 280);
    /*line(90,280-160,200,280);
     line(90,280-180,200,280);
     line(90,280-220,200,280);
     line(90,280-240,200,280);*/
  }
}