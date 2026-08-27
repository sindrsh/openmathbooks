import "../../inh" as inh;

unitsize(1.5cm);

real m = 0.25;
real dy = -0.5;

pair A = (0,m);
pair B = (0,2dy-m);

real a = 1;
real b = 2;
real c = 3;

pair C = (a,A.y);
pair D = (a,B.y);
pair Ep = (b,A.y);
pair F = (b,B.y);
pair G = (c,A.y);
pair H = (c,B.y);

draw((0,0)--(b,0),dashed,L=Label("$x-2$", position=Relative(0),W));
draw((b,0)--(c,0));
dott((b,0));

draw((0,dy)--(a,dy),dashed,L=Label("$x+4$", position=Relative(0),W));
draw((a,dy)--(c,dy));
dott((a,dy));

real dy = 2dy;
draw((0,dy)--(a,dy),L=Label("$f$", position=Relative(0),W));
draw((a,dy)--(b,dy),dashed);
draw((b,dy)--(c,dy));
dott((a,dy));
dott((b,dy));

draw(C--D,L=Label("$-4$", position=Relative(0),N));
draw(Ep--F,L=Label("2", position=Relative(0),N));



