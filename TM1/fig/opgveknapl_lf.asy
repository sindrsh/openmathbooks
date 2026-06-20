import "../../inhopg" as inh;

size(10cm);

pair O = (0, 0);
pair B = (5, 0);
pair C = (1, 3);

pair D = rotate(60)*C;
pair Ep = rotate(-60)*B;
pair F = rotate(-60, B)*C;

pair A1 = C/2+1/sqrt(3)*(-C.y, C.x)/2;
pair A2 = B/2-1/sqrt(3)*(-B.y, B.x)/2;
pair BC = C-B;
pair A3 = B+1/2*(BC)-1/sqrt(3)*(-BC.y, BC.x)/2;

draw(O--B--C--O);

draw(A1--A2, green);
draw(A2--A3, green);
draw(A3--A1, green);

dott(O, "$A$", SW);
dott(B, "$B$", SE);
dott(C, "$C$", NW);
dott(A1, "$D$", W);
dott(A2, "$E$", S);
dott(A3, "$F$", NE);

write(abs(A1-A2));
write(abs(A1-A3));
write(abs(A2-A3));

draw(O--C/2, arrow=Arrow(), L="$\textbf{v}$", W);
draw(C/2--A1, arrow=Arrow(), L="$k\textbf{v}_p$", N+E);
draw(O--B/2, arrow=Arrow(), L="$\textbf{u}$", NE);
draw(B/2--A2, arrow=Arrow(), L="$-k\textbf{u}_p$", N+W);
draw(B--B+(C-B)/2, arrow=Arrow(), L="$\textbf{v}-\textbf{u}$", NE);
draw(B+(C-B)/2--A3, arrow=Arrow(), L="$k(\textbf{v}_p-\textbf{u}_p)$", N+W);
