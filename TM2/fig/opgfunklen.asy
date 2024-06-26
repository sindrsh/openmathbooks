import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(6cm, 5cm, keepAspect=false);

real f(real x){
  return 1/x;
}

real b = 0.2;
real a = 0.2*b;
real x1 = 0.4*b;
real x2 = 0.6*b;
real x3 = 0.8*b;

pair A = (a, f(a));
pair B = (b, f(b));
pair P1 = (x1, f(x1));
pair P2 = (x2, f(x2));
pair P3 = (x3, f(x3));

xaks(0, 1.1*b, l="$x$");
yaks(0, f(a), l="$f$");
draw(graph(f, a, b), blue);
mktc(a, "$a$");
mktc(b, "$b$");

draw(A--P1--P2--P3--B);

dott(A, "$P_1$", N);
dott(P1, "$P_i$", NE);
dott(P2, "$P_{i+1}$", NE);
dott(P3, "$P_{i+2}$", NE);
dott(B, "$P_n$", NE);
