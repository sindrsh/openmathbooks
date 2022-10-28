settings.outformat="png";
defaultpen(fontsize(14 pt));
usepackage("icomma");
import unicode;
unitsize(1cm);
settings.render=12;

usepackage("asycolors");
import x11colors;
usepackage("xcolor");

real a = 7.51;
real b = 0.5625*a;
filldraw(shift(-a/2,-b/2)*scale(a,b)*unitsquare,white);


