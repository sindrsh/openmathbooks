import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

mkgrid(11,9);
transform s = shift(-1,-8);

pair A=(2,5); 
pair B=(5,7); 
pair C=(4,5); 
pair D=(5,-1); 
pair Ep=(8,5); 
pair F=(6,5); 

path p = D--A--C--B;
path p2 = B--F--Ep--D;
draw(s*p);
draw(shift(3,0)*s*p2);
draw(shift(3,0)*s*B--s*B);
draw(shift(3,0)*s*D--s*D);

