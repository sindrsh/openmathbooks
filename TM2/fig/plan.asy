settings.outformat="pdf";
defaultpen(fontsize(11pt));
settings.render=0; 
import graph3;
import three;
import mods;
size(9cm,0);

triple A= 4.3X+4Y;
real a= 4;
real b= 3.5;
triple B = A+a*X+b*Y;
real s=10;
path3 g=O--s*X--s*(X+Y)--s*Y--cycle;
//draw(g);
draw(surface(g),paleblue+opacity(0.5),nolight);
draw(O -- 3X, arrow=Arrow3(DefaultHead2), L=Label("$\vec u$", position=Relative(0.5)));
draw(O -- 4Y, arrow=Arrow3(DefaultHead2), L=Label("$\vec v$", position=Relative(0.5)));
//draw(A -- B, arrow=Arrow3(DefaultHead2));
draw(A -- A+ a*X, arrow=Arrow3(DefaultHead2), L=Label("$t\vec u$", position=Relative(0.5)));
draw(A+ a*X-- B, arrow=Arrow3(DefaultHead2), L=Label("$s\vec v$", position=Relative(0.5)));

dot(O);

dot(A, L=Label("$A$", align=S));
dot(B, L=Label("$B$", align=N));
dot(B);

triple proj = (-1,-1,0.5);
currentprojection=orthographic(proj);
