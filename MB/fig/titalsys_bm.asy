import inh;
import figs;
unitsize(1cm);



transform sh = shift(0,0);

label("$3805,72$",(-0.1,0));

real ly=0.2;
real dx = 0.1;
real rot = 90;
pen p = fontsize(4pt);
Label l = Label("tusener",p,align=N);
label(rotate(rot)*l, (-0.65,ly));

Label l = Label("hundrere",p,align=N);
label(rotate(rot)*l, (-0.45,ly));

Label l = Label("tiere",p,align=N);
label(rotate(rot)*l, (-0.25,ly));

Label l = Label("enere",p,align=N);
label(rotate(rot)*l, (-0.05,ly));
Label l = Label("tideler",p,align=N);
label(rotate(rot)*l, (0.225,ly));
Label l = Label("hundredeler",p,align=N);
label(rotate(rot)*l, (0.425,ly));


