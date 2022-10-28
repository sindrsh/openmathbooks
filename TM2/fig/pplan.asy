settings.outformat="pdf";
defaultpen(fontsize(11pt));
settings.render=0; 
import three;
import mods;
size(9cm,0);

triple A = 3Y+5X;
triple P = A+3Z;
real s=8;
path3 g=O--s*X--s*(X+Y)--s*Y--cycle;
//draw(g);
draw(surface(g),paleblue+opacity(0.5),nolight);

dot(P, L=Label("$A$"), align=W);
//dot(A);
draw(A --P, dotted,L=Label("$h$", position=Relative(0.5)));
mksq(-Y, Z, A, l=0.25);
triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);
