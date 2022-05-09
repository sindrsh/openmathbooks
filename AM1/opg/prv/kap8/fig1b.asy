import "/home/sindre/asy/drwgrph.asy" as gr;
size(8 cm, 8 cm, keepAspect=false);
usepackage("icomma");

real f(real x){return x+1;}
real g(real x){return -2x+4;}
int a = -3;
int b = 4;
int c = -5;
int d = 8;


mkgrid((a,b), (c,d));

xaks(a, b, aex=1.15, tck=true, tc=1);
yaks(c, d, l="$f(x)$",tck=true,aex=1.15, bex=1.05);

draw(graph(f,-3,4), blue, L=Label("$f(x)$",position=Relative(1)));
draw(graph(g,-2,4), deepgreen, L=Label("$g(x)$",position=Relative(1)));

draw((2,3)--(3,3), Cyan, L=Label("1"));
draw((3,3)--(3,4), Cyan, L=Label("1", align=E));


draw((-2,8)--(-1,8), Cyan, L=Label("1",align=N));
draw((-1,8)--(-1,6), Cyan, L=Label("-2", align=E));

dot((1,2), red);
