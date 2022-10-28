import inh;
import drwgrph;

unitsize(1cm);
usepackage("icomma");

real bb = 1;
real f(real x){return x/3+bb;}
real a = -1;
real b = 3.5;
xaks(a, b,l="$x$",aex=1.10,tck=false, tc=1);
yaks(-1, f(b), l="$y$", bex=1.15, tck=false, tc=1);

draw((a,f(a))--(b,f(b)),blue);

real x1 = 1.5;
real x2 = 3;
pair A = (x1,f(x1));
pair B = (x2,f(x2));
pair C = (A.x,bb);
pair D = (B.x,bb);
pair P = (0,bb);

draw(P--C--A,dotted);
draw(P--D--B,dotted);

import figs;

dott(P,"$E$",1.5S+W);
dott(A,"$C$",1.5N);
dott(B,"$D$",1.5N);
dott(C,"$A$",S);
dott(D,"$B$",S);



