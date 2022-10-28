settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(2cm);
import axes;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}
real a = pi/4;
path s = graph(f, 0, 2*pi, operator ..);
draw(s);

xaks(-1.1, 1.1, l="$$");
yaks(-1.1, 1.1, l="$$");


