import inh;
import figs;
unitsize(0.5 cm);

mkgrid(7,7);

pair A = (0,0);
pair B = (5,0);
pair C = (5,2);
pair D = (3,2);
pair Ep = (3,5);
pair F = (0,5);

path p = A--B--C--D--Ep--F--cycle;
filldraw(shift(1,-6)*p, arpeng);
