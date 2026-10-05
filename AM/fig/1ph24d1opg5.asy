import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(9cm, 6cm, keepAspect=false);

mkgrid((-60, 120), (-100, 250), dx=20, dy=50);

xaks(-60, 120, bex=1.1, tck=true, tc=20);
yaks(-100, 250, tck=true, tc=50);
label((120, 0), "grader celcius $^\circ$C", 6S+W);
label((0, 250), "grader fahrenheit ($^\circ$ F)", N+E);

dott((-40, -40), "$(-40, -40)$", S);
dott((0, 32), "$(0, 32)$", E);
dott((100, 212), "$(100, 212)$", S);
