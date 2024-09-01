import volkule;
import solids;
settings.render=0; 
settings.prc=false;

currentprojection=orthographic(15,0,5);

revolution r=cone(O,a,a,Z,0);
revolution r2=cone(O,a,-a,Z,0);
draw(shift((0,0,-a))*r);
draw(shift((0,0,a))*r2);

dot(O,L="$S$",align=1.5N);

draw(O--(0,0,-a),L="$r$",align=W);
draw((0,0,-a)--(0,a,-a),L="$r$",align=S);
