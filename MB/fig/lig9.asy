import inh;
unitsize(0.5 cm);

import figs;

xbox();
xbox(sh=2);
xbox(sh=(4));
sym("=", 6.5);
db(1,2, sh=7.5);
db(1,2, sh=9);
db(1,2, sh=10.5);

draw((1.75,0)--(1.75,2), dotted+linewidth(1.0pt));
draw((3.75,0)--(3.75,2), dotted+linewidth(1.0pt));

draw((8.75,0)--(8.75,2), dotted+linewidth(1.0pt));
draw((10.25,0)--(10.25,2), dotted+linewidth(1.0pt));
