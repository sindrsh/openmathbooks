import "../../inhopg" as inh;
import drwgrph;
size(4cm, 3cm, keepAspect=false);

real f(real x){return 4*x+10;}
int a = 0;
int b = 10;
xaks(a, b, aex=1,l="$x$");
yaks(0, f(b), l="$y$", bex=1.075);

real x1 = 4;
real x2 = 9;

dott((x1,f(x1)),"$("+(string) x1+","+(string) f(x1)+")$",SE);
dott((x2,f(x2)),"$("+(string) x2+","+(string) f(x2)+")$",SE);
write(x1, f(x1));
write(x2, f(x2));
draw((a,f(a))--(b,f(b)),blue);

