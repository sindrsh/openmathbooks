import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;
unitsize(1cm);
pair A = (0,0);
pair B = (3,0);
pair C = B+(1.5,sqrt(3)*1.5);
pair BC = C-B;
pair D = A+BC;

draw(A--B);
draw(B--C);
draw(C--D);
draw(A--D,2W);

dv(B,D,A,"",NE,sc=0.4);
dv(A,C,B,"",NW,sc=0.3);
dv(A,C,D,"",SE,sc=0.3);
path s = graph(f, pi+pi/3, pi, operator..);
draw(shift(C)*scale(0.4)*s,blue+0.9pt, L="",align=SW);







