import "../../inh" as inh;
import "../../drwgrph" as drwgrph;

size(7cm);

draw(scale(10)*unitsquare);
path r = scale(2.5)*unitsquare;
filldraw(r, arpenr);
filldraw(shift(0, 7.5)*r, arpenr);
filldraw(shift(7.5, 0)*r, arpenr);
filldraw(shift(7.5, 7.5)*r, arpenr);
draw(shift(2.5, 2.5)*scale(7.5)*unitsquare, dashed);

real dx = 11;
draw((dx, 10)--(dx, 7.5), L="2,5\,cm", E);
mktcy(10, x=dx);
mktcy(7.5, x=dx);

real dy = -1;
draw((0, dy)--(10, dy), L="10\,cm");
mktc(0, y=dy);
mktc(10, y=dy);


