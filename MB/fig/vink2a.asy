import inh;
import figs;
unitsize(2cm);


pair A = f(pi/6);
pair B = f(0);

dv(B,A,O,l="$\angle BOA $",al=0.5N+E);
dv(B,A,O,l="$ $",al=SW,sc=0.3,D=(2pi,0),red);

draw(B--O);
draw(A--O);

dott(A,"$A$",NE);
dott(B,"$B$",E);
dott(O,"$O$",S);

