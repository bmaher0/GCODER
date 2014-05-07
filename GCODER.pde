//MODIFY ONLY THE CODE IN THIS TAB


void GCODE() {
  
  //The G-Code. Write your G-code within this function
  
  g.G("00", 0, 0, 0);
  g.G("01", 0, 0, -.1);
  g.G("01", 0, 1, -.1);
  g.G("01", 1, 1, -.1);
  g.G("01", 1, 0, -.1);
  g.G("01", 0, 0, -.1);
  
  //End G-code here
  
}

