import pervink0;

path s = graph(f, 0, 2*pi, operator..)--cycle;

pair O = (0,0);

real vA = pi/3;
real vB = -pi/5;
real vC = 1.1*pi;

pair A = f(vA);
pair B = f(vB);
pair C = f(vC);

dv(A,B,C);
dv(A, B, O, l="$v$",sc=0.2,p=red);
draw(s);
draw(B--C--A--O--B);


