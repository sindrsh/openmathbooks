size(5 cm,0 cm, keepAspect=false);
//size(5 cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";
import graph;

real r = 2;
real f(real x) {return r*sin(x);}
real f1(real x){return r*cos(x);}
draw(graph(f1,0,2*pi), red);
draw(graph(f,0,2*pi), blue);
real d = 0;
real a = pi;
real b = 2*pi;

xaxis(L=Label("$x$", position=Relative(1),align=E+(1 pt,0)), arrow=Arrow(TeXHead));
real h = 2.5;
draw((d,-h)--(d,h), dashed);
draw((a,-h)--(a,h), dashed);
draw((b,-h)--(b,h), dashed);
label("$f(x)$",(5,-r-0.4), blue);
label("$f'(x)$",(2.4,-r-0.4), red);
label("Konkav",(1.6 ,h), blue);
label("Konveks",(4.6 ,h), blue);
//draw((6.6,h+1 pt)--(6.6+0.5pt,h+1pt), blue, L=Label("$f$", position=Relative(1)));
//draw((6.6,h+0.2 pt)--(6.6+0.5pt,h+0.2pt), red, L=Label("$f''$", position=Relative(1)));

