import inh;
import figs;
unitsize(2cm);


draw(unitcircle);
pair A = f(pi/3);
draw(O--A,L=rotate(60)*Label("radius"),blue);
draw((-1,0)--(1,0),L="diameter",deepgreen);

dott(O,rotate(110)*Label("center"),2NW,p=Cyan);
dott(A);

dott((1,0));
dott((-1,0));

