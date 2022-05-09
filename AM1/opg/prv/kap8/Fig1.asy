import "/home/sindre/asy/drwgrph.asy" as gr;
size(8 cm, 8 cm, keepAspect=false);
usepackage("icomma");

real f(real x){return 3x-2;}
real g(real x){return -x+6;}
int a = -1;
int b = 3;
int c = -5;
int d = 7;


mkgrid((a,b), (c,d));

xaks(a, b, aex=1.15, tck=true, tc=1);
yaks(c, d, l="$f(x)$",tck=true,aex=1.15, bex=1.05);

draw(graph(f,-1,3), blue, L=Label("$f(x)$",position=Relative(1)));
draw(graph(g,-1,3), deepgreen, L=Label("$g(x)$",position=Relative(1)));

