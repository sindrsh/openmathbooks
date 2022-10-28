settings.outformat="pdf";
defaultpen(fontsize(11pt));

import mods;
import graph;
import graph3;

size(5cm,0);

real f(real x) { return 1+sqrt(x); }
path s = graph(f, 1, 2, operator..);

triple F(real t){
    return (t, 0,0.2+ sqrt(t));
}
path3 p3 = path3(s);
path3 S3 = graph(F, 0.7, 1.5, operator ..);
draw(S3, green);
surface solidsurface = surface(S3,c=0, axis=X);
draw(solidsurface, palegreen);
draw((1.5,0,0)-- F(1.5), dotted);

//draw axes for reference
draw(O -- 2.5*X, L=Label("$x$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
draw(O -- 1.5*Z, L=Label("$y$",
position=EndPoint), arrow=Arrow3(TeXHead2, emissive(black)));
currentprojection=orthographic(0.5,-1,0.5);
