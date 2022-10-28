import graph3;
settings.outformat="pdf";
currentprojection = orthographic(3,0,10, up=Y);
settings.outformat="pdf";
settings.prc=false;
settings.render =0;
size(6 cm, 2.5 cm, keepAspect=false);
import mods;


draw(O -- 4*X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- 1.2*Y, arrow=Arrow3(TeXHead2, emissive(black)));
defaultpen(fontsize(11pt));
real a = 0.8;
real b = 3;
real f(real x){
    return 0.5+0.05*x^2;
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

draw(s, blue);
draw(s0, blue+dotted+linewidth(0.6pt));
draw(s1);
draw(s2, blue);
draw(s3, blue);
real sz = 0.002 cm;
mctckx3(a,"$a$", a=sz);
mctckx3(b,"$b$", a=sz);
//draw(surface(s3--cycle),yellow+opacity(.6));


