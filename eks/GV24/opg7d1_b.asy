import "../../inh" as inh;
unitsize(0.4cm);

real a = 5;
real b = 4;

filldraw((0,0)--(a,0)--(a, b)--(a+b,b)--(a+b, a+b)--(0,a+b)--cycle, blue+opacity(0.3));

label((0, (a+b)/2), "$a+b$", W);
label((a/2, 0), "$a$", S);
label((a+b, a/2+b), "$a$",E);
label((a+b/2, b), "$b$", S);
label((a/2, (a+b)/2), "$(a+b)a$");
label((a+b/2, a/2+b), "$ab$");

draw((a, 0)--(a, a+b), dotted);
