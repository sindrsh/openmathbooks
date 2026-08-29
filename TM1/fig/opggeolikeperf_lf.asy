import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(1.5cm);

pair A = f(pi/7);
pair B = f(pi/3);
pair C = f(5pi/6);
pair D = f(13pi/8);

draw(C--A--B--C);
draw(D--A--B--D);

dv(A,B,C, "$u$", E);
dv(A,B,D, "$u$", N);

draw(B--O--A, green);
draw(graph(f,0,2pi));


dott(A, "$A$", E);
dott(B, "$B$", NE);
dott(C, "$C$", W);
dott(D, "$D$", SW);
dott((0, 0), "$O$", S);



