import inh;
import tri;
unitsize(0.8cm);

Tri t = mktri(2,4,5, sc=1);
t.mkv();

t.drs("a", lb=true, al=NE);
t.drs("b", lb=true, al=NW);
t.drs("c", lb=true, al=S);

draw(t.A--t.B--t.C--cycle,heavygreen);






