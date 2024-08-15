unitsize(1cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";

real o = 0.3;
real sc = 2;

filldraw(scale(sc,1)*unitcircle,green+opacity(o));
filldraw(shift(2,0)*scale(sc,1)*unitcircle,blue+opacity(o));

label("$F$", (-0.5,0));
label("$3$", (-0.5,-0.4));
label("$F\cap H$", (1,0));
label("$4$", (1,-0.4));
label("$H$", (sc+0.5,0));
label("$6$", (sc+0.5,-0.4));
