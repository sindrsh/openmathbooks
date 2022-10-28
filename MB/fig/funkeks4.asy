import "inh" as inh;
import "drwgrph" as grph;
size(6 cm, 7 cm, keepAspect=false);
defaultpen(fontsize(8pt));

real f(real x){return -8*x+16;}
int a = -4;
int b = 4;
int ga = -16;
int gb = 48;
mkgrid((a,b),(ga,gb), dy=16);
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=1);
yaks(ga, gb, l="$y$", bex=1.05, tck=true, tc=16);

draw((a,f(a))--(b,f(b)),blue);
label("$f(x)$",(b,f(b)),blue,align=E);

write(f(a),f(b));

