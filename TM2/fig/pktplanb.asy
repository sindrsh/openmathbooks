settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(1.5cm);
import mods;
import graph;


real r = 1;
pair o = (0, 0);
pair oo = (-0.5, 0);
pair f(real z){
    return (r*cos(z), r*sin(z));
}

real a = 0;
real b = pi/4;
real c = a+ pi/2;
draw(-1*f(a) -- 0.8*f(a), blue, L=Label("$\alpha$", position=Relative(1)));
draw(oo -- oo+0.7*f(c),heavyblue, arrow=Arrow, L=Label("$\vec n$", position=relative(0.8)));
draw(o -- -f(c), arrow=Arrow);

dot((0,0), L=Label("$P_0$"), align=N);
dot(-f(c), L=Label("$P_1$"), align=S);
