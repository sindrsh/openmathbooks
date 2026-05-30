import "../anmpdf.asy" as anm;
defaultpen(fontsize(10 pt));

real a = 15;
real b = 4.5;
filldraw(shift(-a/2,-b/2)*scale(a,b)*unitsquare,white,white);

defaultpen(fontsize(14 pt));
label((0,0.5),"Omgjering av einingar");

