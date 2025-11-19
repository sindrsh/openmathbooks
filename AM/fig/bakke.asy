import figs;
import inh;

size(6cm);

pair A = (0, 0);
pair B = (24, 0);
pair C = (24, 7);

filldraw(A--B--C--cycle, gray+opacity(0.4));

label(1/2*B, "24 km", S);
label(1/2*(B+C), "7 km", E);

