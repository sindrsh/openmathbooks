import "../../inh" as inh;
import "../../geo" as geo;
size(8cm);

real r1 = sqrt(5);
real r2 = sqrt(10/pi);
real h1 = 2.5;
real h2 = h1*r1/(r1-r2);

pair A = (0,0);
pair B = (2r1, 0);
pair C = (r1, h2);
pair D = (C.x-r2, h1);
pair Ep = (r1, D.y);
pair F = (r1, 0);
pair G = Ep + (r2, 0);

draw(A--B--C--A);
draw(D--Ep, L="$r_t$", N);
draw(F--C);
draw(Ep--G);
draw(F--B, L="$r_b$",N);
draw(F--Ep, L="2,5", W);
draw(Ep--C, L="$h_2$", E);

write(2.5*r2/(r1-r2));
draw(A--(D.x, 0)--D--A, deepgreen);
draw(D--Ep--C--D, deepgreen);

write(h2);
