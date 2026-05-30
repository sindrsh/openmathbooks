import "../../inh" as inh;
unitsize(1cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
currentprojection = orthographic(50,50,25);
import fig3d;

real r=1, h=1.5;
real v = 135/180*pi;
triple pO=(0,0,0), pS=(0,0,h), pA=(r*cos(v),r*sin(v),0);
revolution CoRev=cone(pO,r,h,axis=Z,n=1);



//draw(surface(CoRev),blue+opacity(0.05));
draw(unitdisk, blue+opacity(0.2));
draw(CoRev,black);
