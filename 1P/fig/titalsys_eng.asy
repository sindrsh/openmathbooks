import inh;
import figs;
unitsize(1cm);



transform sh = shift(0,0);

label("$3805.72$",(-0.1,0));

real ly=0.2;
real dx = 0.1;
real rot = 90;
pen p = fontsize(4pt);
Label l = Label("thousands",p,align=N);
label(rotate(rot)*l, (-0.65,ly));

Label l = Label("hundreds",p,align=N);
label(rotate(rot)*l, (-0.45,ly));

Label l = Label("tens",p,align=N);
label(rotate(rot)*l, (-0.25,ly));

Label l = Label("ones",p,align=N);
label(rotate(rot)*l, (-0.05,ly));
Label l = Label("tenths",p,align=N);
label(rotate(rot)*l, (0.225,ly));
Label l = Label("hundredths",p,align=N);
label(rotate(rot)*l, (0.425,ly));


