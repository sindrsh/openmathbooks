import inh;
import drwgrph;
unitsize(0.75cm);
usepackage("icomma");

real f(real x){return 2*x-1;}
int a = -2;
int b = 4;
mkgrid((-2,4),(-5,7));
xaks(a, b,aex=1,tck=true, tc=1,l="$x$");
yaks(-5, 7, l="$y$", bex=1.075, tck=true, tc=1);

dott((0,f(0)),"$(0, -1)$",SE);
dott((1,f(1)),"$(1, 1)$",E);
dott((2,f(2)),"$(2, 3)$",E);
dott((3,f(3)),"$(3, 5)$",E);

draw((a,f(a))--(b,f(b)),blue);
label("$f(x)=2x-1$",(b,f(b)),E,blue);

