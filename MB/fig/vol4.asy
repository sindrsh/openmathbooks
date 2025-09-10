import "../../inh.asy" as inh;
import fig3d;
import solids;
//import three;
size(4cm, 0);
currentlight = White;
currentprojection=orthographic(10,10,3);

triple A = (0,3, 2);
//draw(extrude(unitcircle3, A -- cycle), material(black, emissivepen=black));
surface s= extrude(unitcircle3, A -- cycle);
draw(s, blue);

dot((0,0,0),p=black+0.5bp);

draw((0,0,0)--(0,A.y,0)--A,dotted);

mksq3((0,0,0),(A.x,A.y,-A.z),(0,A.y,0), l=-0.2);

label("$h$",(0,A.y+0.2,0)+1/2*(A-(0,A.y,0)));

triple S=(0,0,0);

dot((0,0,0),black+2bp);
