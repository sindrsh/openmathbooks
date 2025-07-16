import "../../inh" as inh;
import "../../drwgrph" as grph;
import "../../geo" as geo;
unitsize(2cm);


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}

path s = graph(f, 0, 2*pi, operator ..);
draw(s);

draw((0,0)--(1,0), L=Label("$0$", align=E,position=Relative(1)));

real a = pi/5;
real b= 0.09;
r= 1.1;
path s = graph(f, b, a, operator ..);
draw(s, arrow=Arrow(TeXHead), L=Label("$+$", position=Relative(0.5)));

r= 1.1;
path s = graph(f, -b, -a, operator ..);
draw(s, arrow=Arrow(TeXHead), L=Label("$-$", align=E,position=Relative(0.5)));

dott(O);
