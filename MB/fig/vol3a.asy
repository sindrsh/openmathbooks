unitsize(1.2cm);
defaultpen(fontsize(11 pt));
import solids;
import math;
settings.outformat="pdf";
settings.render = 5;
import three;
import fig3d;

currentprojection=orthographic(5,3,3);

real b = 1.2;
triple pA=(b,b,0), pB=(-b,b,0), 
       pC=(-b,-b,0), pD=(b,-b,0),
       pS=(0,0,3);
draw(pS--(0,0,0), L="$h$",align=SW, dotted);
draw(pS--pD--pA--pS--pB--pA);
draw(pD--pC--pS^^pC--pB,dashed);
draw(surface(pA--pB--pC--pD--cycle), blue+opacity(0.1));
label("$G$", (0,0,0), align=2*W);

mksq3(-pS,pB,(0,0,0),l=0.15,k=0.12);
dot((0,0,0));
