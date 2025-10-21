import "../../inhopg" as inhopg;
import "../../drwgrph" as grph;
size(5 cm, 5 cm, keepAspect=false);

real f(real x){return 4*x+3;}
int a = -2;
int b = 1;
int ga = -6;
int gb = 8;
mkgrid((-2,1),(-6,8));
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=1);
yaks(ga, gb, l="$y$", bex=1.1, tck=true, tc=2);

draw((a,f(a))--(b,f(b)),blue);
label("$f$",(b,f(b)),blue,align=E);

