import "../../inhopg" as inh;
import "../../geo" as geo;

unitsize(3.5cm);

int n = 5;

filldraw((O--graph(f,-pi/n, -pi*(n-1)/n)--cycle), arpeng);
label("$s$", 1/2*f(-pi/n), NE);
pair rs = (1.2, -0.5);

draw(rs--rs+(0, (n-2)/(2n)), L="$r$");
filldraw(shift(rs)*scale((n-2)/(2n))*unitcircle, arpeng);
