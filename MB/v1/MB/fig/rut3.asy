import "../../inh" as inh;
import figs;
unitsize(0.5 cm);


db(J=6,l=false);
mklb("$=6$",(1,0.5));

db(J=7,l=false, sh=(6,0));
mklb("$=7$",shift(6,0)*(1,0.5));

db(J=8,l=false, sh=(12,0));
mklb("$=8$",shift(12,0)*(1,0.5));

db(J=9,l=false, sh=(18,0));
mklb("$=9$",shift(18,0)*(1,0.5));
