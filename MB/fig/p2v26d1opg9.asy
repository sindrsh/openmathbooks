import "../../inhopg" as inh;
import "../../geo" as geo;
import "../../drwgrph" as drwpgrh;
size(11cm);


pair B1 = (6, 0);
pair C1 = (2, 4);

pair A2 = (8, 0);
pair B2 = (10, 0);
pair C2 = (4, 4);

pair A3 = (14, 0);
pair B3 = (20, 0);
pair C3 = (19, 4);
pair D3 = (10, 4);

pair Rs = (24, 2);

pair f(real x) {
	return 2*(cos(x), sin(x));
}

mksq2(Rs, (24, 4), sc=0.5);

filldraw(O--B1--C1--cycle, arpeng);

filldraw(A2--B2--C2--cycle, arpeng);

filldraw(A3--B3--C3--D3--cycle, arpeng);

filldraw(shift(Rs)*graph(f, pi/2, 2pi)--(26, 2)--Rs--(24, 4)--cycle, arpeng);

draw((0, 4)--(26, 4), dotted);

xaks(0, 26, tck=true, tc=2);
yaks(0, 4, tck=true, tc=4, bex=1.4);

dott(C1, "$(2, 4)$", N);
dott(C2, "$(4, 4)$", N+0.5E);
dott(C3, "$(19, 4)$", N);
dott(D3, "$(10, 4)$", N);
dott((24, 4), "$(24, 4)$", N);
dott(Rs, "$$", W);





