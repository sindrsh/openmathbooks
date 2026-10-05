import opggeoellipse;

real c = -a;
pair C = (c, f(c));

dott(C, "$T$", W);

pair O = (0, 0);
pair D = (C.x, 0);

draw(C--Q);

dott(P, "$P$", S);
dott(Q, "$Q$", S);
