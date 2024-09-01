import inh;
import figs;
unitsize(0.5 cm);

transform sh = shift(0,0);
real x = 1;
real y = -0.55;
real y2 = 0;
real pp = 0.04;

db(I=2,J=1);
db(J=1,sh=(0.5,1+pp),p=orange);
label("$x=1$",(x,y));
label("$a(1)=3$",(x,3+y2));

sh = shift(5,0);
db(I=2,J=2,sh=sh*(0,0));
db(J=1,sh=sh*(0.5,2+pp),p=orange);
label("$x=2$",sh*(x,y));
label("$a(2)=5$",(5+x,4+y2));

sh = shift(10,0);
db(I=2,J=3,sh=sh*(0,0));
db(J=1,sh=sh*(0.5,3+pp),p=orange);
label("$x=3$",sh*(x,y));
label("$a(3)=7$",(10+x,5+y2));

sh = shift(15,0);
db(I=2,J=4,sh=sh*(0,0));
db(J=1,sh=sh*(0.5,4+pp),p=orange);
label("$x=4$",sh*(x,y));
label("$a(4)=9$",(15+x,6+y2));

