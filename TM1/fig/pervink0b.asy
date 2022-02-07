import pervink0;
path s = graph(f, 0, 2*pi, operator..)--cycle;

pair O = (0,0);

real vA = 2*pi/3;
real vB = pi/3;
real vC = 0.95*pi;

pair A = f(vA);
pair B = f(vB);
pair C = f(vC);

dv(A,B,C, al=NE,sc=0.3);
dv(A, B, O, sc=0.2, l="$v$", al=N,p=red);
draw(s);
draw(B--C--A--O--B);


