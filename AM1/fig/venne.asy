unitsize(1cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";

real o = 0.3;
real sc = 2;

filldraw(scale(sc,1)*unitcircle,green+opacity(o));
filldraw(shift(2,0)*scale(sc,1)*unitcircle,blue+opacity(o));

label("$A$", (-0.5,0));
label("$12$", (-0.5,-0.4));
label("$A\cap B$", (1,0));
label("$3$", (1,-0.4));
label("$B$", (sc+0.5,0));
label("$6$", (sc+0.5,-0.4));
