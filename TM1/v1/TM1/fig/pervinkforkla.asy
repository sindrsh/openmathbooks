import pervinkforkl;

path s = graph(f, 0, 2*pi, operator..)--cycle;

pair O = (0,0);

real vA = pi/3;
real vB = 0;
real vC = pi;

pair A = f(vA);
pair B = f(vB);
pair C = f(vC);

dv(A,B,C);
dv(A, B, O, l="$v$",sc=0.25);
dv(O, (1,0), A, l="$a$",al=S,sc=0.2);
dv(O, C, A, l="$u$",al=SW);
//dv(C, A, O, l="$b$",al=N,sc=0.15);
dv(A, O, (1,0), l="$a$",al=0.5N+W,sc=0.15);
draw(s);
draw((1,0)--(A));
draw((1,0)--(A),dotted);
draw(B--C--A--O--B);

dott(C,"$A$",W);
dott((0,0),"$S$",S);
dott(B,"$B$",E);
dott(A,"$C$",NE);
