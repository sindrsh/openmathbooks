size(6cm,4cm);
settings.outformat="pdf";
import bsp;
import math;

picture pic1;
real u=1;
real v=1;
currentprojection=oblique;

path3 y=plane((2u,0,0),(0,2v,0),(-u,-v,0));
path3 l=rotate(30,Z)*rotate(90,Y)*y;
path3 g=rotate(90,X)*rotate(70,Y)*y;

face[] faces;

pen p = paleblue+opacity(0.5);
filldraw(faces.push(l),project(l),p, drawpen=p);

pen p = green+opacity(0.5);
filldraw(faces.push(g),project(g),p, drawpen=p);
add(faces);

path3 s = O..2Z;
path ny = path(s);
draw(pic1,ny);
drawline((0,0),(0.5,0.5), blue);
