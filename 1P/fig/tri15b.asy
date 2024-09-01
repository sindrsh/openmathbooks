import inh;
import figs;
import tri;
unitsize(1cm);

real a = 3;
real b = 6;
real c = 4;
Tri t = mktri(a,b,c);
t.mkvec();
t.mkv();
real h = 2t.Ar/b;
real d = sqrt(a^2-h^2);

path p = t.A--t.B--t.C--cycle;
draw(p);

label("$A$", t.A, align=SW);
label("$B$", t.B, align=S);
label("$C$", t.C, align=NE);

pair Ep = t.C-d*t.AC;

mksq2(Ep,t.C);
draw(Ep--t.B,dotted,L=rotate(t.vA)*Label("h\o gde", position=Relative(0.5)));

label(rotate(t.vA)*Label("grunnlinje"),t.C+1/2*(t.A-t.C),N);


t.rors(0,(0,-3));
real h = 2t.Ar/a;
real d = sqrt(b^2-h^2);

path p = t.A--t.B--t.C--cycle;
draw(p);

label("$A$", t.A, align=SW);
label("$B$", t.B, align=SE);
label("$C$", t.C, align=NE);

pair Ep = t.C-d*t.BC;

mksq2(Ep,t.A);
draw(Ep--t.A,dotted,L=rotate(90-t.vB)*Label("h\o gde", position=Relative(0.5),align=SW));
draw(Ep--t.C,dotted);

label(rotate(180-t.vB)*Label("grunnlinje"),t.B+1/2*(t.C-t.B),1.5SE);




