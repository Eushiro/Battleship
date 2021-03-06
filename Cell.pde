/* A Cell object
 state = 0: cell contains water
 state = 1: cell contains boat
 state = 2: water cell was fired at
 state = 3: boat cell was fired at
 */
//Display functions are the same, just different colors.
class Cell {   
  int x, y;  
  int w, h;  
  int state;  
  int priority;
  // Cell Constructor  
  Cell(int tempX, int tempY, int tempW, int tempH) {   
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    state = 0; 
    priority = 0;
  }   
  void click(int mx, int my, boolean lockBoats) {   
    if (mx > x && mx < x + w && my > y && my < y + h && lockBoats) {
      if (state == 0 || state == 1) {
        state = state + 2;
      }
    }
  }   

  void display() {   
    stroke(255);
    fill(48, 139, 206);
    rect(x, y, w, h);

    int b = 8;

    if (state == 0) {
      //nothing happens
    } else if (state == 1) {
      //nothing happens
    } else if (state == 2) {
      stroke(255, 255, 0);
      ellipse(x+w/2, y+h/2, w-b, h-b);
    } else if (state == 3) {
      stroke(255, 0, 0);
      line(x+b, y+b, x+w-b, y+h-b);
      line(x+w-b, y+b, x+b, y+h-b);
    }
  }
  void display2() {   
    stroke(0);
    fill(0);
    rect(x, y, w, h);

    int b = 8;

    if (state == 0) {
      // nothing
    } else if (state == 1) {
      // Draw an O
      ellipse(x+w/2, y+h/2, w-b, h-b);
    } else if (state == 2) {
      // Draw an X
      line(x+b, y+b, x+w-b, y+h-b);
      line(x+w-b, y+b, x+b, y+h-b);
    } else if (state == 3) {
      line(x+b, y+b, x+w-b, y+h-b);
      line(x+w-b, y+b, x+b, y+h-b);
    }
  }

  void display3() {
    stroke(0);
    fill(170, 0, 162);
    rect(x, y, w, h);
  }
}   