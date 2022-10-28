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

path s = graph(f, 0, 2*pi, operator ..);
draw(s);
real a = pi/6;
real b = 3*pi/4;
draw(o -- f(a), red, arrow=Arrow);
draw(o -- f(b), blue, arrow=Arrow);
draw((-1,0)--(1,0));

r= 0.4;
path s = graph(f, a, b, operator ..);
draw(s, deepgreen, L=Label("$u-v$", position=Relative(0.5)));
//draw(s, arrow=Arrow(TeXHead), darkgreen, L=Label("$u-v$", position=Relative(0.5)));
r= 0.2;
path s = graph(f, 0, b, operator ..);
draw(s, blue,L=Label("$u$", position=Relative(0.5)));

r= 0.3;
path s = graph(f, 0, a, operator ..);
draw(s, red, L=Label("$v$", position=Relative(0.5)));
//g(4,4, true);
