import "../../inh" as inh;
import "../../drwgrph" as inh;

size(4cm);

real f(real x) { return x^2; }

draw(graph(f,-1,1),blue);

dott((0,0));

draw((0,0)--(0,1),dotted);



