settings.outformat="pdf";
defaultpen(fontsize(11pt));
import three;
import mods;
unitsize(1cm);


triple proj = (1,-1,0.5);
real[] t={1,1,1};
xyz(t, lb=true, tc=false);
int a = 3;
int b = 4;
int c = 3;
triple A = (a,b,c);

triple xy = a*X+b*Y;
triple xyn = xy/abs(xy);
draw(O -- A, blue, L=Label("$\vec u$",
position=Relative(0.5), align=NW), arrow=Arrow3(DefaultHead2));



draw(b*Y -- a*X+b*Y, dotted);
draw(a*X -- a*X+b*Y, dotted);
draw(O -- a*X+b*Y, dotted, L=Label("$\hat u$", position=Relative(0.5)));
draw(c*Z -- A, dotted);
draw(a*X+b*Y -- A, dotted);

mksq(a*X, b*Y, a*X);
mksq(a*X+b*Y, c*Z, a*X+b*Y, l=0.15);
mktcx3("$x_1$", a);
mktcy3("$y_1$", b);
mktcz3("$z_1$", c);
currentprojection=orthographic(proj);

