import babel;
settings.outformat="pdf";
defaultpen(fontsize(40pt));
size(19cm);
import graph;
real r = 1;
pair o = (0, 0);

pair f(real z){
    return (r*cos(z/180*pi), r*sin(z/180*pi));
}

path s = graph(f, 0, 360, operator ..);
draw(s, black+2bp);
label("$360^\circ$",(1.35,0), blue);


for(int k ; k < 360; k=k+45) {
    string name = "$%d^\circ$";
    string l = format(name, k);
    draw(o -- f(k), blue+1bp, L=Label(l, position=Relative(1)));
}

draw(o -- (1,0), black+2bp);
draw(o -- (-1,0),black+2bp);
draw(o -- (0,1),black+2bp);
draw(o -- (0,-1),black+2bp);

