import inh;
import tri;
import figs;
unitsize(0.2 cm);

real a = 9;
real b = 18;
real c = 12;
Tri t = mktri(a,b,c);
pair D = (t.C.x,0);

draw(t.A--t.B--t.C--cycle,deepgreen);

label("$A$", t.A, SW);
label("$B$", t.B, SE);
label("$C$", t.C, N);
label("18",t.A+1/2*(t.C-t.A),NW);
label("12",t.A+1/2*(t.B-t.A),S);
label("9",t.B+1/2*(t.C-t.B),SE);

real s = 2/3;
Tri t2 = mktri(s*a,s*b,10);
t2.rors(120,(32,-0.5));
draw(t2.A--t2.B--t2.C--cycle,red);
label("$D$", t2.A, S);
label("$E$", t2.B, NE);
label("$F$", t2.C, SW);
label("12",t2.A+1/2*(t2.C-t2.A),SW);
label("10",t2.A+1/2*(t2.B-t2.A),NE);
label("6",t2.B+1/2*(t2.C-t2.B),NW);

Tri t3 = mktri(a*s,b*s,c*s);
t3.rors(180,(49,5));
draw(t3.A--t3.B--t3.C--cycle,blue);
label("$G$", t3.A, E);
label("$H$", t3.B, NW);
label("$I$", t3.C, SW);
label("12",t3.A+1/2*(t3.C-t3.A),SE);
label("8",t3.A+1/2*(t3.B-t3.A),N);
label("6",t3.B+1/2*(t3.C-t3.B),NW);


