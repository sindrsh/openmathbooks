import "../../inh" as inh;
import "../../geo" as geo;

unitsize(1cm);

draw(unitcircle);

pair A = f(pi/3);

draw(O--A,blue, Arrow);

dott(A,"$A$",NE);
dott(O,"$S$",S);
