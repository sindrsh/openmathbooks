import inh;
import figs;
unitsize(0.5 cm);

db(I=3,J=5, m=2, n=4, sh=(-7.5,0), l=false);
sym("$=$",-4);

db(J=10,l=false, sh=(-3.5,0), p=green, p1=deepgreen);
db(J=4,l=false, sh=(-2,0));
sym("$=$",-0.5);

path b = box((0,0),(0.8,1));
filldraw(b, green+opacity(0.1));
filldraw(shift(0.8,0)*b, blue+opacity(0.1));
label("1",(0.4,0.5));
label("4",(1.2,0.5));

Label l = Label("tens");
label(rotate(90)*l, (0.4,2));
Label l = Label("ones");
label(rotate(90)*l, (1.2,2));

