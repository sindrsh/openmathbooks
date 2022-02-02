size(4 cm,3 cm, keepAspect=false);
defaultpen(fontsize(11pt));
settings.outformat="pdf";
import graph;

real f(real x) {return (x-4)^2 +2*(x-4)+2;}
real f1(real x){return -f(x)+12;}
draw(graph(f1,0,7), blue);
real a = 1;
real b = 6;

xaxis(L=Label("$x$", position=Relative(1),align=E+(1 pt,0)), arrow=Arrow(TeXHead), 
Ticks("%", new real[]{a, b}, Size=4 pt));
yaxis(L=Label("$f$", position=Relative(1),align=N+(0,1.5 pt)), arrow=Arrow(TeXHead));
pair A = (1,f1(1));
pair B = (6, f1(6));
draw(A--B);
labelx("$a$",a);
labelx("$b$",b);

