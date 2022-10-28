settings.outformat="pdf";
defaultpen(fontsize(11pt));

import three;
size(6cm,5cm);

draw(O -- 5X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(O -- 5Y, L=Label("$y$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(O -- 4Z, L=Label("$z$",
position=EndPoint), arrow=Arrow3(HookHead2));

int a = 2;
int b = 3;
int c = 3;

triple A = (a,b,c);
draw(O -- A, L=Label("$\vec u$",
position=EndPoint), arrow=Arrow3(DefaultHead2));

draw(b*Y -- a*X+b*Y, dotted);
draw(a*X -- a*X+b*Y, dotted);
draw(c*Z -- A, dotted);
draw(a*X+b*Y -- A, dotted);

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

