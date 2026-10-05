import opggeoellipse;

real c = 0.3*a;
pair C = (c, f(c));

dott(C, "$T$", NE);

pair O = (0, 0);
pair D = (C.x, 0);

mksq2(D, C);
draw(P--C--Q);
draw(P--Q, dashed);
draw(D--C, dashed);

dott(P, "$P$", S);
dott(Q, "$Q$", S);
dott(O, "$S$", S);
