import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;
size(4cm);

xaks(0, 12, l="$x$", bex=1.05);
yaks(0, 4, l="$y$");

pair A = (4, 1);
pair B = (12, 3);
pair C = (3, 3);

filldraw(A--B--C--cycle, arpeng);

draw((6,0)--(6, 4), dotted);

dott((6, 6/4), "$D$", SE);
dott((6, 3), "$E$", NE);

mktc(6, "$c$");
dott(A, "$A$", W);
dott(B, "$B$", NE);
dott(C, "$C$", NW);
