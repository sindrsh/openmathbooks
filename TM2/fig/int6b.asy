import mods2;
unitsize(2cm);

real D = 0.2;
real d = 1-D;
real f(real x){
    return sin(pi*x)+d+D;
}
real g(real x){
    return d;
}
real xmin = 0;
real a = 0.3;
real b = 1.8;
real c = 1+asin(D)/pi;
real xmax = b*1.1;
int n = 1;
real dx = (b-a)/n;

path gs = graph(g, xmin, xmax);

path s = graph(f, xmin, xmax, operator..);
path s1 = (a,d)--graph(f,a,c)-- (c,d) --cycle;
path s2 = (a,0)--graph(g,a,c)--graph(f,c,b)-- (b,0) --cycle;
path s3 = (c,d)--graph(f,c,b)--(b,d) --cycle;
fill(s1, palegreen+opacity(1));
fill(s2, orange+opacity(0.5));
fill(s3, paleblue+opacity(1));
draw(gs);
draw(s, L=Label("$g$", position=Relative(1)));
xaks(xmin, xmax);
yaks(xmin, max(s).y);

mktc(a, "$a$");
mktc(b, "$b$");
mktcy(d, "$d$");
label("$A$", (0.6, 1.3));
//label("$C$", (0.7, 0.4));
label("$B$", (1.5, 0.4));


