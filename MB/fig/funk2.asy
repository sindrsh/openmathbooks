import inh;
import figs;
unitsize(0.5 cm);

transform sh = shift(0,0);
real x = 1;
real y = -0.55;
real pp = 0.04;

db(I=1,J=1);
db(I=3,sh=(-1,1+pp),p=orange);
label("$x=1$",(x-0.5,y));

sh = shift(5,0);
db(I=2,J=2,sh=sh*(0,0));
db(I=3,sh=sh*(-0.5,2+pp),p=orange);
label("$x=2$",sh*(x,y));


sh = shift(10,0);
db(I=3,J=3,sh=sh*(0,0));
db(I=3,sh=sh*(0,3+pp),p=orange);
label("$x=3$",sh*(0.5+x,y));

sh = shift(15,0);
db(I=4,J=4,sh=sh*(0,0));
db(I=3,sh=sh*(0.5,4+pp),p=orange);
label("$x=4$",sh*(x+1,y));

