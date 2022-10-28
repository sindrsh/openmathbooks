settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(2cm);
import mods;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}
void g(int a, int b, bool lb=false){
    string k = "";
    if (lb){
    string k1 = format("$\frac{%d}", a, " ");
    string k2 = format("{%d}\pi$", b, "");
    k = k1+k2;
    }
    draw(o -- f(a*pi/b), blue, L=Label(k, black, position=Relative(1)));
}
path s = graph(f, 0, pi, operator ..);
draw(s);
draw((-1,0)--(1,0) );
g(3,4,true);
g(2,4, true);
g(1,4, true);
//g(4,4, true);
