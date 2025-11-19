import "../../figs" as figs;
import "../../inh" as inh;

unitsize(2cm);
pair B = (1,0);
pair C = (1,1);
pair D = (0,1);

draw(O--B--C--D--O); 

filldraw(O--B--C--cycle,arpenr);

