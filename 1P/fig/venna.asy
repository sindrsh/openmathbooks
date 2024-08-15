unitsize(1cm);
defaultpen(fontsize(11pt));
settings.outformat="pdf";

real o = 0.3;
real sc = 2;

filldraw(scale(sc,1)*unitcircle,green+opacity(o));
draw(shift(2,0)*scale(sc,1)*unitcircle,white+opacity(0));
label("$F$", (-0.5,0));
