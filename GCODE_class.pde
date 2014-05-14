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
    line = (n == "04") ? "G04 P"+p : line;
    code.append(line);
  }

  void G(String n, float x, float y, float z) {
    String line = "";
    n = (n.length() < 2) ? "0" + n : n;
    line = (n == "00" || n == "01") ? "G"+n+" X"+x+" Y"+y+" Z"+z : line;
    code.append(line);
  }

  void G(int m, float[] args) {
    String line = "";
    String n = str(m);
    n = (n.length() < 2) ? "0" + n : n;
    line = (n == "00" || n == "01") ? "G"+n+" X"+args[0]+" Y"+args[1]+" Z"+args[2] : line;
    line = (n == "04") ? "G04 P"+args[0] : line;
    code.append(line);
  }


  void space() {
    code.append(" ");
  }

  void space(int n) {
    for (int i = 0; i < n; i++) {
      code.append(" ");
    }
  }

  void push() {
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

