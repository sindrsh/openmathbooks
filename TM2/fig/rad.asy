settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(2cm);
import mods;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}
real a = pi/6;
path s = graph(f, a, 2*pi, operator ..);
draw(s);

real b = 3*pi/4;
draw(o -- f(a), black, L=Label("$r$", align=NW,position=Relative(0.7)));
draw((-1,0)--(1,0));

r= 1;
path s = graph(f, 0, a, operator ..);
draw(s, blue, L=Label("$l$", position=Relative(0.5)));

r= 0.3;
path s = graph(f, 0, a, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));
//g(4,4, true);
