//MODIFY ONLY THE CODE IN THIS TAB

void GCODE() {

  //The G-Code. Write your G-code within this function
  g.set("example.nc");

  g.G("00", 0, 0, 0);
  //  g.l.delayS(1);
  //  g.l.rect(0, 0, 1, 1, 0);
  //  g.l.delayMS(5000);
  g.l.tri(0, 0, 0, 1, 1, 1, 0);

  //End G-code here
}

