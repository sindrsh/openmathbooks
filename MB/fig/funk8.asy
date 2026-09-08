import "../../inh" as inh;
import figs;
unitsize(0.5 cm);


transform sh = shift(0,0);
real x = 1;
real y = -0.55;
real pp = 0.0;

db(I=5,J=1, opac=0.6);
db(I=2,sh=(0,1+pp),p=arpeng, opac=0.6);
label("$x=1$",(x+1.5,y));

sh = shift(7,0);
db(I=5,J=2,sh=sh*(0,0), opac=0.6);
db(I=2,sh=sh*(0,2+pp),p=arpeng, opac=0.6);
label("$x=2$",sh*(x+1.5,y));


sh = shift(14,0);
db(I=5,J=3,sh=sh*(0,0), opac=0.6);
db(I=2,sh=sh*(0,3+pp),p=arpeng, opac=0.6);
label("$x=3$",sh*(1.5+x,y));


