settings.outformat="pdf";
defaultpen(fontsize(12 pt));

import "/home/sindre/G/fig/figs.asy" as figs;
unitsize(0.5 cm);

path b = box((0,0),(1,10));
filldraw(shift(-4.5,0)*b, green+opacity(0.1), deepgreen);

db(1,2, sh=(-3,0), l=false);



