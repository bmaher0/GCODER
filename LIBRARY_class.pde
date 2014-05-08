class Library {
  Library(GCODE parent) {
  }

  void rect(float x1, float y1, float x2, float y2, float z) {
    g.G("01", x1, y1, z);
    g.G("01", x1, y2, z);
    g.G("01", x2, y2, z);
    g.G("01", x2, y1, z);
    g.G("01", x1, y1, z);
  }

  void delayS(float sec) {
    g.G("04", sec);
  }

  void delayMS(float ms) {
    g.G("04", ms / 1000);
  }
}

