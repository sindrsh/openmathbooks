import "../../inh" as inh;
import "../../geo" as geo;

unitsize(1cm);

pair A = (0,0);
pair B = (2,0);
pair C = (-1, sqrt(3));

pair D = (C.x,0);

draw(A--D^^D--C,dotted);
draw(A--B--C--A);


dv(B,C,A,"$120^\circ$",sc=0.3,0.5N+E);


dott(A,"$A$", SW);
dott(B,"$B$", SE);
dott(C,"$C$", NW);
dott(D,"$D$", SW);

