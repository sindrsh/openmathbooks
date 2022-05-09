settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(0.3cm);
import graph;

real r = 5.3;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}


real x = 1.2;
real y = 1.2;
real o = 0.6;
pen g = green+opacity(o);
pen b = blue+opacity(o);
pen r = red+opacity(o);
filldraw(shift(-2x,-y)*unitcircle, r);
filldraw(shift(2x,-y)*unitcircle, b);
filldraw(shift(0,-y)*unitcircle, b);
filldraw(shift(0,-2.8*y)*unitcircle,b);
filldraw(shift(-2*x,-2.8*y)*unitcircle,b);
filldraw(shift(2*x,-2.8*y)*unitcircle,b);

