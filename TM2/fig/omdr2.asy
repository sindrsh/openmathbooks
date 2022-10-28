import graph3;
import mods;
settings.outformat="pdf";
//unitsize(2cm);
size(6 cm, 2.5 cm, keepAspect=false);

currentprojection = orthographic(1,0,10, up=Y);
settings.outformat="pdf";
settings.prc=false;
settings.render =0;
defaultpen(fontsize(11pt));


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


path3 s1 = graph(f1, a, b, operator..);

draw(s1, L=Label("$f(x)$",position=EndPoint));
real sz = 0.002 cm;
mctckx3(a,"$a$", a=sz);
mctckx3(b,"$b$", a=sz);
//draw(surface(s3--cycle),yellow+opacity(.6));


