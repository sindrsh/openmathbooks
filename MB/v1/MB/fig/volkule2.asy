import volkule;


draw(scale(a)*unitcircle,blue);
draw(shift(a*(-1,-1))*scale(2a)*unitsquare);

draw(O--A,L="$r$",align=SE);
draw(O--B,L="$r$",align=SW);
draw(P--A,L="$s$",align=S);
draw(P--B,L="$s$",align=S);
draw(P--O,L="$k$",align=E);

dott(O,"$S$",S);
dott(P,"$P$",N);

