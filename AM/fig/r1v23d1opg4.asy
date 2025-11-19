import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(4cm, 5cm, keepAspect=false);

real f(real x){
  return (x^2-9)^4;
}
xaks(0, 3, l="$x$");
yaks(0, f(0), l="$y$");

real c = 1;
mktc(c, "$t$");
pair O = (0,0);
pair A = (c, f(c));
pair B = (0, f(c));
pair C = (c, 0);

filldraw(C--A--B--O--cycle, deepgreen+opacity(0.5));
draw(graph(f, 0, 3), red);
dott(O);
dott(A);
dott(B);
dott(C);
real c = 0.8;
