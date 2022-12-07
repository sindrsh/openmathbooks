import inh;
import "/home/sindre/G/5./fig/tri.asy" as tri;
size(7cm);

real g = pi/180;

pair AD = (cos(40*g),sin(40*g));

pair A = (0,0);
pair D = 2*AD;
pair B = (3,0);
pair C = (B.x+D.y/sqrt(3),D.y);

draw(A--B--C--D--cycle);

dv(A,C,B,"$120^\circ$",al=NW,sc=0.2);
dv(D,B,C,"$60^\circ$",al=SW,sc=0.25,turn=true);
dv(A,C,D,"$140^\circ$",al=SE,sc=0.2);
dv(D,B,A,"$40^\circ$",al=0.5N+E,sc=0.35);

label("$\color{blue}40^\circ+120^\circ+60^\circ+140^\circ=360^\circ$",(1.7,1.6));

