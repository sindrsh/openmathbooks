settings.outformat="pdf";
defaultpen(fontsize(11pt));
unitsize(2cm);
import mods;
import graph;


real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z), r*sin(z));
}
path s = graph(f, 0, 2*pi, operator ..);
draw(s);
draw((-1,0)--(1,0));
draw((0,-1)--(0,1));
dot((-1,0), L="$(-1, 0)$", align=W);
dot((1,0), L="$(1, 0)$", align=E);


