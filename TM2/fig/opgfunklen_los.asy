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

pair A = (x1, f(x1));
pair B = (x2, f(x2));

draw(A--B);
draw((x1, 0)--A--(0, A.y), dotted);
draw((x2, 0)--B--(0, B.y), dotted);

xaks(0, 1.1*b, l="$x$");
yaks(0, f(a), l="$f$");
draw(graph(f, a, b), blue);
mktc(a, "$a$");
mktc(b, "$b$");

label("$f(x_{i+1})$", (0, B.y), W);
label("$f(x_i)$", (0, A.y), W);
mktc(x1, "$x_i$");
mktc(x2, "$x_{i+1}$");

dott(A, "$P_i$",1.5NE);
dott(B, "$P_{i+1}$", 1.5NE);
