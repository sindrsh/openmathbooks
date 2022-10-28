settings.outformat="pdf";
defaultpen(fontsize(11pt));

import three;
size(5cm,0);
//draw(O--2X ^^ O--2Y ^^ O--2Z, black);
triple A = 2X;
triple B = 2Y;
triple C = 2*(1, 0, 1.2);

draw(A+B-5Z -- C, arrow=Arrow3(DefaultHead2,emissive(black)), L=Label("$\vec a$", position=Relative(0.5)));

real s=2.5;
path3 g=O--s*A--s*(A+B)--s*B--cycle;
draw(g);
draw(surface(g),paleblue,nolight);

draw(O -- 1.5*A, arrow=Arrow3(DefaultHead2), L=Label("$\vec b$", position=Relative(0.5), align=N));
draw(O -- B, arrow=Arrow3(DefaultHead2,emissive(black)), L=Label("$\vec a$", position=Relative(0.5)));

triple proj = (-1,-1,0.5);
currentprojection=orthographic(proj);
