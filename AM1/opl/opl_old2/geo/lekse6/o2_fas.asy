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
Ep = (D.x,10);
F = (8,Ep.y);
pair G = (1,5);
pair H = (1,4);
pair Ip = (2,4);
pair Jp = (2,3);
pair K = (0,3);

path p = A--B--C--D--Ep--G--H--Ip--Jp--K--cycle;
transform s = shift(1,-11);
draw(s*p);

fill(s*(A--B--(B.x,K.y)--K--cycle),orange+opacity(0.2));
fill(s*((B.x,K.y)--C--D--(D.x,K.y)--cycle),green+opacity(0.2));
fill(s*(D--(D.x,G.y)--G--cycle),blue+opacity(0.2));
fill(s*(A--B--(B.x,K.y)--K--cycle),orange+opacity(0.2));
fill(s*((Jp.x,G.y)--(Jp.x,K.y)--(D.x,K.y)--(D.x,G.y)--cycle),magenta+opacity(0.2));

fill(shift(2,-7)*box((0,0),(1,1)),cyan+opacity(0.5));

