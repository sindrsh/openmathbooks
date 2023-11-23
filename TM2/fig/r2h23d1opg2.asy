import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(8cm);

real f(real x){
  return cos(x);
}

real g(real x){
  return sin(x);
}
real a = -3;
real b = 2;
xaks(a, b, "$x$");
yaks(-1, 1, "$y$");

fill(graph(g,-3pi/4,pi/4)--graph(f,-3pi/4,pi/4)--cycle, arpen);
draw(graph(f,a,b),blue);
draw(graph(g,a,b),deepgreen);
