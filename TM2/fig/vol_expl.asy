settings.outformat="pdf";
defaultpen(fontsize(11pt));
import mods;
size(6cm,5cm);



int a = 2;
int b = 3;
int c = 3;

triple B = (a, 0, 0);
triple C = (1, b, 0);
triple A = B+C+Z*c;

real t = 0.7;
triple Az = 0.7*A;
triple Cz = Az+(1-t)*C;
triple Bz = Az+(1-t)*B;


draw(O -- 1.1*A.x*X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(O -- 1.1*A.y*Y, L=Label("$y$",
position=EndPoint), arrow=Arrow3(HookHead2, emissive(black)));
draw(O -- 1.1*A.z*Z, L=Label("$z$",
position=EndPoint), arrow=Arrow3(HookHead2));

draw(O -- A, blue, L=Label("$\vec w$",
position=Relative(0.5), NW), arrow=Arrow3(DefaultHead2));
draw(O -- B, blue, L=Label("$\vec u$",
position=Relative(0.5), SW), arrow=Arrow3(DefaultHead2));
draw(O -- C, blue, L=Label("$\vec v$",
position=Relative(0.5), S), arrow=Arrow3(DefaultHead2));

draw(A.x*X+A.y*Y -- A, L="$h$", dotted);
draw(B--C--A--B, blue);
draw(Bz--Cz--Az--cycle, dotted);
draw(B--(A.x, A.y, 0)--C, dotted);
draw((Cz.x, Cz.y, 0)--Cz, dotted, L="$z$");

triple pA = (A.x, A.y, 0);
triple pCz = (Cz.x, Cz.y, 0);

mksq(-C+pA, A-pA, pA);
mksq(-pCz+pA, A-pA, pCz);

triple proj = (1,-1,0.5);
currentprojection=orthographic(proj);

dot(Bz, L="$B_z$", S);
dot(Cz, L="$C_z$");
dot(Az, L="$A_z$", NW);
dot((0, 0, 0), L="$A$", SW);
dot(B, L="$B$", SW);
dot(C, L="$C$", S);
