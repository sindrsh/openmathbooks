import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;
unitsize(0.5cm);
mkgrid(18,16);
transform s = shift(1,-15);

pair A=(0,0); 
pair B=(5,10); 
pair C=(10,10); 
pair D=(10,14); 
pair Ep=(16,14); 
pair F=(16,4); 
pair G=(10,8); 
pair H=(10,0); 
pair Ip=(6,6); 
pair Jp=(5,6); 
pair K=(5,0); 


path p = A--B--C--D--Ep--F--G--H--Ip--Jp--K--cycle;
draw(s*p);

