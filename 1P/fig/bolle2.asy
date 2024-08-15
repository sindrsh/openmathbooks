settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(0.45cm);
import graph;

real r = 5.3;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

path s = graph(f, pi, 2*pi, operator ..);
draw(s);
draw((r,0)--(-r,0));

real x = 1.2;
real y = 1.2;
real o = 0.6;
pen g = green+opacity(o);
pen b = blue+opacity(o);
pen r = red+opacity(o);
filldraw(shift(-x,-y)*unitcircle, g);
filldraw(shift(x,-y)*unitcircle, g);
filldraw(shift(-3*x,-y)*unitcircle, g);
filldraw(shift(3*x,-y)*unitcircle, b);
filldraw(shift(0,-2.8*y)*unitcircle,r);
filldraw(shift(-2*x,-2.8*y)*unitcircle,b);
filldraw(shift(2*x,-2.8*y)*unitcircle,r);

label("G", (-3*x,-y));
label("G", (-x,-y));
label("G", (x,-y));
label("B", (3*x,-y));
label("B", (-2*x,-2.8*y));
label("R", (0,-2.8*y));
label("R", (2*x,-2.8*y));

