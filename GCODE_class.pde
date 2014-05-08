class GCODE {
  StringList code;
  String filename;
  Library l;

  GCODE(String filename_) {
    code = new StringList();
    l = new Library(this);
    filename = filename_;
  }

  void G(String n, float x, float y, float z) {
    n = (n.length() < 2) ? "0" + n : n;
    String line = "G"+n+" X"+x+" Y"+y+" Z"+z;
    code.append(line);
  }

  void push() {
    String[] codeArray = new String[code.size()];
    codeArray = arrayConv(code);
    saveStrings("GCODE.nc", codeArray);
  }
}
