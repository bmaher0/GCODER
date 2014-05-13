METHODS OF THE GCODE OBJECT:

g.name(String filename_) - sets the name of the file to <filename_>

g.write(String line) - writes <line> directly to the G-code

g.comment(String line) - encloses <line> with parenthesis and writes it to the G-code

g.G(String n, float p) - writes a function of one argument to the G-code

g.G(String n, float x, float y, float z) - writes a function of three arguments to the G-code

g.space() - writes a blank line in the G-code;

g.space(int n) - writes <n> blank lines in the G-code

g.push() - saves the code to <g.filename>

g.push(String filename_) - saves code to <filename_>

g.l.rushTo(float x, float y, float z) - equivalent to g.G("00", x, y, z)

g.l.goTo(float x, float y, float z) - equivalent to g.G("01", x, y, z)

g.l.lin(float x1, float y1, float x2, float y2, float z) - creates a line from (x1, y1, z) to (x2, y2, z)

g.l.rec(float x1, float y1, float x2, float y2, float z) - creates a rectangle with opposite vertices (x1, y1, z) and (x2, y2, z)

g.l.tri(float x1, float y1, float x2, float y2, float x3, float y3, float z) - creates a triangle with vertices (x1, y1, z), (x2, y2, z), (x3, y3, z)

delayS(float sec) - creates a delay of <sec> seconds. Equivalent to     p.G("04", sec)

delayMS(float ms) - creates a delay of <ms? milliseconds. Equivalent to p.G("04", ms / 1000)