import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(11cm, 6cm, keepAspect=false);

xaks(0, 140, bex=1.05,tck=true, tc=20, "US gallon");
yaks(0, 600, bex=1.1, tck=true, tc=100, "liter");

draw((0,0)--1.05*(142, 538), green);
dott((42, 159), "(42, 159)", SE);
dott((142, 538), "(142, 538)", NW);

