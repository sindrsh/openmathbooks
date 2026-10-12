import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(10cm, 7cm, keepAspect=false);

mkgrid((0, 22), (0, 240), dx=2, dy=20);

xaks(0, 22, tck=true, tc=2, bex=1.05);
yaks(0, 240, tck=true, tc=20, bex=1.05, l="pris (kr)");

pair A = (10, 220);
A = 1.05*A;
pair B = (20, 160);
B = 1.1*B;

draw((0,0)--A, L=Label("A", position=Relative(1), E), green);
draw((0,0)--B, L=Label("B", position=Relative(1), E), green);
label("vekt (hektogram)", (22,0), 5S);
