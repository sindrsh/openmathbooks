import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;

mkgrid(60,15);

real g = 4;
real b = 3;
draw(shift(1,-4)*box((0,0),(g,b)));


pair A = (0,0);
pair B = (5,0);
pair C = (5,2);
pair D = (3,2);
pair Ep = (3,5);
pair F = (0,5);

path p = A--B--C--D--Ep--F--cycle;
draw(shift(15,-6)*p);



A = (0,0);
B = (3,0);
C = (3,4);
D = (6,4);
Ep = (6,5);
F = (7,5);
pair G = (1,5);
pair H = (1,4);
pair Ip = (2,4);
pair Jp = (2,3);
pair K = (0,3);

path p = A--B--C--D--Ep--G--H--Ip--Jp--K--cycle;
draw(shift(35,-6)*p);



