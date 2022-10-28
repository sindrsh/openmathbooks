settings.outformat="pdf";
defaultpen(fontsize(11pt));
usepackage("esvect");

import mods;
size(7cm,0);
unitsize(1cm);

pair A = (0,0);
pair r=(2,1);
pair rn = (1, -2);
pair B = 2*r;
pair C = 0.8*r;
pair P = B-0.7*rn;


dot(P, L=Label("$B$",align=N));
dot(C, L=Label("$A$", align=S));
draw(A--3*r, blue, L=Label("$l$", position=Relative(0.8)));
draw(B--B-0.7*rn, dotted, L=Label("$h$", position=Relative(0.5)));
draw(C--C+0.7r, arrow=Arrow(), L=Label("$\vec r$", position=Relative(0.5)));
draw(C--P, arrow=Arrow(), L=Label("$\vv{AB} $", align=1.2W, position=Relative(0.5)));
draw(C+0.7r--P, dotted);

mksq2(r, -rn, B);
