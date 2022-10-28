import mods2;
size(6 cm, 4 cm, keepAspect=false);

real f(real x){
    return 1;
}
real xmin = 0;
real xmax = 2.2;
real a = 0.3;
real b = 2;
int n = 1;
real dx = (b-a)/n;
ints(f, a, b, n, lb=false);
write(currentpicture.ysize);
path s = graph(f, xmin, xmax);
draw(s, L=Label("$v$", position=EndPoint));
xaks(xmin, xmax, l="$t$");
yaks(xmin, 1.1);

void mktc(real x, string nm=""){
    draw((x,0), (0,0.1cm) --(0,-0.1cm), L=Label(nm, position=EndPoint));
    }   

mktc(a, "$a$");
mktc(b, "$b$");
//mktcy(1, "c");
draw((0.2, 1) -- (0, 1));
label("$S$", (1.15,0.5));
