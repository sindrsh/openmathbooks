import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(7cm, 3cm, keepAspect=false);

xaks(0, 25, "$x$");
yaks(0, 330, l="$G$");

draw((0,30)--(25, 330), green);

dott((5, 90), "$(5, 90)$", NW);
dott((20, 270), "$(20, 270)$", NW);

label((25, 0), "godteri (hg)", S);
label(rotate(90)*(Label("pris (kr)")), (0,180), W);
