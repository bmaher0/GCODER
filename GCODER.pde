//MODIFY ONLY THE CODE IN THIS TAB

void GCODE() {

  //The G-Code. Write your G-code within this function

  g.name("example.nc");
  g.comment("This is a test comment");
  g.l.rushTo(0, 0, 0);
  g.l.delayS(1);
  g.space();
  g.l.rec(0, 0, 1, 1, 0);
  g.l.delayMS(5000);
  g.space();
  g.l.tri(1, 1, 1, 2, 2, 2, 0);

  g.push();


  //End G-code here
}

