import inh;
import tri;
unitsize(1cm);

Tri t = mktri(3,2,2, sc=1);
t.mkv();

t.drs("a", lb=true, al=NE);
t.drs("b", lb=true, al=SW);

Tri t = mktri(2,1,2, sc=1);
path p = t.A--t.C--t.B;
draw(shift((2,0))*rotate(180)*p);
label("2", (0.7,-0.7));
label("1", (2.2,-0.5));





