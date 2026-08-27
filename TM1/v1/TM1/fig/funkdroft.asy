import "../../inh" as inh;
import "../../drwgrph" as inh;

size(10cm, 8cm,keepAspect=false);

real f(real x) { return x^3-3x^2-144x-140; }

real a = -14;
real b = 16;

yaks(f(a),f(b),l="$f$",bex=1.25);
xaks(a,b,l="$x$");

draw(graph(f,a,b),blue);

pair A = (a,f(a));
pair B = (-10,f(-10));
pair C = (-6,f(-6));
pair D = (-1,f(-1));
pair Ep = (1,f(1));
pair F = (8, f(8));
pair G = (14,f(14));
pair H = (b, f(b));


dott(A, "$A$",W);
//dott(B, "$B$",N);
dott(C, "$B$",N);
//dott(D, "$D$",N);
dott(Ep, "$C$",NE);
dott(F, "$D$",S);
//dott(G, "$G$",N);
dott(H, "$E$",N);

mktc(-14,"$-14$");
mktc(16,"$16$");
mktc(-10,"$-10$");
mktc(-1,"$-1$");
mktc(14,"$14$");
mktcy(884,"$884$");
mktcy(-1456,"$-1456$");



