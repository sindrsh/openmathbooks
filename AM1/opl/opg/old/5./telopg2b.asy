settings.outformat="pdf";
defaultpen(fontsize(12 pt));

import "/home/sindre/G/fig/figs.asy" as figs;
unitsize(0.5 cm);

path b = box((0,0),(1,10));
filldraw(shift(-5.5,0)*b, green+opacity(0.1), deepgreen);
filldraw(shift(-4.5,0)*b, green+opacity(0.1), deepgreen);

db(1,3, sh=(-3,0), l=false);

ddb(1,9, sh=(-1.6,0), l=false);




