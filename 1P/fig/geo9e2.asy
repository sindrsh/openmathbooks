import inh;
unitsize(1cm);
import geo0;


draw(unitcircle);
real s = 1.75;
draw(scale(s)*unitcircle);

polyper(4);
polyper(4, r=s);


