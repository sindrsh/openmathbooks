import "../../inh" as inh;
import "../../inh" as geo;
size(4cm);

pair f(real x){
  return (cos(x), sin(x));
}

pair O = (0,0);
pair A = f(pi/3);
pair B = (A.x, -A.y);
pair C = -A;
pair D = -B;
pair Ep = 1/2*(A+D);
draw(A--B--C--D);
draw(A--Ep);
draw(Ep--D, L="$x$", S);
draw(unitcircle);
draw(O--D, L="$r$", SW);
draw(O--Ep, L="$b$");
dott(O);
