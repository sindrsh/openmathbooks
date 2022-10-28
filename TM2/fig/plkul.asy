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
real b = 5*pi/6;
draw(o -- f(a));
draw(o -- f(b));
draw(f(a)--f(b));
pair s = f(a)-f(b);
draw(-0.5*s+f(b)--0.5*s+f(a), L=Label("$\alpha$", position=Relative(1)));
draw(o--f(b)+0.5*s, dotted);
dot(o, L=Label("$S$",align=S));
dot(f(b)+0.5*s, L=Label("$A$",align=N));
