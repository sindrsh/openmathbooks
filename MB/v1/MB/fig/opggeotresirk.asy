import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1cm);

filldraw(unitcircle,red);
filldraw(shift(1,0)*unitcircle,white);
filldraw(shift(-1,0)*unitcircle,white);
draw(unitcircle);

dott((-1,0),"$A$", W);
dott(O,"$B$",W);
dott((1,0),"$C$", E);
