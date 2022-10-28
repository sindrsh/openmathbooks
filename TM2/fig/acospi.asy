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
draw((0,-1)--(0,1));
draw((0,0)--(1,0), L=Label("$0$", align=E,position=Relative(1)));
draw((0,0)--(-1,0), blue, L=Label("$\color{black}\pi$", align=W,position=Relative(1)));


