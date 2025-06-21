settings.outformat="pdf";
defaultpen(fontsize(12 pt));

import "../../inh" as inh;
import figs;
unitsize(0.5 cm);


db(J=2,l=false);
mklb("$=2$",(1,0.5));

db(J=3,l=false, sh=(6,0));
mklb("$=3$",shift(6,0)*(1,0.5));

db(J=4,l=false, sh=(12,0));
mklb("$=4$",shift(12,0)*(1,0.5));

db(J=5,l=false, sh=(18,0));
mklb("$=5$",shift(18,0)*(1,0.5));
