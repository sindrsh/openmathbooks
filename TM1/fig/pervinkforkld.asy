import pervinkforkl;
path s = graph(f, 0, 2*pi, operator..)--cycle;
draw(s);
pair O = (0,0);

real vA = 2*pi/3;
real vB = pi/3;
real vC = 0.95*pi;
real vD = vC-pi;

pair A = f(vA);
pair B = f(vB);
pair C = f(vC);
pair D = f(vD);

draw(C--D,dotted);
dv(A,B,C, al=NE);
dv(A, B, O, sc=0.2, l="$v$", al=N);
dv(B, O, C, sc=0.25, l="$a$", al=E);
dv(D, B, O, sc=0.15, l="$b$", al=E);
draw(B--C--A--O--B);

