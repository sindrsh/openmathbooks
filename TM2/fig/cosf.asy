size(6 cm,4 cm, keepAspect=false);
defaultpen(fontsize(11pt));
settings.outformat="pdf";
import graph;

real f(real x) {return cos(x);}

real a = -pi;
real b = 0;
real c = pi;
real d = 2*pi;
real e = 3*pi;
draw(graph(f,a,e), blue);
xaxis(L=Label("$x$", position=Relative(1),align=E+(1 pt,0)), arrow=Arrow(TeXHead), 
Ticks("%", new real[]{a, b, c, d, e}, Size=4 pt));
yaxis(L=Label("$f$", position=Relative(1),align=N+(0,1.5 pt)), arrow=Arrow(TeXHead));
pair A = (1,f(1));
pair B = (6, f(6));
draw(A--B);
labelx("$a$",a);
labelx("$b$",b);

