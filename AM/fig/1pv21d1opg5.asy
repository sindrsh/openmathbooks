import "../../inhopg" as inhopg;
import "../../drwgrph" as drwgrph;

size(10cm, 6cm, keepAspect=false);

mkgrid((0,180), (0, 1400), dx=20, dy=200);

draw((0, 1200)--(180, 1200), green);
draw((0, 500)--(180, 500+200/80*180), blue);
label((90, 1200), "Firma A", N);
label((90, 700), "Firma B", S+E);


xaks(0, 180, l="kilometer",bex=1.05, tck=true, tc=20);
yaks(0, 1400, l="kroner", bex=1.1, tck=true, tc=100);
