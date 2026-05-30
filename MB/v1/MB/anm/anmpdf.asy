size(8cm,4.5cm,IgnoreAspect);
settings.outformat="pdf";
usepackage("icomma");
usepackage("asycolors");
import x11colors;
usepackage("xcolor");

real a = 8;
real b = 4.5;
filldraw(shift(-a/2,-b/2)*scale(a,b)*unitsquare,white,white);

