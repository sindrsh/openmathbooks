import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

mkgrid(60,60);

real g = 10;
real b = 14;
draw(shift(1,-15)*box((0,0),(g,b)));


pair A = (0,0);
pair B = (11,0);
pair C = (B.x,2);
pair D = (8,C.y);
pair Ep = (D.y,10);
pair F = (0,Ep.y);

path p = A--B--C--D--Ep--F--cycle;
draw(shift(30,-12)*p);

A = (0,0);
B = (20,0);
C = (B.x,10);
D = (15,C.y);
Ep = (D.x,10);
F = (8,Ep.y);
pair G = (1,5);
pair H = (1,4);
pair Ip = (2,4);
pair Jp = (2,3);
pair K = (0,3);

path p = A--B--C--D--Ep--G--H--Ip--Jp--K--cycle;
draw(shift(1,-40)*p);



