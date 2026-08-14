import mods2;
size(6 cm, 5 cm, keepAspect=false);
real f(real x){
    return 1+0.5*x**2;
}
real xmin = 0;
real xmax = 2.2;
real a = 0.3;
real b = 2;
int n = 3;
real dx = (b-a)/n;


path s = graph(f, xmin, xmax, operator..);
draw(s,L=Label("$f$", position=EndPoint),blue);

path s1 = (a,0) --(a,f(a))--s--(b, f(b))-- (b,0) --cycle;
fill(s1, arpeng);
label("$A$", (1/2*(a+b), 1));

xaks(xmin, xmax,l="$x$");
yaks(xmin, f(xmax), l="$y$");

mktc(a, "$a$");
mktc(a+3*dx, "$b$");



