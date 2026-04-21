import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;
import "../../geo" as geo;

size(10cm);

real f(real x) { return x^2; }

real d = 1/4;

pair F = (0, d);

real x = 0.9;

real x1 = 0.65;

pair O = (0, 0);
pair A = (1/2, f(1/2));
pair B = (1/2, -d);
pair C = (x1, f(x1));
pair D = (x1, -d);
pair Ep = (x1/2, 0);
pair G = C+(0, 0.2);
pair Jp = (x1, 0);
pair K = (C.x, A.y);

draw(A--K, dotted);

draw((-x, -d)--(x, -d), green);

pair CEn = (C-Ep)/abs(C-Ep); 

pair C1 = C+0.4*CEn;
pair C2 = Ep-0.2*CEn;

mksq2(K, F);
mksq2(B, (0, -d));
mksq2(D, C);
mksq2(F, A);

draw(graph(f, -x, x), blue);
draw(F--C--D);
draw(F--A--B);
draw(C1--C2);
draw(F--D, dotted);
draw(C--G);

xaks(-x, x, "$x$");
yaks(-0.5, f(x), l="$y$");

dott(F, "$F$", W);
dott(A, "$A$", N);
dott(B, "$B$", S);
dott(C, "$C$", SE);
dott(D, "$D$", S);
dott(Ep, "$E$", S);
dott(G, "$G$", N);
dott(C1, "$H$", E);

dott(O, "$O$", SW);
dott(Jp, "$J$", NE);
dott(K, "$K$", E);

label("$f$", (x, f(x)), blue, align=N);
label(1/2*(A+(1/2, 0)), "$p$", E);
label(1/2*(B+(1/2, 0)), "$p$", N+E);
label(1/2*(A+F), "$2p$", S);
label((x, -d), "$s$", green, align=E);

write(x1/2, x1^2-2x1);





