import solids;
size(6 cm, 3 cm, keepAspect=false);
currentprojection = orthographic(1,0,10, up=Y);
settings.outformat="pdf";
settings.prc=false;
settings.render =0;
defaultpen(fontsize(11pt));

import graph3;
import mods;

real r = 1;
real a = 0;
real b = 1;

draw(O -- b*1.2*X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- r*1.1*Y, arrow=Arrow3(TeXHead2, emissive(black)));


real f(real x){
    return r*x;
}
triple f0(real z, real r, real x){
    return (x, r*sin(z), r*cos(z));
}
triple f1(real r){
    return (r, f(r), 0);
}
triple f2(real r){
    return (r, -f(r), 0);
}
triple F1(real z){
    return f0(z, f(a), a);
}
triple F2(real z){
    return f0(z, f(b), b);
}

path3 s = graph(F1, -pi/2, pi/2, operator ..);
path3 s0 = graph(F1, 3*pi/2, pi/2, operator ..);
path3 s1 = graph(f1, a, b, operator..);
path3 s2 = graph(f2, a, b, operator..);
path3 s3 = graph(F2, 0, 2*pi, operator ..);

draw((0.6,0,0)--(0.6, f(0.6),0), L="$r_t$");
draw(s, blue);
draw(s0, blue+dotted+linewidth(0.6pt));
draw(s1, blue);
draw(s2, blue);
draw(s3, blue+dotted+linewidth(0.6pt));
draw((b,0,0)--(b,r,0),dotted, L="$r$");
real sz = 0.002 cm;
//mctckx3(a,"$0$", a=sz);
mctckx3(b,"$h$", a=sz);
//draw(surface(s3--cycle),yellow+opacity(.6));



