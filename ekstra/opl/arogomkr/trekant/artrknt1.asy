import artrknt0;

mkgrid((0,4), (0,3));

pair B = (4, 0);
pair C = (0, 3);
filldraw(O--B--C--cycle, blue+opacity(0.3));
draw(B--(4,3)--C--O);
