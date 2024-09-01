import inh;
import tri;
unitsize(0.6cm);

Tri t = mktri(3,4,5, sc=2);
t.mkv();

t.drs();
t.drs("b", lb=true, al=NW);
t.drs("c", lb=true, al=S);

label("$D$",t.A,SW);
label("$E$",t.B,SE);
label("$F$",t.C,N);





