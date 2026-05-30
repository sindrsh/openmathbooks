import volkule;
import solids;
settings.render=0; 
settings.prc=false;

currentprojection=orthographic(15,5,5);

real v = 107/180*pi;
triple pA=(a*cos(v),a*sin(v),0);

triple S=(0,0,0);
draw(S--pA, L="$r$",align=N);
revolution b=sphere(S,a);
draw(b,1,longitudinalpen=nullpen,blue);
draw(b.silhouette(),blue);

revolution r=cylinder(O,a,2a,Z);
draw(shift((0,0,-a))*r);

dot(S,L="$S$",align=W);
