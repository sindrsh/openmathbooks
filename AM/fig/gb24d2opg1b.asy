import "../../inhopg" as inh;
import "../../drwgrph" as drwprgh;



size(8cm, 7cm, keepAspect=false);

void mkb(real x, int i, string s) {
	filldraw(shift(i-0.5, 0)*scale(0.5, x-180)*unitsquare, blue);
	label(s, (i-0.25, 0), S);
}


mkgrid((0, 4), (0, 35), dx=4, dy=5);

mkb(204, 1, "Target");
mkb(200, 2, "MaxS");
mkb(210, 3, "Foodie");
mkb(190, 4, "LillPrice");

draw((0,0)--(4,0));
draw((0,0)--(0, 35));

mktcy(0, "kr 180,00");
mktcy(5, "kr 185,00");
mktcy(10, "kr 190,00");
mktcy(15, "kr 195,00");
mktcy(20, "kr 200,00");
mktcy(25, "kr 205,00");
mktcy(30, "kr 210,00");
mktcy(35, "kr 215,00");

label("Pris", (2.5, 35), N);
label("(Juan)", (4, 35), N+W);
