import inh;
import drwgrph;
unitsize(0.75cm);
usepackage("icomma");

real f(real x){return -x+3;}
real g(real x){return 3/5*x-1;}
int a = -2;
int b = 6;
mkgrid((a,b),(-3,5));


label("$f(x)$",(b,f(b)),E,blue);
label("$g(x)$",(b,g(b)),E,red);

pair A = (0,f(0));
pair B = (1,f(1));
pair C = (0,g(0));
pair D = (5,g(5));

draw(A--(B.x,A.y),Cyan,L=Label("$1$",position=Relative(0.5),N),arrow=Arrow(TeXHead));
draw((B.x,A.y)--B,Cyan,L=Label("$1$",position=Relative(0.5),E),arrow=Arrow(TeXHead));

draw(C--(D.x,C.y),Cyan,L=Label("$5$",position=Relative(0.5),S),arrow=Arrow(TeXHead));
draw((D.x,C.y)--D,Cyan,L=Label("$3$",position=Relative(0.5),E),arrow=Arrow(TeXHead));

xaks(a, b,l="$x$",bex=1.10,aex=1.05,tck=true, tc=1);
yaks(-3, 5, l="$y$", bex=1.15, tck=true, tc=1);
draw((a,f(a))--(b,f(b)),blue);
draw((a,g(a))--(b,g(b)),red);



 



