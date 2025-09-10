import "../../inh.asy" as inh;
unitsize(1.5cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
currentprojection = orthographic(50,50,25);
import fig3d;

real r=1, h=1.5;
real v = 135/180*pi;
triple pO=(0,0,0), pS=(0,0,h), pA=(r*cos(v),r*sin(v),0);
revolution CoRev=cone(pO,r,h,axis=Z,n=1);

draw(CoRev,black);

draw(pO--pA, dotted);
draw(pS--pO,dotted);
//draw(surface(CoRev),blue);
label("$h$",1/2*pS,E);
label("$r$", (pA/2), align=N);
draw(unitdisk, blue+opacity(0.2));
label("$G$", (-pA/3));
dot(pO);

mksq3(-(0,0,h),pA,pO,l=0.15);
