import mods2;
size(6 cm, 4 cm, keepAspect=false);
real f(real x){
    return 1+0.5*x^2+sin(pi*x);
}
real xmin = 0;
real xmax = 2.15;
real a = 0.3;
real b = 2;
int n = 4;
real dx = (b-a)/n;


path s = graph(f, xmin, xmax, operator..);
path s1 = (a,0) --(a,f(a))--s--(b, f(b))-- (b,0) --cycle;
fill(s1, palegreen);
draw(s,L=Label("$f$", position=EndPoint),blue);
xaks(xmin, xmax);
yaks(xmin, max(s).y);
label("$A=I$", (a+(b-a)/2, 0.5));
mktc(a, "$a$");
mktc(b, "$b$");



