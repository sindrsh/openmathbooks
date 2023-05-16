import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm, 5cm, keepAspect=false);

real a = 5;
real s = 3;
real t = -3;
real k = sqrt(s^2+t^2);
k = 1/sqrt(2)*(s-t);
real c = (s+t-k)/2;

pair f(real x){
  return (x, a*(x-s)*(x-t)+(s-t)^2*a/4);
}

pair g(real x){
  return (x, -a*(x-s-k)*(x-t-k));
}

draw(graph(f,t,s), blue);
draw(graph(g,t+k,s+k), deepgreen);

pair A = f(c);
pair B = f(c+k);
pair C = g(c+2k);
pair D = f(t);
pair Ep = f(s);

dott(A, "$ A $", SW);
dott(B, "$ B $", E);
dott(C, "$ C $", NE);
dott(D, "$ D $" , NW);
dott(Ep, "$ E $", NE);
write(abs(A-C), 2k);
