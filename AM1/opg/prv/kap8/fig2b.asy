import "/home/sindre/asy/drwgrph.asy" as gr;
size(8 cm, 8 cm, keepAspect=false);
usepackage("icomma");

real f(real x){return 2x-1;}
int a = -3;
int b = 3;
int c = -7;
int d = 7;


mkgrid((a,b), (c,d));

xaks(a, b, aex=1.15, tck=true, tc=1);
yaks(c, d, l="$f(x)$",tck=true,aex=1.15, bex=1.15);


draw(graph(f,a,b), blue, L=Label("$f(x)$",position=Relative(1)));
dot((0,-1), black+5pt);
dot((3,5), black+5pt);
