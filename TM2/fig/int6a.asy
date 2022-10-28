import mods2;
unitsize(2cm);

real d = 0.2;
real f(real x){
    return sin(pi*x)+d;
}
real xmin = 0;
real a = 0.3;
real b = 1.8;
real c = 1+asin(d)/pi;
real xmax = b*1.1;
int n = 1;
real dx = (b-a)/n;

path s = graph(f, xmin, xmax, operator..);
path s1 = (a,0)--graph(f,a,c)-- (c,0) --cycle;
path s2 = (c,0)--graph(f,c,b)-- (b,0) --cycle;
fill(s1, palegreen+opacity(1));
fill(s2, paleblue+opacity(1));
draw(s, L=Label("$f$", position=Relative(1)));
xaks(xmin, xmax);
yaks(xmin, max(s).y);

mktc(a, "$a$");
mktc(b, "$b$");
label("$A$", (0.6, 0.5));
label("$B$", (1.5, -0.4));


