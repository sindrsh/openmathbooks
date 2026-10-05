import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(8cm, 5cm, keepAspect=false); 

real f(real x) { return 100x; }
real g(real x) { return 50x + 300; }
real p(real x) { return 1000/x; }
real q(real x) { return 1000*10^(-x/5); }

real xmin = 0, xmax = 13;
real ymin = 0, ymax = 1100;

mkgrid((0, 13), (0, 1100), dy=100);

// Rutenett
xaks(xmin, xmax,l="$x$", tck=true, bex=1.075);
yaks(ymin, ymax, l="$y$", bex=1.075, tck=true, tc=100);

// Tegnegrenser
draw(graph(f, 0, 11), green);
draw(graph(g, 0, 13), Purple); 
draw(graph(p, 1, 13), blue);
draw(graph(q, 0, 13), red);

// Merkelpunkter
label("$f$", (10.4, f(10.4)), N);
label("$g$", (12.4, g(12.4)), NW);
label("$p$", (13, p(13)), N);
label("$q$", (3, q(3)), S);


