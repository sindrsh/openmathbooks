import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(9cm);

pair u = (2, 1);
pair v = (1, -1);

pair A = 2u+v;
pair B = -3u-v;

mkgrid((-5, 5), (0, 3));
pair O = (0, 0);

draw(O--u, arrow=Arrow, L="$\vec{u}$", NW);
draw(u--2u, arrow=Arrow, L="$\vec{u}$", NW);
draw(2u--2u+v, arrow=Arrow, L="$\vec{v}$", NE);
draw(O--2u+v, arrow=Arrow, L="$\vec{a}$");

draw(O-- -v, arrow=Arrow, L="$-\vec{v}$", NE);
draw(-v-- -2v, arrow=Arrow, L="$-\vec{v}$", NE);
draw(-2v-- -3v, arrow=Arrow, L="$-\vec{v}$", NE);
draw(-3v-- -3v-u, arrow=Arrow, L="$-\vec{u}$", NW);
draw(O-- -3v-u, arrow=Arrow, L="$-\vec{b}$", SW);

dott(O, ("$(0, 0)$"), S);

