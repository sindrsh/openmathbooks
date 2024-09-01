import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

size(11cm);


Tri t = mktri(3,4.5,7);

draw(O--t.B--t.C--t.A);
label(O,"$A$",S);
label(t.B,"$B$",S);
label(t.C,"$B$",N);
mksq2((t.C.x,0), O, sc=0.7);
draw((t.C.x,0)--t.C,dotted,L="$h_1$");

real sc = 2;
Tri t = mktri(sc*3,sc*4.5,sc*7);
t.rors(sh=(8,0));

mksq2((t.C.x,0), O, sc=0.7);
draw(t.A--t.B--t.C--t.A);
label(t.A,"$D$",S);
label(t.B,"$E$",S);
label(t.C,"$F$",N);

draw((t.C.x,0)--t.C,dotted,L="$h_2$");
