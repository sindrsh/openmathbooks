import "../../inhopg.asy" as inhopg;

import three;
import solids;
currentprojection=orthographic(1.5,-0.8,1);
unitsize(0.5cm);
surface r = unitcube;

void placebox(triple pos) {
	draw(shift(pos)*r, white, black, nolight);
}

placebox((-1,0,2));

label("Figur 1", (-1, 0, 2), 5S+E);

