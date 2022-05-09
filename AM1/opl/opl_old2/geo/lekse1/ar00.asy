import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
unitsize(0.6cm);

real g = 4;
real b = 4;
filldraw(box((0,0),(g,b)), arpeno);
label((string) g, (g/2,0), align=S);
label((string) b, (g,b/2), align=E);



