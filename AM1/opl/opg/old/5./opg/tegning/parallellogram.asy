import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;
unitsize(1cm);

real b = 3;
pair A = (0,0);
pair B = (b,0);
real v = pi/180*50;
pair C = B+b*1.5*(cos(v),sin(v));
pair BC = C-B;
pair D = A+BC;

dv(B,D,A,"",0.5N+E,sc=0.5);
dv(A,C,B,"",N+0.5W,sc=0.3);
dv(A,C,D,"",S+0.5E,sc=0.3);
path s = graph(f, pi+pi/180*50, pi, operator..);
draw(shift(C)*scale(0.5)*s,blue+0.9pt, L="",align=SW);

draw(A--B);
draw(B--C);
draw(C--D);
draw(A--D,2W);










