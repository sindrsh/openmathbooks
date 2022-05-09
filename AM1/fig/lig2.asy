import inh;
import figs;

size(8cm,7cm,keepAspect=false);
usepackage("icomma");

real f(real x){return 10x+10000;}
real g(real x){return 30x+6000;}
int a = 0;
int b = 300;
mkgrid((a,b),(0,15000),dx=50,dy=1000);
xaks(a, b,tck=true,tckl=true,bex=25, tc=50);
yaks(0,15000, l="$$", bex=500, tck=true,tckl=true, tc=2000);

draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);

label((300,15000),"$f(x)$",E);
label((300,13000),"$g(x)$",E);
