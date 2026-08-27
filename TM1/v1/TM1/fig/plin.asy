import "../../inh" as inh;
import "../../geo" as geo;
usepackage("esvect");

size(5cm,0);

pair A = (0,0);
pair r=(2,1);
pair rn = (1, -2);
pair B = 2*r;
pair C = 0.8*r;
pair P = B-0.7*rn;

mksq2(B, A);

dott(P, "$B$",N);
dott(C, "$A$",S);
draw(0.5r--2.25*r, blue, L=Label("$\vec {l}$", position=Relative(1)));
draw(B--P, dotted, L=Label("$h$", position=Relative(0.5)));
draw(C--C+0.7r, arrow=Arrow(), L=Label("$\vec r$", position=Relative(0.5)));
draw(C--P, arrow=Arrow(), L=Label("$\vv{AB} $", align=1.2W, position=Relative(0.5)));
draw(C+0.7r--P, dotted);


