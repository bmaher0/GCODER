//MODIFY ONLY THE CODE IN THIS TAB

void GCODE() {

  //The G-Code. Write your G-code within this function

  g.name("cube.nc");
  g.comment("Testing a for loop");
  for (int i = 0; i <= 1; i -= .1) {
    g.l.rec(0, 0, 1, 1, i);
  }

  g.push();


  //End G-code here
}

