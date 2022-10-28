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

real b = pi/4;
real c = pi/24+ pi/2;
draw(o -- f(b), heavyred, arrow=Arrow, L=Label("$\vec r$"), align=N);
draw(o -- -f(c), heavyblue, arrow=Arrow, L=Label("$\vec n$", position=relative(0.8)));

r =0.2;
path s = graph(f, b, c-pi, operator ..);
draw(s, L=Label("$m$", align=E,position=Relative(0.5)));
