import "../../inhopg" as inh;
import "../../drwgrph" as inh;
import "../../geo" as geo;

unitsize(1.5cm);

filldraw(unitcircle,arpenr);
filldraw(shift(1,0)*unitcircle,white);
filldraw(shift(-1,0)*unitcircle,white);
draw(unitcircle);

pair A = (-1,0);
pair D = A+(1/2, sqrt(3)/2);


filldraw(shift(-1,0)*(graph(f, pi/3, 0)--O--f(pi/3)--cycle), arpen);
filldraw(graph(f, 2pi/3, pi)--O--f(2pi/3)--cycle, white);
filldraw(graph(f, 2pi/3, pi)--O--f(2pi/3)--cycle, arpeng);

draw(A--D);

dott((-1,0),"$A$", W);
dott(O,"$B$",E);
dott(D,"$D$",2N);
