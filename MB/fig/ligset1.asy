import inh;
import drwgrph;
size(8cm, keepAspect=false);
usepackage("icomma");

real f(real x){return 9-x;}
real g(real x){return x-5;}
int a = 0;
int b = 8;
mkgrid((a,b),(-6,9));
xaks(a, b,l="$x$",bex=1.05,aex=1.05,tck=true, tc=1);
yaks(-6, 9, l="$y$",aex=1.1, bex=1.1, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);

dott((7,2)); 
//label("$f(x)$",(b,f(b)),E,blue);
//label("$g(x)$",(b,g(b)),E,red);

