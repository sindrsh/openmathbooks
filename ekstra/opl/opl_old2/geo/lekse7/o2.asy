import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

unitsize(1cm);
mkgrid(22,12);


pair A = (0,0);
pair B = (11,0);
pair C = (B.x,2);
pair D = (8,C.y);
pair Ep = (D.y,10);
pair F = (0,Ep.y);

A = (0,0);
B = (20,0);
C = (B.x,10);
D = (15,C.y);
Ep = (3,7);
F = (8,Ep.y);
pair G = (1,5);
pair H = (5,5);
pair Ip = (5,3);
pair Jp = (2,3);
pair K = (0,3);

path p = A--B--C--D--Ep--G--H--Ip--Jp--K--cycle;
transform s = shift(1,-11);
draw(s*p);


