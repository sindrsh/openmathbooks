import "../../inhopg" as inhopg;
import "../../drwgrph" as grph;
size(7cm);
usepackage("icomma");

real f(real x){return x-3;}
real g(real x){return 1/4*x+1;}
int a = -4;
int b = 8;
mkgrid((a,b),(-7,5));
xaks(a, b, l="$x$", bex=1.10,aex=1.05,tck=true, tc=1);
yaks(-7, 5, l="$y$", bex=1.10, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);

label((8,f(8)),"$f$",NE);
label((8,g(8)),"$g$",NE);

