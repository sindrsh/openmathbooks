import inh;
import figs;
import tri;
size(5cm);

pair f(real z){
    return (cos(z), sin(z));
}  

real a = 4;
real b = 5;
real c = 7;

Tri t = mktri(a,b,c);

draw(t.A--t.C);
draw(t.B--t.C);
draw(t.A--t.B);

draw(shift(t.A)*scale(b)*graph(f,0,pi),dotted);
draw(shift(t.B)*scale(a)*graph(f,0,pi),dotted);

dott(t.A,"$A$",SW);
dott(t.B,"$B$",SE);
dott(t.C,"$C$",N);










