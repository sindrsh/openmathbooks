import inh;
import drwgrph;
unitsize(0.75cm);
usepackage("icomma");

real f(real x){return 3/4*x-2;}
int a = -5;
int b = 6;
mkgrid((-5,6),(-6,3));
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=1);
yaks(-6, 3, l="$y$", bex=1.2, tck=true, tc=1);

dott((0,f(0)));
dott((4,f(4)));

draw((a,f(a))--(b,f(b)),blue);
label("$f(x)$",(b,f(b)),E,blue);

