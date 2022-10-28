settings.outformat="pdf";
defaultpen(fontsize(11pt));

import three;
import mods;
size(5cm,0);

triple A = 3X;
triple B = 3Y;
triple C = 2*(0, 0.5, 1.2);
//xyz(1,1,1);
draw(plane(O=O, A, B), blue);
draw(plane(O=C, A, B), blue);
draw(plane(O=O, A, C), blue);
draw(plane(O=B, A, C), blue);
draw(plane(O=O, A, C), blue);

draw(O -- A, arrow=Arrow3(DefaultHead2), L=Label("$\vec a$", position=Relative(0.5)));
draw(A -- A+B, arrow=Arrow3(DefaultHead2,emissive(black)), L=Label("$\vec b$", position=Relative(0.5)));
draw(O -- O+C, arrow=Arrow3(DefaultHead2), L=Label("$\vec c$", position=Relative(0.5)));

label("$A$", O, align=W);
label("$B$", O+A, align=S);
label("$C$", O+A+B, align=E);
label("$D$", O+B+0.05*C, align=E);

label("$E$", O+C, align=NW);
label("$F$", O+A+C+0.05*C-0.08*Y, align=NE);
label("$G$", O+A+B+C, align=E);
label("$H$", O+B+C, align=N);


currentprojection=orthographic(1,-0.5,0.5, up=Z);
