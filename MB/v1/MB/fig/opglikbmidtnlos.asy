import "../../inhopg" as inh;
import "../../geo" as geo;

size(3cm);

Tri t = mktri(6,6,4);

pair D = 1/2*t.B;

draw(O--t.B--t.C--O);
draw(D--t.C,dotted);


dott(O,"$A$",SW);
dott(t.B,"$B$",SE);
dott(t.C,"$C$",N);
dott(D,"$D$",S);
