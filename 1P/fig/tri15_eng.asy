import inh;
import figs;
import tri;
unitsize(1cm);


Tri t = mktri(3,6,4);
path p = t.A--t.B--t.C--cycle;
draw(p);

label("$A$", t.A, align=SW);
label("$B$", t.B, align=S);
label("$C$", t.C, align=NE);

mksq2((t.C.x,0),t.A);
draw(t.B--(t.C.x,0)--t.C,dotted,L=Label("height", position=Relative(0.65)));


label("base",(t.B.x/2,0),S);
