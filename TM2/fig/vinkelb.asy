import "../../inh" as inh;
unitsize(1.5cm);
import mods;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

real b = pi/4;
real c = pi/24+ pi/2;

r =0.2;
path s = graph(f, b, c-pi, operator ..);
draw(s, L=Label("$m$", align=E,position=Relative(0.5)));

r = 1;
draw(o -- f(b), red, arrow=Arrow, L=Label("$\vec r$"), align=N);
draw(o -- -f(c), blue, arrow=Arrow, L=Label("$\vec n$", position=relative(0.8)));
