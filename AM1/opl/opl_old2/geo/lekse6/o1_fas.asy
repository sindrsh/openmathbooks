import "/home/sindre/G/fig/inh" as inh;
import "/home/sindre/G/fig/figs" as figs;
import "/home/sindre/G/fig/tri" as tri;
import sz;
unitsize(1cm);

mkgrid(8,7);

pair A = (0,0);
pair B = (5,0);
pair C = (5,2);
pair D = (3,2);
pair Ep = (3,5);
pair F = (0,5);
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
transform s = shift(1,-6);
draw(s*p,blue);

label("3",s*(A+1/2*(B-A)),S);
label("4",s*(B+1/2*(C-B)),E);
label("3",s*(C+1/2*(D-C)),S);
label("1",s*(D+1/2*(Ep-D)),E);
label("5",s*(Ep+1/2*(G-Ep)),N);
label("1",s*(G+1/2*(H-G)),W);
label("1",s*(H+1/2*(Ip-H)),S);
label("1",s*(Ip+1/2*(Jp-Ip)),E);
label("2",s*(Jp+1/2*(K-Jp)),S);
label("3",s*(K+1/2*(A-K)),W);

