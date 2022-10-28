import graph3;
settings.outformat="pdf";
size(8cm,0);
import mods;
currentprojection = orthographic(3,0,10, up=Y);

real a = 0.8;
real b = 3;
real c = 1.2;
real f(real x){
    return (1-((x-a)/b)^2)^0.5;
}
triple f0(real z, real r, real x){
    return (x, r*sin(z)+c, r*cos(z));
}
triple f1(real r){
    return (r, f(r)+c, 0);
}
triple f2(real r){
    return (r, -f(r)+c, 0);
}
triple F1(real z){
    return f0(z, f(a), a);
}
triple F2(real z){
    return f0(z, f(b), b);
}
triple F3(real z){
    real c = (b-a)/1.2;
    return f0(z, f(c), c);
}
path3 s = graph(F1, -pi/2, pi/2, operator ..);
path3 s0 = graph(F1, 3*pi/2, pi/2, operator ..);
path3 s1 = graph(f1, a, b, operator..);
path3 s2 = graph(f2, a, b, operator..);
path3 s3 = graph(F2, 0, 2*pi, operator ..);
path3 s4 = graph(F3, -pi/2, pi/2, operator ..);
path3 s5 = graph(F3, 3*pi/2, pi/2, operator ..);
path3 s6 = graph(F3, 0, 2*pi, operator ..);

draw(surface(s6--cycle), surfacepen = material(paleblue, emissivepen =
gray(1)));

draw(s, blue);
draw(s0, blue+dotted+linewidth(0.6pt));
draw(s1, blue);
draw(s2, blue);
draw(s3, blue);
draw(s5, blue+dotted+linewidth(0.6pt));
mctckx3(a,"$a$");
mctckx3(b,"$b$");

real x = a+1.02;
label("$A(x)$", (x)*X+1.3*Y, align=S);
mctckx3(x,"$x$");

draw(O -- 4*X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- 2.3*Y, arrow=Arrow3(TeXHead2, emissive(black)));


