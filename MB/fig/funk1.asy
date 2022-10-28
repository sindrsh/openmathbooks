import inh;
import figs;
unitsize(0.5 cm);

transform sh = shift(0,0);
real x = 1;
real y = -1;
real pp = 0.04;

db(I=2,J=1);
db(J=1,sh=(0.5,1+pp),p=orange);
label("\slshape Figur 1",(x,y));

sh = shift(5,0);
db(I=2,J=2,sh=sh*(0,0));
db(J=1,sh=sh*(0.5,2+pp),p=orange);
label("\slshape Figur 2",sh*(x,y));


sh = shift(10,0);
db(I=2,J=3,sh=sh*(0,0));
db(J=1,sh=sh*(0.5,3+pp),p=orange);
label("\slshape Figur 3",sh*(x,y));

sh = shift(15,0);
db(I=2,J=4,sh=sh*(0,0));
db(J=1,sh=sh*(0.5,4+pp),p=orange);
label("\slshape Figur 4",sh*(x,y));

