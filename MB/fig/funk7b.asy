import inh;
import drwgrph;
unitsize(0.75cm);
usepackage("icomma");

real f(real x){return 2./3*x+4/3;}
int a = 0;
int b = 5;
mkgrid((a,b),(0,5));
xaks(a, b,l="$x$",bex=1.10,aex=1.05,tck=true, tc=1);
yaks(0, 5, l="$y$", bex=1.15, tck=true, tc=1);

draw((a,f(a))--(b,f(b)),blue);

label("$f(x)$",(b,f(b)),E,blue);

pair A = (1,f(1));
pair B = (4,f(4));
draw(A--(B.x,A.y),Cyan,L=Label("$3$",position=Relative(0.5),S),arrow=Arrow(TeXHead));
draw((B.x,A.y)--B,Cyan,L=Label("$2$",position=Relative(0.5),E),arrow=Arrow(TeXHead));
