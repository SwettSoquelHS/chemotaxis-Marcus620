Bacteria[] cell = new Bacteria[1];
String s = "code now";
//declare bacteria variables here   
void setup()   
{     
  size(900, 600);
  background(60);
  
  cell[0] = new Bacteria(width/2, height/2);
  //initialize bacteria variables here
}   
void draw()   
{ 
  cell[0].show();
  //move and show the bacteria
}  

void mousePressed(){
  textSize(100);
  text(s, 300, height/2);
//  background((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
// redraw(); 
}
class Bacteria    
{     
  int x_pos;
  int y_pos;
  
  Bacteria(int x, int y){
    x_pos = (int)(Math.random() * 900);
    y_pos = (int)(Math.random() * 600);
  }
  
  void move(){
  }
  
  void show() {
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), 
    (int)(Math.random() * 255));
    ellipse(mouseX,mouseY,(int)(Math.random() * 200),50);
    
  }
  //lots of java!
}    
