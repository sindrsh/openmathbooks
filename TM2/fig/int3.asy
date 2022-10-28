import mods2;
size(6 cm, 5 cm, keepAspect=false);

real f(real x){
    return 1+0.5*x**2;
}
real xmin = 0;
real xmax = 2.2;
real a = 0.3;
real b = 2;
int n = 20;
real dx = (b-a)/n;
ints(f, a, b, n);

path s = graph(f, xmin, xmax, operator..);
draw(s,L=Label("$f$", position=EndPoint),blue);
xaks(xmin, xmax, l="$x$");
yaks(xmin, f(xmax));
draw((b,0)--(b,f(b)), dotted);

mktc(a, "$a$");
mktc(a+n*dx, "$b$");


