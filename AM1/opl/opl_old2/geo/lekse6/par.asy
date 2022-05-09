import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;

import sz;
unitsize(0.4cm);

mkgrid(40,64);


pair A= (0,0);
pair B = (10,0);
pair C = (16,6);
pair D =(6,6);

path p = A--B--C--D--cycle;
draw(shift(1,-10)*p);
draw(shift(22,-10)*p);

draw(shift(1,-25)*p);
draw(shift(22,-25)*p);

draw(shift(1,-40)*p);
draw(shift(22,-40)*p);

draw(shift(1,-55)*p);
draw(shift(22,-55)*p);


