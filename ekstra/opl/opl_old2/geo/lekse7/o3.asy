import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

mkgrid(11,9);
transform s = shift(1,-8);


pair A=(0,0); 
pair B=(0,7); 
pair C=(2,7); 
pair D=(2,5); 
pair Ep=(4,5); 
pair F=(4,7); 
pair G=(5,7); 
pair H=(5,5); 
pair Ip=(7,5); 
pair Jp=(7,7); 
pair K=(9,7); 
pair L=(9,0); 
path p = A--B--C--D--Ep--F--G--H--Ip--Jp--K--L--cycle;
draw(s*p);

