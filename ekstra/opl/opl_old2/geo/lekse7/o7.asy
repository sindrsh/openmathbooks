import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;
unitsize(0.5cm);
mkgrid(8,18);
transform s = shift(1,-17);

pair A=(0,0); 
pair B=(2,16); 
pair C=(4,4); 
pair D=(4,16); 
pair Ep=(6,16); 
pair F=(6,0); 


path p = A--B--C--D--Ep--F--cycle;
draw(s*p);

