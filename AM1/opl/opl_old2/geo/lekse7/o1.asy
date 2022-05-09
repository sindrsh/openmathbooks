import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;
unitsize(1cm);

mkgrid(11,9);

pair A = (0,0);
pair B = (5,0);
pair C = (5,2);
pair D = (3,2);
pair Ep = (3,5);
pair F = (0,5);
A = (0,0);
B = (4,0);
C = (4,2);
D = (9,2);
Ep = (9,7);
pair G = (3,7);
pair H = (3,4);
pair Ip = (2,4);
pair Jp = (2,3);
pair K = (0,3);

path p = A--B--C--D--Ep--G--H--Ip--Jp--K--cycle;
transform s = shift(1,-8);
draw(s*p,blue);

