import vedder;
import mods;

triple O = (0, 0, 0);
triple A = f(t);
triple B = f(t)+0.5*fd(t);
triple C = f(t)-0.5*fd(t);

triple f1 = fd(t);
triple f2 = fdd(t);

real r = abs(f1)^3/abs(cross(f1, f2));
triple rs = A + r*(abs(f1)^2*f2-dot(f1, f2)*f1)/abs(abs(f1)^2*f2-dot(f1, f2)*f1);
draw(circle(rs, r, cross(f1, f2)), red);

triple u = 1.2*f1/abs(f1);
triple v = 2*(rs-A);

triple D1 = (0, 0, 0);
triple D2 = u;
triple D3 = u+v;
triple D4 = v;

path3 sq = D1--D2--D3--D4--cycle;

//draw(surface(shift(-0.5v)*sq), blue+opacity(0.1), nolight);
draw(rs--rs+0.25*cross(u,v)/abs(cross(u, v)), arrow=Arrow3(DefaultHead2), L="$\vec{p}$", align=0.75S+W);
draw(A--rs, arrow=Arrow3(DefaultHead2));
draw(B+0.5*(B-A)--C, blue);

draw(graph(f, a, b), green);
draw(A--B, arrow=Arrow3(DefaultHead2));

dot(A, L="$A$", E);
dot(rs);
label("$\vec{r}$", f(a), E);
dot(rs, L="$S$", W);


write(dot((abs(f1)^2*f2-dot(f1, f2)*f1), f1));
write(dot(cross(f1, f2), f1));
write(dot((abs(f1)^2*f2-dot(f1, f2)*f1), cross(f1, f2)));
write(rs);

triple D = C;
mksq(rs-A, D-A, A, l=-0.025);
