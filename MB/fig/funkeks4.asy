import "../../inhopg" as inhopg;
import "../../drwgrph" as grph;
size(4 cm, 5 cm, keepAspect=false);

real f(real x){return -8*x+16;}
int a = -2;
int b = 2;
int ga = -16;
int gb = 48;
mkgrid((a,b),(ga,gb), dy=16);
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=1);
yaks(ga, gb, l="$y$", bex=1.1, tck=true, tc=16);

draw((a,f(a))--(b,f(b)),blue);
label("$f$",(b,f(b)),blue,align=NE);

write(f(a),f(b));

