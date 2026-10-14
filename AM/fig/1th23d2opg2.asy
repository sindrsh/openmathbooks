import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(5cm);

pair D = 12*(-cos(35/180*pi), sin(35/180*pi));
pair A1 = rotate(-20, D)*O;
pair A = intersectionpoint(D--A1, O--(-9, 0));
Tri t = mktri(6, 8, 12);
t.mkv();
pair C = rotate(-35-t.vB)*(-6,0);

filldraw(D--A--O--C--cycle, arpen);

dv(D, O, A, "$125^\circ$", NE, black);
dv(D, A, O, "$35^\circ$", sc=0.95, 0.5N+W, D=(-2pi, 0), black);
draw(O--D);




label("$12$", 1/2*(D+O), NE);
label("$8$", 1/2*(D+C), N);
label("$6$", 1/2*(C+O), E);


