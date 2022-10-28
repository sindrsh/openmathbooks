settings.outformat="pdf";
defaultpen(fontsize(11pt));
settings.render=0; 
import graph3;
import three;
import mods;
size(9cm,0);
unitsize(1cm);

triple A = 2X+Y;
triple B = 5X+3Y;
triple N = 3Z;

real s=8;
path3 g=O--s*X--s*(X+Y)--s*Y--cycle;
//draw(g);
draw(surface(g),paleblue+opacity(0.5),nolight);

draw(A -- B, arrow=Arrow3(DefaultHead2), L=Label("$\vec u$", position=Relative(0.5)));
draw(6X+4Y--6X+4Y+N, arrow=Arrow3(DefaultHead2), L=Label("$\vec n$", position=Relative(0.5), align=E));
dot(A, L=Label("$A$"), align=W);
dot(B, L=Label("$B$"));

mksq(-1Y, N, 6X+4Y, l=0.3);

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);
