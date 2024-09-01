import inh;
import drwgrph;
unitsize(0.75cm);
usepackage("icomma");

real f(real x){return 2./3*x+4/3;}
int a = 0;
int b = 5;
mkgrid((a,b),(0,5));
xaks(a, b,l="$x$",bex=1.10,aex=1.05,tck=true, tc=1);
yaks(0, 5, l="$y$", bex=1.15, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);

label("$f(x)$",(b,f(b)),E,blue);

