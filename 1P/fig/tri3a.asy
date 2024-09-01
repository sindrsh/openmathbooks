import inh;
import tri;
unitsize(0.7cm);

Tri t = mktri(3,4,5, sc=1);
t.mkv();

t.drs(lb=true, al=NE);
t.drs("b", lb=true, al=NW);
t.drs("c", lb=true, al=S);;

label("$A$",t.A,SW);
label("$B$",t.B,SE);
label("$C$",t.C,N);




