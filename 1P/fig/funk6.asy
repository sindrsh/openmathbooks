import inh;
import drwgrph;
size(4 cm, 3 cm, keepAspect=false);
usepackage("icomma");

real f(real x){return x+1;}
real a = -2;
real b = 3.5;
xaks(a, b,l="$x$",aex=1.10,tck=false, tc=1);
yaks(f(a), f(b), l="$y$", bex=1.1, tck=false, tc=1);

real x1 = 1.5;
real x2 = 3;
pair A = (x1,f(x1));
pair B = (x2,f(x2));


draw((A.x,0)--A--(0,A.y),dotted);
draw((B.x,0)--B--(0,B.y),dotted);
draw((a,f(a))--(b,f(b)),blue);

mktc(x1,"$x_1$");
mktc(x2,"$x_2$");
mktcy(f(x1),"$f(x_1)$");
mktcy(f(x2),"$f(x_2)$");

mktcy(f(0),"$b$");

