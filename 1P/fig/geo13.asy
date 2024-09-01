import inh;
import figs;
import tri;
size(4cm);


real a = 5;
real b = 4;
real c = 6;

Tri t = mktri(a,b,c);

draw(t.A--t.B--t.C--t.A);

//dott(t.A,"$A$",SW);
//dott(t.B,"$B$",SE);
//dott(t.C,"$C$",NE);

label("$A$",t.A,SW);
label("$B$",t.B,SE);
label("$C$",t.C,N);

label("$a$",t.B+1/2*(t.C-t.B),align=NE);
label("$b$",t.A+1/2*t.C,align=NW);
label("$c$",t.A+1/2*t.B,align=S);



