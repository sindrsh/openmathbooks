settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(2cm);
import axes;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}
real a = pi/4;
path s = graph(f, a, 2*pi, operator ..);
draw(s);

draw(o -- f(a), L=Label("$1$",align=NW, position=Relative(0.5)));
//draw((cos(a),0)--f(a), blue);
xaks(-1.1, 1.1, l="$a$");
yaks(-1.1, 1.1, l="$b$");
draw((0, sin(a))--f(a), dotted);
draw((cos(a),0)--f(a), dotted);

path s = graph(f, 0, 3.08/4, operator ..);
draw(s, arrow=ArcArrow(), blue, L=Label("$x$", position=Relative(0.5)));
dot("$(a_0,b_0)$",f(a), align=NE);
mktc(cos(a), "$\cos x$");
mktcy(sin(a), "$\sin x$");
//dot("$O$",o, align=NW);

//g(4,4, true);
