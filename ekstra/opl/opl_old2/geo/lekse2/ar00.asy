import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

real g = 50;
real b = 50;
filldraw(box((0,0),(g,b)), arpeno);
label((string) g, (g/2,0), align=S);
label((string) b, (g,b/2), align=E);



