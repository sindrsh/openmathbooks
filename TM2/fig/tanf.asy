size(6 cm,4 cm, keepAspect=false);
defaultpen(fontsize(11pt));
settings.outformat="pdf";
import graph;

real f(real x) {return tan(pi*x);}

real a = -2;
real e = 2;
draw(graph(f,a,e, n=300), blue);
xaxis(L=Label("$x$", position=Relative(1),align=E+(1 pt,0)), arrow=Arrow(TeXHead), 
Ticks(NoZero));
yaxis(L=Label("$f$", position=Relative(1),align=N+(0,1.5 pt)), ymin=-50, ymax=50, arrow=Arrow(TeXHead));


