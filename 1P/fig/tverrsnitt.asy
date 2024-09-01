import inh;
size(4cm,0);
import bsp;

real u=2.5;
real v=1;
currentprojection=oblique;
path3 y=plane((2u,0,0),(0,2v,0),(-u,-v,0));
path3 y2=plane((u,0,0),(0,2v,0),(-u,-v,0));
path3 l=rotate(90,Z)*rotate(90,Y)*y;
path3 g=shift((0,u/2,0))*rotate(90,X)*rotate(90,Y)*y2;
face[] faces;
filldraw(faces.push(l),project(l),lightgreen);
filldraw(faces.push(g),project(g),Cyan);
add(faces);
