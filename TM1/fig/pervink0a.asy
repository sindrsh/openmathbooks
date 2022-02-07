import pervink0;

path s = graph(f, 0, 2*pi, operator..)--cycle;

pair O = (0,0);

real vA = pi/3;
real vB = 0;
real vC = pi;

pair A = f(vA);
pair B = f(vB);
pair C = f(vC);

dv(A,B,C,l="$u$",al=0.3N+E,sc=0.4);
dv(A, B, O, l="$v$",sc=0.3,p=red);
draw(s);
draw(B--C--A--O--B);


