import inh;
import figs;

size(8cm,7cm,keepAspect=false);
usepackage("icomma");

real f(real x){return 2x+1;}
real g(real x){return x+4;}
int a = 0;
int b = 4;
mkgrid((a,b),(0,9));
xaks(a, b,tck=true,tckl=true, tc=1);
yaks(0,9, l="$$", bex=1.15, tck=true,tckl=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);

label((4,9),"$f(x)$",NE);
label((4,8),"$g(x)$",E);
