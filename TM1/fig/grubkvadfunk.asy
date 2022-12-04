import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(5cm, 5cm, keepAspect=false);

real a = 5;
real s = 3;
real t = -3;
real k = sqrt(s^2+t^2);
real c = (s+t-sqrt(s^2+t^2))/2;

pair f(real x){
  return (x, a*(s-x)*(t-x)-a*s*t);
}

pair g(real x){
  return (x, -a*(s-x+k)*(t-x+k));
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
