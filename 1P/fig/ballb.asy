import ball;

pair A = (1, f(1));
pair B = (3, f(3));
draw(A--B,red);
draw((A.x,A.y)--(B.x,A.y),L="$2$",align=N,Cyan);
draw((B.x,A.y)--B,L="$40$",align=E,Cyan);
dott(A);
dott(B);

draw(graph(f,a,b),blue);

