import "../../inhopg" as inhopg;
import "../../geo" as geo;

size(4cm);

Tri t1 = mktri(10, 16.4, 8);
Tri t2 = mktri(12, 6, 16.4);
t1.mkv();
t2.mkv();

pair D = rotate(t1.vA+t1.vA)*(6, 0);

filldraw(t1.A--t1.B--t1.C--D--cycle, arpenr);

label("$8$", t1.B/2, S);
label("$12$", 1/2*(D+t1.C), NW);
