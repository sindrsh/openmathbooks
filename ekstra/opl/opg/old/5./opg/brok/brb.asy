settings.outformat="pdf";
defaultpen(fontsize(11 pt));
defaultpen(1pt);

import frac;
unitsize(0.75cm);

int a = 4;
real dx = 2.5;
real dx2 = 1.75;
circ(a,1);
circ(a,a, sh=(dx,0));
circ(a,a, sh=(2dx,0));
circ(a,a, sh=(3dx,0));
