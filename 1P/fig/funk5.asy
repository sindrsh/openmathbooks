import inh;
import drwgrph;
unitsize(0.75cm);
usepackage("icomma");

real f(real x){return -x+3;}
real g(real x){return 3/5*x-1;}
int a = -2;
int b = 6;
mkgrid((a,b),(-3,5));
xaks(a, b,l="$x$",bex=1.10,aex=1.05,tck=true, tc=1);
yaks(-3, 5, l="$y$", bex=1.15, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);

label("$f(x)$",(b,f(b)),E,blue);
label("$g(x)$",(b,g(b)),E,red);

