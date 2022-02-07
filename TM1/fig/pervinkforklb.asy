import pervinkforkl;

path s = graph(f, 0, 2*pi, operator..)--cycle;

pair O = (0,0);

real vA = pi/3;
real vB = -pi/5;
real vC = 1.1*pi;
real vD = vC-pi;

pair A = f(vA);
pair B = f(vB);
pair C = f(vC);
pair D = f(vD);

dv(A, O, C, sc=0.4, l="$a$", al=0.75N+E);
dv(D, A, O, sc=0.3, l="$b$", al=NE);
dv(B, O, C, sc=0.3, l="$c$", al=E);
dv(D, B, O, sc=0.23, l="$d$", al=E);
draw(s);
draw(C--D,dotted);
draw(B--C--A--O--B);


