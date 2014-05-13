class Library {
  GCODE p;
  
  Library(GCODE parent) {
    p = parent;
  }

  void rushTo(float x, float y, float z) {
    p.G("00", x, y, z);
  }

  void goTo(float x, float y, float z) {
    p.G("01", x, y, z);
  }

  void lin(float x1, float y1, float x2, float y2, float z) {
    p.G("01", x1, y1, z);
    p.G("01", x2, y2, z);
  }

  void rec(float x1, float y1, float x2, float y2, float z) {
    p.G("01", x1, y1, z);
    p.G("01", x1, y2, z);
    p.G("01", x2, y2, z);
    p.G("01", x2, y1, z);
    p.G("01", x1, y1, z);
  }

  void tri(float x1, float y1, float x2, float y2, float x3, float y3, float z) {
    p.G("01", x1, y1, z);
    p.G("01", x2, y2, z);
    p.G("01", x3, y3, z);
    p.G("01", x1, y1, z);
  }

  void delayS(float sec) {
    p.G("04", sec);
  }

  void delayMS(float ms) {
    p.G("04", ms / 1000);
  }
}

