Bacteria[] cell = new Bacteria[200];
//String s = "code now";
//declare bacteria variables here   
void setup()   
{     
  size(900, 600);
  smooth();
  background(60);
  for(int i = 0; i < cell.length; i++){
  cell[i] = new Bacteria(width/2, height/2);
  }

  //initialize bacteria variables here
}   
void draw()   
{ 
  background(60);
  fill(0,200,0);
  ellipse(mouseX, mouseY, 25, 25);
  noLoop();
  for(int i = 0; i < cell.length; i++){
  cell[i].show();
  }

  //move and show the bacteria
}  

void mousePressed() {
  textSize(100);
  //  text(s, 300, height/2);
  //  background((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  // redraw();
}
class Bacteria    
{     
  float x_pos;
  float y_pos;

  Bacteria(int x, int y) {
    x_pos = (int)(Math.random() * 900);
    y_pos = (int)(Math.random() * 600);
  }

  void move() {

    if (x_pos <= mouseX) {
      x_pos = x_pos - 5;
    } else if (x_pos >= mouseX) {
      x_pos = x_pos + 5;
    }
  }

  void show() {
    fill(255, 255, 0);
    noLoop();
    ellipse(x_pos, y_pos, 25, 25);
    loop();
    if (mouseX >= x_pos) {
      x_pos = x_pos - .4;
    }
    if (mouseX <= x_pos) {
      x_pos = x_pos + .4;
    }
    if (mouseY >= y_pos) {
      y_pos = y_pos - .4;
    }
    if (mouseY <= y_pos) {
      y_pos = y_pos + .4;
    }
  }
  //lots of java!
}    
