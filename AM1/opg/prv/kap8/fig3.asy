import "/home/sindre/asy/drwgrph.asy" as gr;
size(8 cm, 8 cm, keepAspect=false);

real f(real x){return 1/3*x+1;}
int a = -1;
int b = 4;
int c = -1;
int d = 2;


mkgrid((a,b), (c,d));
draw(graph(f,a,b), blue, L=Label("$f(x)$",position=Relative(1)));
xaks(a, b, aex=1.15, tck=true, tc=1);
yaks(c, d,tck=true,aex=1.15, bex=1.15);



