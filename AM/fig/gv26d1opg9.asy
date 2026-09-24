import "../../inhopg.asy" as inh;

size(5cm);
filldraw(scale(15, 10)*unitsquare, arpen);

pair A = (3, 2);
pair B = (10, 2);
pair C = (4, 8);

filldraw(A--B--C--cycle, white);
filldraw(A--B--C--cycle, arpeng);

label((7.5, 0), "lengde 15\,cm", S);
label((15, 5), "bredde 10\,cm", E);
label((6.5, 2), "7\,cm", S);



