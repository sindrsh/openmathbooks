import "../../inhopg.asy" as inhopg;

import three;
import solids;
currentprojection=orthographic(1.5,-1,1);
size(0,100);
surface r = unitcube;

void placebox(triple pos) {
	draw(shift(pos)*r, white, black, nolight);
}

placebox((0,2,0));
placebox((-0.5,1,0));
placebox((0.5,1,0));
placebox((-1,0,0));
placebox((0,0,0));
placebox((1,0,0));

