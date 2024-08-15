import inh;
import figs;

size(9cm,8cm,keepAspect=false);
usepackage("icomma");

real f(real x){return x^2-6x+5;}
int a = 0;
int b = 7;
mkgrid((a,b),(-4,12),dx=1,dy=1);
draw(graph(f,a,b),blue);
xaks(a, b,tck=true,tckl=true,bex=0.5, tc=1,omite=true);
mktc(7,"7");
yaks(-4,12, l="$f(x)$", bex=1, tck=true,tckl=true, tc=1);

dott((1,0),"$\color{black}(1, 0)$",1.5N+E,red);
dott((5,0),"$\color{black}(5, 0)$",1.5N+W,red);
dott((3,-4),"$\color{black}(3, -4)$",S,cmyk(green));
dott((7,12),"$\color{black}(7, 12)$",N,black);
