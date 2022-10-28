import inh;
import figs;
unitsize(0.5 cm);

path b = box((0,0),(1,10));
filldraw(shift(-3,0)*rotate(90)*b, green+opacity(0.1), deepgreen);
mklb("$=10$",(-3,0.5));

db(I=1,l=false);
mklb("$=1$",(1,0.5));

ddb(I=1,sh=(4,1/4),l=false);
mklb("$=0,1$",(4.25,0.5));



