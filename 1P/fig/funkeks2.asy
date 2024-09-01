import "../inh" as inh;
import "../drwgrph" as grph;
size(13cm);
usepackage("icomma");

real f(real x){return x-3;}
real g(real x){return 1/4*x+1;}
int a = -8;
int b = 10;
mkgrid((a,b),(-11,7));
xaks(a, b,bex=1.10,aex=1.05,tck=true, tc=1);
yaks(-11, 7, l="$$", bex=1.15, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);

label((10,7),"$f(x)$",NE);
label((10,3.5),"$g(x)$",NE);

