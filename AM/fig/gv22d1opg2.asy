import "../../inh" as inh;
import "../../drwgrph" as drwgrph;

size(12cm);

real f(real x) {
	return x^2/200;
}


mkgrid((0, 90), (0, 40), dx=5, dy=5);

xaks(0, 90, tck=true, tc=10, "fart i km/h", bex=1.05);
yaks(0, 40, tck=true, tc=5, "bremselengde i m");

draw(graph(f, 0, 90));
