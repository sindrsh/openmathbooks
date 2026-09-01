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

draw((0,0)--(c,0),dashed,L=Label("$x-1$", position=Relative(0),W));
draw((c,0)--(d,0));
dott((c,0));

draw((0,dy)--(a,dy),dashed,L=Label("$x+6$", position=Relative(0),W));
draw((a,dy)--(d,dy));
dott((a,dy));

real dy = 2dy;

draw((0,dy)--(b,dy),dashed,L=Label("$x+2$", position=Relative(0),W));
draw((b,dy)--(d,dy));
dott((b,dy));

real dy = 1.5dy;
draw((0,dy)--(a,dy), dashed, L=Label("$f$", position=Relative(0), W));
draw((a,dy)--(b,dy));
draw((b,dy)--(c,dy), dashed);
draw((c, dy)--(d, dy));
dott((a,dy));
dott((b,dy));
dott((c,dy));

draw(C--D,L=Label("$-6$", position=Relative(0),N));
draw(Ep--F,L=Label("$-2$", position=Relative(0),N));
draw(G--H,L=Label("1", position=Relative(0),N));



