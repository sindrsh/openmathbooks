import artrknt0;

mkgrid((0,10), (0,3));

pair B = (4, 0);
pair C = (10, 3);
pair D = (0,3);
pair Ep = (10,0);
filldraw(O--B--C--cycle, blue+opacity(0.3));
filldraw(O--C--D--cycle, red+opacity(0.5));
filldraw(B--Ep--C--cycle, green+opacity(0.5));
label("4", 0.7*B, N);
label("6", 1/2*(B+Ep), N);
label("3", 1/2*(C+Ep), E);
label("10", 1/2*(C+D), N);
