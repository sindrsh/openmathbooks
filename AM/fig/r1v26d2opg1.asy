import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(7cm, 3cm, keepAspect=false);

xaks(0, 180, "$t$");
yaks(0, 2.8, "$V'$");

real f(real t) {
	return (224 * 27 * 0.048 * exp(-0.048*t)) / (1 + 27*exp(-0.048*t))^2;
}

draw(graph(f, 0, 180), green);

draw((0, 2)--(180, 2), dashed);

dott((45.4, 2), "$(45.4, 2)$", NW);
dott((91.9, 2), "$(91.9, 2)$", NE);
