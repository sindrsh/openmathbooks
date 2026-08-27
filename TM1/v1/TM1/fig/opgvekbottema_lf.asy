import "../../inhopg" as inh;
import "../../drwgrph" as drwgrph;

size(6cm);

pair B = (6, 0);
pair C = (2, 5);
pair O = (0, 0);

pair v = C;
pair u = B-C;

pair vp = (-v.y, v.x);
pair up = (-u.y, u.x);

pair D = vp;
pair Ep = v+u+up;

draw(O--D--D+v--C, red);
draw(B--Ep--Ep-u--C, green);

draw(D--Ep, blue);

draw(O--B--C--O);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", N);
dott(D, "$D$", W);
dott(Ep, "$E$", E);
dott(1/2*(D+Ep), "$F$", S);

draw(O--D, arrow=Arrow, L="$\textbf{v}_p$", S);
draw(O--C, arrow=Arrow, L="$\textbf{v}$", S+W);
draw(C--B, arrow=Arrow, L="$\textbf{u}$", E);
draw(B--Ep, arrow=Arrow, L="$\textbf{u}_p$", SE);

write(1/2*(D+Ep));
