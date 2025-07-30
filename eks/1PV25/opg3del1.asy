import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(6cm, 4cm, keepAspect=false);

xaks(0, 10, l="$n$");
yaks(0, 100, l="$p$");

real f(real n){
	return 100/n;
}
mktc(1, "1");
mktc(2, "2");
mktc(10, "10");
mktcy(100, "100");
mktcy(50, "50");
mktcy(10, "10");
dott((1, 100), "$(1, 100)$", 2E);
dott((2, 50), "$(2, 50)$", 2E);
dott((10, 10), "$(10, 10)$", N);
draw(graph(f, 1, 10), blue);


