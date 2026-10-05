import "../../inhopg.asy" as inhopg;

size(5cm);


pair A = (0, 0);
pair B = (3, 0);
pair C = (3, 2);
pair D = (0, 2);

draw(A--B--C);
draw(A--D);
draw(D--C, dashed);

label("lengde", (1.5, 0), S);
label("bredde", (3, 1), E);
