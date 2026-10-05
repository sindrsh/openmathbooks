import "../../inhopg.asy" as inhopg;

unitsize(1cm);

real a = 3;
real b = 2;
real s = 0.25;

pair A = (0, 0);
pair B = (a, 0);
pair C = (a, b);
pair D = (0, b);

filldraw(A--B--C--D--cycle, Gray+opacity(0.5));

