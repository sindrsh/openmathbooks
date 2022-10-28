import mods2;
defaultpen(fontsize(11pt));
size(6 cm,4 cm, keepAspect=false);

real f(real x){
    return 1+0.5*x^2+sin(pi*x);
}
real g(real x){
    return 0.1+0.5*x;
}
real xmin = 0;
real xmax = 2;
real a = 0.3;
real b = 1.5;
int n = 4;

path s = graph(f, xmin, xmax);
path t = graph(g, xmin, xmax, operator..);


path s1 = (a,g(a)) --(a,f(a))--graph(f,a,b)--(b, f(b))-- (b,g(b)) --cycle;
fill(s1, palegreen+opacity(1));

xaks(xmin, xmax);
yaks(xmin, max(s).y);
//label("$A=\int\limits_{a}^{b} (f-g) \, dx$", (a+(b-a)/2, 2.5));
//label("$A$", (0.7, 0.9));
mktc(a, "$a$");
mktc(b, "$b$");
draw(s, L=Label("$f$", position=Relative(1)));
draw(t, L=Label("$g$", position=Relative(1)));


