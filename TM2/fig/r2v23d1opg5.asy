import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);
//unitsize(1cm);

real c = 35;
real a = cos(pi/180*c);
real b = sin(pi/180*c);
real d = tan(pi/180*c);
draw((0,0) -- (a, b));
draw((0,0) -- (1, 0), L=Label("$1$", position=Relative(0.6)));
real linewidth = linewidth(currentpen);
margin ArrowMargins = TrueMargin(linewidth, 0.5 linewidth);
draw(arc((0,0), r=1, angle1=0, angle2=c), blue);
draw((0,0) -- (a, b), blue);
draw((1,0) -- (1, d), blue);

pair D = (1, d);
pair B = (1,0);
mksq2(B,O);

dv(B,D,O, "$v$", sc=0.1);

draw((a,b)--D, blue+dotted);
draw(O--(a,b), blue,L="$1$");
label("$A$", O, SW);
label("$B$", B, SE);
label("$C$", D, NE);
label("$D$", (a,b), NW);
