settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(4.5 cm, 3 cm, keepAspect=false);
import mods;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

real a = pi/34;
real b = pi/4;

draw(-1.5*f(a) -- 1.5*f(a), blue, L=Label("$l$", position=Relative(1)));
draw(-1.3*f(b) -- 1.5*f(b), red, L=Label("$m$", position=Relative(1)));
draw(o -- f(b+pi), heavyred, arrow=Arrow, L=Label("$\vec r_1$",align=SE, position=Relative(0.7)));
draw(o -- f(a), heavyblue, arrow=Arrow, L=Label("$\vec r_2$",position=Relative(0.7)));

r= 0.3;
path s = graph(f, a, b, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));

path s = graph(f, a+pi, b+pi, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));
r=0.2;
path s = graph(f, b, a+pi, operator ..);
draw(s, L=Label("$u$", position=Relative(0.5)));
path s = graph(f, a, b-pi, operator ..);
draw(s, L=Label("$u$", align=S,position=Relative(0.5)));
