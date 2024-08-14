import "../../inh" as inh;
size(2cm);

draw(unitsquare);
draw(shift(1,1)*unitsquare);
draw(shift(1,0)*unitsquare);
draw(shift(0,1)*unitsquare);
label((0.5, 1.5), "$a$");
label((1.5, 1.5), "$a+1$");
label((0.5, 0.5), "$a+5$");
label((1.5, 0.5), "$a+6$");
