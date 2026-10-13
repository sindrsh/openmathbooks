import "../../inhopg.asy" as opginh;
import "../../drwgrph.asy" as drwgrph;
import "../../geo.asy" as geo;

pair O = (0, 0);
pair A = (10, 40/200*100);
pair B = (20, 60/200*100);
pair C = (30, 120/200*100);
pair D = (50, 140/200*100);
pair Ep = (60, 160/200*100);
pair F = (80, 200/200*100);

size(10 cm, 7cm, keepAspect=false);

mkgrid((0, 85), (0, 100), dx=5, dy=10);
xaks(0, 85, tck=true, tc=5, bex=1.05);
yaks(0, 100, tck=true, tc=10, bex=1.05);

label("relativ kumulativ frekvens (i prosent)", (0, 100), N+E);
label("alder (\aa r)", (85, 0), N+0.1W);

draw(O--A--B--C--D--Ep--F);

dott(O);
dott(A);
dott(B);
dott(C);
dott(D);
dott(Ep);
dott(F);


