import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(1.5cm);

draw(graph(f,0,2pi));

pair A = f(5pi/6);
pair B = (0,-1);
pair C = f(10.5pi/6);
pair D = (-1,-1);
pair Ep = (1,-1);
pair O = (0,0);

mksq2(B,D);

dv(B,C,A,"$u$",S+0.5E);
dv(B,C,O,"$2u$",S+0.5E,sc=0.3);

draw(A--B--C--A);
draw(D--Ep,red);
draw(B--O--C,dotted);


dott(A, "$A$",NW);
dott(B, "$B$",S);
dott(C, "$C$",SE);
//dott(D, "$D$",SW);
dott(Ep, "$E$",S);
dott(O, "$O$",N);
