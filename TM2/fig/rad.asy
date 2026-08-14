import "../../inh" as inh;
import "../../geo" as inh;
import "../../drwgrph" as grph;
unitsize(2cm);

real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}
real a = pi/6;
path s = graph(f, a, 2*pi, operator ..);
draw(s);

real b = 3*pi/4;
draw((-1,0)--(0,0), green, L="$r$");
draw((0, 0)--(1, 0));

r= 1;
path s = graph(f, 0, a, operator ..);
draw(s, blue, L=Label("$l$", position=Relative(0.5)));

r= 0.3;
path s = graph(f, 0, a, operator ..);
draw(s, L=Label("$v$", position=Relative(0.5)));
//g(4,4, true);

r = 1;
pair A = (0, 0);
pair B = 1.2*f(a);
pair C = (1.3, 0);
draw(C--A--B);

dott(A, "$A$", S);
dott(C, "$C$", S);
dott(B, "$B$", NE);
