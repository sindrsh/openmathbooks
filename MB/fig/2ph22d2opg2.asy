import "../../inhopg.asy" as inhopg;
import "../../drwgrph.asy" as drwgrph;

size(7cm);

real a = 12;

real y = 0;
pair A = (-28, 0);
pair Ay = (A.x, y);
pair B = A+(2a, 0);
pair By = (B.x, y);
pair C = (56, 0);
pair Cy = (C.x, y);

draw(A--C);
draw(Ay--By, L="$2a$", N);
draw(By--Cy, L="$5a$", N);

mktc(A.x, "$-28$");
mktc(A.x, y=y);
mktc(B.x, "$x$");
mktc(B.x, y=y);
mktc(C.x, "56");
mktc(C.x, y=y);
