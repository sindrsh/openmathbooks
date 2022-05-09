import "/home/sindre/asy/drwgrph.asy" as gr;
size(8 cm, 8 cm, keepAspect=false);
usepackage("icomma");

real f(real x){return x+1;}
real g(real x){return -2x+4;}
int a = -3;
int b = 3;
int c = -7;
int d = 7;


mkgrid((a,b), (c,d));

xaks(a, b, aex=1.15, tck=true, tc=1);
yaks(c, d, l="$f(x)$",tck=true,aex=1.15, bex=1.15);

