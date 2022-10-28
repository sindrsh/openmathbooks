import inh;
import figs;
unitsize(0.5 cm);

path b = box((0,0),(1,10));
filldraw(shift(-8,0)*b, green+opacity(0.1), deepgreen);
filldraw(shift(-7,0)*b, green+opacity(0.1), deepgreen);
filldraw(shift(-6,0)*b, green+opacity(0.1), deepgreen);
filldraw(shift(-5,0)*b, green+opacity(0.1), deepgreen);

db(1,7, sh=(-3.5,0), l=false);

ddb(5,2, n=1,m=3, sh=(-2,0), l=false);

sym("$=$", -0.5);

path b = box((0,0),(0.8,1));
filldraw(b, green+opacity(0.1), white);
filldraw(shift(0.8,0)*b, blue+opacity(0.1), white);
filldraw(shift(1.6,0)*b, purple+opacity(0.1), white);
label("4",(0.4,0.5));
label("7",(1.2,0.5));
label(",",(1.6,0.0));
label("8",(2,0.5));

Label l = Label("tiarar");
label(rotate(90)*l, (0.4,2.32));
Label l = Label("einarar");
label(rotate(90)*l, (1.2,2.56));
Label l = Label("tidelar");
label(rotate(90)*l, (2,2.5));

