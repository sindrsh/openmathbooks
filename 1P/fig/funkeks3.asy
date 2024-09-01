import "inh" as inh;
import "drwgrph" as grph;
size(10 cm, 16 cm, keepAspect=false);

real f(real x){return 4*x+3;}
int a = -6;
int b = 6;
int ga = -22;
int gb = 28;
mkgrid((-6,6),(ga,gb));
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=1);
yaks(ga, gb, l="$y$", bex=1.05, tck=true, tc=2);

draw((a,f(a))--(b,f(b)),blue);
label("$f(x)$",(b,f(b)),blue,align=E);

