import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(7cm);

filldraw(scale(11,4)*unitsquare, arpeng);

for(int i = 0; i<=11; ++i) {
	mktc(i, (string) i);
}

for(int j = 1; j<=4; ++j) {
	mktcy(j, (string) j);
}



pair A = (0,0);
pair B = (4,0);
pair C = (4.4, 4);

filldraw(A--B--C--cycle, white);

pair A1 = (5,0);
pair B1 = (8,0);
pair C1 = (7.5, 4);

filldraw(A1--B1--C1--cycle, white);

pair A2 = (9,0);
pair B2 = (11,0);
pair C2 = (11, 4);

filldraw(A2--B2--C2--cycle, white);
