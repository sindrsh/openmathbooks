import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(6cm, 4cm, keepAspect=false);

xaks(0, 10);
yaks(0, 500);

void f(n){
	return 500/n;
}

draw(graph(f, 1, 10), blue);

