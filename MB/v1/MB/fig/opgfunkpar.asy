import "../../inhopg" as inh;
import "../../drwgrph" as grph;
size(5 cm, 7 cm, keepAspect=false);

real f(real x){return 2x+1;}
int a = -2;
int b = 2;
int ga = -2;
int gb = 9;
mkgrid((a,b),(-4,gb), dy=1);
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=1);
yaks(-3, 9, l="$y$", bex=1.1, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
label("$f$",(b,f(b)),blue,align=E);

