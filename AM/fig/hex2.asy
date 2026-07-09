import "../../inh" as inh;
import "../../geo" as geo;

unitsize(0.25cm);

real a = 1;
real b = 5;
real R = sqrt(4/3*a^2+2*a*b+b^2);

pair P1 = a*(1/2, sqrt(3)/2);
pair P2 = a*(3/2, sqrt(3)/2);
pair P3 = a*(2, 0);
pair P4 = a*(3/2, -sqrt(3)/2);
pair P5 = a*(1/2, -sqrt(3)/2);

pair Q1 = b*(-3/2, -sqrt(3)/2);
pair Q2 = b*(-1, 0);
pair Q3 = b*(1/2, -sqrt(3)/2);
pair Q4 = b*(0, -sqrt(3));
pair Q5 = b*(-1, -sqrt(3));
pair Rs = (2a-(2a+b)/2,-1/sqrt(3)*(a+3b/2));

pair A = (a, -sqrt(3)*(a+b));

ds(Rs, R);

draw(O--P1--P2--P3--P4--P5--O);
draw(Q1--Q2--O--Q3--Q4--Q5--Q1);

dott(Q2);
dott(Q4);

dott(Rs);
dott((0,0));

draw(Q2--A--Q1--P3--A);
draw(Rs--P3);
