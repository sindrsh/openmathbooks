import inh;
unitsize(1cm);


real b = 5;
real h = 2;
pair A = (0,0);
pair B = (5,0);
pair D = (1,h);
pair C = (-0.5+b,h);

draw(A--B--C--D--cycle);
draw(A--C);

fill(A--B--C--cycle, blue+opacity(0.3));
fill(A--C--D--cycle, deepgreen+opacity(0.3));

label("$b$", (b/2,h), align=N);
label("$a$", (b/2,0), align=S);
draw((1,0)--(1,h), dotted, L="$h$",align=NE);
