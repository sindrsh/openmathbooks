import "../../inh" as inh;

unitsize(1.5cm);

real m = 0.25;
real dy = -0.5;

pair A = (0,m);
pair B = (0,3dy-m);

real a = 1;
real b = 2;
real c = 3;
real d = 4;

pair C = (a,A.y);
pair D = (a,B.y);
pair Ep = (b,A.y);
pair F = (b,B.y);
pair G = (c,A.y);
pair H = (c,B.y);

draw((0,0)--(b,0),dashed,L=Label("$x-3$", position=Relative(0),W));
draw((b,0)--(d,0));
dott((b,0));

draw((0,dy)--(a,dy),dashed,L=Label("$x+2$", position=Relative(0),W));
draw((a,dy)--(d,dy));
dott((a,dy));

real dy = dy-0.5;
draw((0,dy)--(c,dy),L=Label("$x-4$", position=Relative(0),W), dashed);
draw((c,dy)--(d,dy));
dott((c,dy));

real dy = dy-0.5;
draw((0,dy)--(a,dy),L=Label("$f$", position=Relative(0),W), dashed);
draw((a,dy)--(b,dy));
draw((b,dy)--(c,dy), dashed);
draw((c, dy)--(d, dy));
dott((a,dy));
dott((b,dy));
label((c, dy), "$\times$");

draw(C--D,L=Label("$-2$", position=Relative(0),N));
draw(Ep--F,L=Label("3", position=Relative(0),N));
draw(G--H,L=Label("4", position=Relative(0),N));



