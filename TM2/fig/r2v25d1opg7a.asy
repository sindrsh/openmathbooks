import "../../inhopg" as inh;
import "../../drwgrph" as grph;
import "../../geo" as geo;

size(3cm);

pair f(real v) {
	return 3*(cos(v), sin(v));
}

pair O = (0, 0);
pair B = f(pi/10-4/3);
pair C = f(pi/10);

ds(O, 3);

draw(C--O--B);
draw(C--O, L="$3$");
label("$4$", f(pi/10-2/3), NW);


dott(O, "$A$", W);
dott(B, "$B$", SE);
dott(C, "$C$", NE);
