class GCODE {
  StringList code;
  String filename;
  Library l;

  GCODE(String filename_) {
    code = new StringList();
    l = new Library(this);
    filename = filename_;
  }

  void name(String filename_) {
    filename = filename_;
  }

  void G(String n, float p) {
    String line = "";
    n = (n.length() < 2) ? "0" + n : n;
    if (n == "03") {
      line = "G03 P"+p;
    }
    code.append(line);
  }

  void G(String n, float x, float y, float z) {
    String line;
    n = (n.length() < 2) ? "0" + n : n;
    line = "G"+n+" X"+x+" Y"+y+" Z"+z;
    code.append(line);
  }

  void pushFile() {
    String[] codeArray = new String[code.size()];
    codeArray = arrayConv(code);
    saveStrings(filename, codeArray);
  }
  
  void push(String filename_) {
    String[] codeArray = new String[code.size()];
    codeArray = arrayConv(code);
    saveStrings(filename_, codeArray);
  }
}

