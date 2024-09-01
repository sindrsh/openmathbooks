import inh;
import figs;
unitsize(0.5 cm);

mkgrid(6,5);

real g = 4;
real b = 3;
filldraw(shift(1,-4)*box((0,0),(g,b)),arpenr);
