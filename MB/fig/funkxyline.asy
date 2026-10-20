import "../../inh.asy" as inh;
import "../../drwgrph.asy" as drwgrph;

size(5cm);

real x = 1;
real y = 1;

xaks(-1, 3, "$x$");
yaks(-1, 3, "$y$");

draw((-1, y)--(3, y), blue);
draw((x, -1)--(x, 3), green);

dott((x, 0), "$(b, 0)$", SE);
dott((0, y), "$(0, b)$", NW);

label("$x=b$", (x, 3), N);
label("$y=b$", (3, y), E);
