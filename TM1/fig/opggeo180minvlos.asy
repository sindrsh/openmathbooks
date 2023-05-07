import "../../inhopg" as inh;
import "../../geo" as geo;
size(5cm);

pair B = f(3pi/4);
pair A = f(pi/5);
pair C = f(pi/12);
pair D = f(5pi/4);

dv(B,C,A, D=(-2pi,0), sc=0.1, al=SW);
dv(B, C, D, "$v$", sc=0.3);
dv(B, C, O, "$x$", sc=0.15, al=N);
dv(B, C, O, "$y$", D=(-2pi,0), sc=0.1, al= SW);

draw(B--O--C, dotted);
draw(A--B--D--C--A, red);
draw(B--C, dotted);
ds(O, 1);
