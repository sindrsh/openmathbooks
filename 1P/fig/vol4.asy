settings.outformat="png";
settings.render=16;
import fig3d;
import three;
size(4cm, 0);
currentlight = White;
currentprojection=orthographic(10,10,3);
path3 spiral = path3((1,0) .. (0,1) .. (-1,0) .. (0,-1));
triple A = (0,3, 2);
//draw(extrude(unitcircle3, A -- cycle), material(gray, emissivepen=gray));
surface s= extrude(unitcircle3, A -- cycle);
draw(s,blue+opacity(0.5));

bbox();

import solids;
//draw(revolution(unitcircle3),black+0.5bp);

dot((0,0,0),p=black+0.5bp);

draw((0,0,0)--(0,A.y,0)--A,dotted);

mksq3((0,0,0),(A.x,A.y,-A.z),(0,A.y,0), l=-0.2);

label("$h$",(0,A.y+0.2,0)+1/2*(A-(0,A.y,0)));

triple S=(0,0,0);
revolution b=sphere(S,1.);
draw(b,1,longitudinalpen=nullpen,black+0.3bp);

dot((0,0,0),black+2bp);
