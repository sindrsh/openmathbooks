import "../../inh.asy" as inh;
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

r= 0.3;
path s = graph(f, a, b, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));

path s = graph(f, a+pi, b+pi, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));

path s = graph(f, d, c, operator ..);
draw(s, L=Label("$v$", align=N,position=Relative(0.5)));

r=1;
draw(-1.5*f(a) -- 1.5*f(a), L=Label("$\alpha$", position=Relative(1)));
draw(-1.3*f(b) -- 1.5*f(b), L=Label("$\beta$", position=Relative(1)));
draw(o -- f(d), red, arrow=Arrow, L=Label("$\vec n_1$", align=SW,position=Relative(0.7)));
draw(o -- f(c), blue, arrow=Arrow, L=Label("$\vec n_2$",align=NE,position=Relative(0.3)));
draw(-f(c) -- 1.2*f(c),blue+dotted);
draw(-f(d) -- 1.2*f(d),red+dotted);
