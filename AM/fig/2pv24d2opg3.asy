import "../../inhopg.asy" as inh;
import "../../drwgrph.asy" as drwgrph;
arpeng = JungleGreen;
size(11.5cm, 5cm, keepAspect=false);

mkgrid((0, 150), (0, 6), dx=10);

xaks(0, 150, tck=true, tc=10, bex=1.05);
yaks(0, 6, tck=true);

filldraw(scale(40, 2)*unitsquare, arpeng);
filldraw(shift(40, 0)*scale(20, 6)*unitsquare, arpeng);
filldraw(shift(60,0)*scale(40, 5)*unitsquare, arpeng);
filldraw(shift(100, 0)*scale(50, 2)*unitsquare, arpeng);

label("minutter", (150, 0), 2N+2E);
label((0,6), "$\frac{\text{frekvens}}{\text{klassebredde}}$", 2N+2E);
