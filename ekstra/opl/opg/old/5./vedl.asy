settings.outformat="pdf";
defaultpen(fontsize(12 pt));
import "/home/sindre/G/fig/figs.asy" as figs;

unitsize(0.5 cm);

ddb(sh=(0.8,0),l=false);
label("$0,1$", (2.7,.2));
label("$=$", (1.7,.2));

db(l=false, sh=(0,-2));
label("$=$", (1.7,-1.5));
label("$1$", (2.5,-1.45));

ddb(5,2,l=false, sh=(6,-2));
label("=", (5.5,-1.55));

db(l=false, sh=(4,-2));


path b = box((0,0),(1,10));
filldraw(shift(0,-13)*b, green+opacity(0.1), green);
label("$10$", (2.6,-7.95));
label("$=$", (1.7,-8));

path b = box((0,0),(1,10));
filldraw(shift(4,-13)*b, green+opacity(0.1), green);
label("$=$", (5.5,-8));
db(1,10, l=false,sh=(6,-13));

path vl = (0,1)--(0,-13.5);
path hl = (-.5,0)--(7.5,0);

pen p = black+opacity(0.4);
//draw(shift(1.5,0)*vl, p=p);
draw(shift(3.5,0)*vl, p=p);
draw(shift(7.5,0)*vl, p=p);
draw(shift(0,-0.5)*hl, p=p);
draw(shift(0,-2.5)*hl, p=p);
draw(shift(0,-13.5)*hl, p=p);

draw(box((-0.5,1),(7.5,-13.5)));
//path b = box((0,0),(1,10));
//filldraw(shift(-7.5,0)*b, green+opacity(0.1), green);



