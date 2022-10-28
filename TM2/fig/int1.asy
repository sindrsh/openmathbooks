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
ints(f, a, b, n, lb=true);

path s = graph(f, xmin, xmax, operator..);
draw(s,L=Label("$f$", position=EndPoint),blue);
xaks(xmin, xmax,l="$x$");
yaks(xmin, f(xmax), l="");
draw((b,0)--(b,f(b)), dotted);

mktc(a, "$a$");
mktc(a+dx, "$x_2$");
mktc(a+2*dx, "$x_3$");
mktc(a+3*dx, "$b$");


