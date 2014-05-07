//MODIFY ONLY THE CODE IN THIS TAB

//The G-Code. Write your G-code within the GCODE() function

void GCODE() {
  g.G("00", 0, 0, 0);
  g.G("01", 0, 0, -.1);
  g.G("01", 0, 1, -.1);
  g.G("01", 1, 1, -.1);
  g.G("01", 1, 0, -.1);
  g.G("01", 0, 0, -.1);
}

