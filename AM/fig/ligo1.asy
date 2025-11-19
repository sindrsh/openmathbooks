import inh;
import drwgrph;
size(8cm, 10cm, keepAspect=false);
usepackage("icomma");

real f(real x){return -x^2+2x-2;}
real g(real x){return (x+2)*(x-1);}
int a = 2;
real b = -2.1;
mkgrid((-2,a),(-10,4));
xaks(-2, a,l="$x$",bex=1.05,aex=1.15,tck=true, tc=1);
yaks(-10, 4, l="$y$",aex=1.1, bex=1.15, tck=true, tc=1);

draw(graph(f,a,b),blue);
draw(graph(g,a,b),red);

label("$f(x)$",(a,f(a)),E,blue);
label("$g(x)$",(a,g(a)),E,red);

