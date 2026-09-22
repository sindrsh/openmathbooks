import "../../inhopg" as inh;
import "../../drwgrph" as drwprgh;


size(8cm, 7cm, keepAspect=false);

void mkb(real x, int i, string s) {
	filldraw(shift(i-0.5, 0)*scale(0.5, x)*unitsquare, blue);
	label(s, (i-0.25, 0), S);
}


mkgrid((0, 4), (0, 250), dx=4, dy=50);

mkb(204, 1, "Target");
mkb(200, 2, "MaxS");
mkb(210, 3, "Foodie");
mkb(190, 4, "LillPrice");

draw((0,0)--(4,0));
draw((0,0)--(0, 250));

mktcy(50, "kr 50,00");
mktcy(100, "kr 100,00");
mktcy(150, "kr 150,00");
mktcy(200, "kr 200,00");
mktcy(250, "kr 250,00");

label("Pris", (2.5, 250), N);
label("(Ida)", (4, 250), N + W);
