import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;
unitsize(0.5cm);
mkgrid(20,18);
transform s = shift(1,-17);

pair A=(0,0); 
pair B=(18,6); 
pair C=(12,6); 
pair D=(12,12); 
pair Ep=(6,16); 
pair F=(0,12); 

path p = A--B--C--D--Ep--F--cycle;
draw(s*p);

