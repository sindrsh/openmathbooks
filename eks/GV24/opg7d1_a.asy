import "../../inh" as inh;
unitsize(0.4cm);

real a = 5;
real b = 4;

filldraw(scale(a+b)*unitsquare, blue+opacity(0.3));
filldraw(shift(a+b+2)*scale(b)*unitsquare, red+opacity(0.3));

label(((a+b)/2, a+b), "$a+b$", N);
label((0, (a+b)/2), "$a+b$", W);
label((a+b, a+b)/2, "$(a+b)^2$");

label(shift(a+b+2)*(b/2,b), "$b$", N);
label(shift(a+b+2)*(b, b/2), "$b$", E);
label(shift(a+b+2)*(b/2,b/2), "$b^2$");
