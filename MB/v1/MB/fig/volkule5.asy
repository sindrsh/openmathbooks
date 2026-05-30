import volkule;

pair A = (a,a);
pair B = (-a,a);

path p = O--A--B--cycle;

draw(p);
draw(rotate(180)*p);

label("$2r$",(0,a),N);

draw(O--(0,k),dotted,L="$k$", align=W);
draw((0,k)--(k,k),dotted,L="$k$", align=N);

dott(O,"$S$",1.5S);
