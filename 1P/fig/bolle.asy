settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(0.5cm);
import graph;


real r = 5;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

path s = graph(f, pi, 2*pi, operator ..);
draw(s);
draw((r,0)--(-r,0));

real x = 1.2;
real y = 1.2;
label("1", (-x,-y));
label("2", (x,-y));
label("3", (-x,-2.8*y));
label("4", (x,-2.8*y));
draw(shift(-x,-y)*unitcircle);
draw(shift(x,-y)*unitcircle);
draw(shift(x,-2.8*y)*unitcircle);
draw(shift(-x,-2.8*y)*unitcircle);
