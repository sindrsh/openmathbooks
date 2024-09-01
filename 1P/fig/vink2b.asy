import inh;
import figs;
unitsize(2cm);


pair A = f(pi/6);
pair B = f(0);

dv(B,A,O,l="$\angle O $",al=0.5N+E);

draw(B--O);
draw(A--O);

dott(A,"$A$",NE);
dott(B,"$B$",E);
dott(O,"$O$",S);

