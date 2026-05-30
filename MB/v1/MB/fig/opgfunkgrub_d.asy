import "../../inhopg" as inh;
import drwgrph;
size(4cm, 3cm, keepAspect=false);

real f(real x){return -x/3-5;}
int a = 0;
int b = 17;
xaks(a, b, aex=1,l="$x$");
yaks(f(b), 1, l="$y$", bex=1.075);

real x1 = 6;
real x2 = 15;

dott((x1,f(x1)),"$("+(string) x1+", "+(string) f(x1)+")$",NE);
dott((x2,f(x2)),"$("+(string) x2+", "+(string) f(x2)+")$",SW);
write(x1, f(x1));
write(x2, f(x2));
draw((a,f(a))--(b,f(b)),blue);

