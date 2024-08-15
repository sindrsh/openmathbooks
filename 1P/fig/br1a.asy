import figs;
import inh;
unitsize(2cm);
pair B = (1,0);
pair C = (1,1);
pair D = (0,1);

draw(O--B--C--D--O); 

pair F = 1/2*(C);

filldraw(F--B--C--cycle,arpenr);

