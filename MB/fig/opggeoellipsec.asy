import opggeoellipse;

real c = -0.4*a;
pair C = (c, f(c));

dott(C, "$T$", NW);

pair O = (0, 0);
pair D = (C.x, 0);

draw(P--C--Q);

dott(P, "$P$", S);
dott(Q, "$Q$", S);
