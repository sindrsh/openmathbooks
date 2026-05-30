import "../../inh" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

unitsize(1cm);

pair O = (0,0);
pair A = (3,1);
pair B = (1, 2);

pair C = A+B;


draw(O--B--C--A--O);

draw((C.x,0)--C,dotted);
draw((0,C.y)--C,dotted);
draw(O--(0,C.y),dotted);
draw(O--(C.x,0),dotted);


draw((0,C.y)--B,dotted);
draw((C.x,0)--A,dotted);


dott(O,"$O$",SW);
dott(B,"$D$",1.2N+0.25E);
dott(C,"$C$",NE);
dott(A,"$B$",1.2S+0.25W);
dott((0,C.y),"$F$",NW);
dott((C.x,0),"$E$",SE);
