import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(10cm, 8cm, keepAspect=false);

mkgrid((0, 300), (0, 1500), dx=25, dy=100);

xaks(0, 300, bex=1.05,tck=true, tc=25);
yaks(0, 1500, bex=1.05, tck=true, tc=100, "kroner");

draw((0, 600)--(225, 1500), red, L=Label("Firma A", position=Relative(0.95), 2W));
draw((0, 900)--(300, 1500), blue, L=Label("Firma B", position=Relative(0.25), 3W+N));
draw((0, 700)--(200, 1300)+0.32*(200, 600), green, L=Label("Firma C", position=Relative(0.5), 2E+S));
label((300,0), "kilometer", 5.5S);
