import "../../inhopg" as inh;
import "../../geo" as geo;

size(4cm);

pair B = (10,0);
pair C = (10,10);
pair D = (0, 10);
pair Ep = (3,6.5);
pair F = (5, 0);
pair G  =(10,5);
pair H = (5, 10);
pair Ip = (0,5);

filldraw(O--F--Ep--Ip--cycle, arpen);
filldraw(G--Ep--H--C--cycle, arpen);
filldraw(Ip--Ep--H--D--cycle, arpeng);
filldraw(F--Ep--G--B--cycle, arpeng);
draw(F--Ep--G);
draw(H--Ep--Ip);

//dott(O, "$ A $", SW);
//dott(B, "$ B $", SE);
//dott(C, "$ C $", NE);
//dott(D, "$ D $", NW);
//dott(Ep, "$ E $", NW);
dott(F, "$ F $", S);
dott(G, "$ G $", E);
dott(H, "$ H $", N);
dott(Ip, "$ I $", W);
