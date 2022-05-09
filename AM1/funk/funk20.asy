import "/home/sindre/asy/drwgrph.asy" as gr;
size(6 cm, 6 cm, keepAspect=false);
usepackage("icomma");

real f(real x){return x;}
int a = 0;
int b = 5;
int c = 0;
int d = 240;


mkgrid((a,b), (c,d), dx=1, dy=20);

xaks(a, b, bex=1.1, tck=true, tc=1);
yaks(c, d, l="$V(x)$", bex=1.1, tck=true, tc=20);

draw(graph(f,0,4),deepgreen);
draw((4,240)--(5,240),deepgreen);
