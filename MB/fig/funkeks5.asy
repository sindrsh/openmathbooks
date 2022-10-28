import "../inh" as inh;
import "../drwgrph" as grph;
size(6 cm, 6 cm, keepAspect=false);
defaultpen(fontsize(8pt));

real f(real x){return 1/5*x-3;}
int a = -5;
int b = 20;
int ga = -4;
int gb = 1;
mkgrid((a,b),(ga,gb));
xaks(a, b,l="$x$",aex=1.10,tck=true, tc=5);
yaks(ga, gb, l="$y$", bex=1.25, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);
label("$f(x)$",(b,f(b)),blue,align=E);

write(f(a),f(b));

