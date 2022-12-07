settings.outformat="pdf";
defaultpen(fontsize(11 pt));
unitsize(0.75cm);
defaultpen(1pt);

import frac;

int a = 5;
real dx = 2.5;
real dx2 =2;
circ(a,3);
circ(a,a, sh=(dx,0));
circ(a,a, sh=(2dx,0));

label("$\displaystyle =2\,\frac{3}{5}$",(2dx+dx2,0));
