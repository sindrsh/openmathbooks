settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(1.5cm);
import mods;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

real a = pi/24;
real b = pi/4;
real c = a+ pi/2;
draw(-1.2*f(a) -- 1.2*f(a), blue, L=Label("$\alpha$", position=Relative(1)));
draw(-1.1*f(b) -- 1.5*f(b), red, L=Label("$l$", position=Relative(1)));
draw(o -- f(b), heavyred, arrow=Arrow, L=Label("$\vec r$", align=NW, position=relative(0.75)));
draw(o -- f(c), heavyblue, arrow=Arrow, L=Label("$\vec n$", position=relative(1)));
draw(o -- -0.7*f(c),heavyblue+dotted);
r= 0.3;
path s = graph(f, a, b, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));
r =0.2;
path s = graph(f, c, b, operator ..);
draw(s, L=Label("$w$", align=N,position=Relative(0.5)));
