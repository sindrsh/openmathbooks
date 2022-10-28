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

real a = pi/34;
real b = pi/4;
real c = a + pi/2;
real d = b + pi/2;
draw(o -- f(d), heavyred, arrow=Arrow, L=Label("$\vec n_1$", align=SW,position=Relative(0.7)));
draw(o -- -f(c), heavyblue, arrow=Arrow, L=Label("$\vec n_2$",align=NE,position=Relative(0.6)));
r= 0.3;
path s = graph(f, d, c+pi, operator ..);
draw(s, L=Label("$u$", position=Relative(0.5)));

