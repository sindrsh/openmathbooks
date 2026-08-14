import three;
import mods;
import "../../inh" as inh;
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

mksq(b*Y, a*X, b*Y);
mksq(a*X, b*Y, a*X);
mksq(a*X+b*Y, c*Z, a*X+b*Y, l=0.15);
mktckx3(a, "$x_1$");
mktcky3(b, "$y_1$");
mktckz3(c, "$z_1$");
currentprojection=orthographic(proj);

