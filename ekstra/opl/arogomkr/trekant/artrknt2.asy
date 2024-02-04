import artrknt0;

mkgrid((0,5), (0,4));

pair B = (5, 0);
pair C = (3, 4);
filldraw(O--B--C--cycle, blue+opacity(0.3));
draw(O--B--(5,4)--(0,4)--O);
